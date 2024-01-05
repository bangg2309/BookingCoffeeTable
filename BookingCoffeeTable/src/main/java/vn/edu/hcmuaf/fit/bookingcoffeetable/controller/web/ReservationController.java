package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.web;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Cart;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Reservation;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.User;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.ReservationProductService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.ReservationService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ReservationController", value = "/reservation")
public class ReservationController extends HttpServlet {
    ReservationService reservationService;
    ReservationProductService reservationProductService;

    public ReservationController() {
        reservationService = ReservationService.getInstance();
        reservationProductService = ReservationProductService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User userSession = (User) session.getAttribute("userSession");
        if (userSession == null) {
            request.setAttribute("message", "Bạn cần đăng nhập để đặt bàn");
            request.getRequestDispatcher("/views/web/login.jsp").forward(request, response);

        } else {
            request.setAttribute("userSession", userSession);
            request.getRequestDispatcher("/views/web/reservation.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String fullname = request.getParameter("fullname");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String note = request.getParameter("note");
        String paymentMethod = request.getParameter("paymentMethod");

        Cart cart = (Cart) session.getAttribute("cart");
        User userSession = (User) session.getAttribute("userSession");
        Reservation reservation = new Reservation(cart.getTable().getId(), userSession.getId(), fullname, Integer.parseInt(phone), email, cart.getStartTime(), cart.getEndTime(), 1, paymentMethod, note, cart.getTotalPrice());
        reservationService.save(reservation);
        int reservationId = reservationService.findIdByDetails(cart.getTable().getId(), userSession.getId(), fullname, Integer.parseInt(phone), email, cart.getStartTime(), cart.getEndTime(), 1, paymentMethod, note, cart.getTotalPrice());

        for (String key : cart.getProducts().keySet()) {
            System.out.println(cart.getProducts().get(key).getId());
            reservationProductService.save(cart.getProducts().get(key).getId(), reservationId, cart.getProducts().get(key).getQuantity(), cart.getProducts().get(key).getTotalPrice(), cart.getProducts().get(key).getSize());
        }
        session.removeAttribute("cart");
        response.sendRedirect(request.getContextPath() + "/home");

    }
}
