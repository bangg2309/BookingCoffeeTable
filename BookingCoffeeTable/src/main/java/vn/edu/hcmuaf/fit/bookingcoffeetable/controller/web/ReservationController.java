package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.web;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Cart;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Reservation;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.User;
import vn.edu.hcmuaf.fit.bookingcoffeetable.config.VnPay;
import vn.edu.hcmuaf.fit.bookingcoffeetable.config.VnPayProperties;
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
        Cart cart = (Cart) session.getAttribute("cart");
        if (userSession == null) {
            request.setAttribute("message", "Bạn cần đăng nhập để đặt bàn");
            request.getRequestDispatcher("/views/web/login.jsp").forward(request, response);
        } else if (cart == null) {
            session.setAttribute("cartMessage", "Bạn cần chọn bàn và món trước khi đặt bàn");
            response.sendRedirect(request.getContextPath() + "/cart");
        } else if (cart.getProducts() == null) {
            session.setAttribute("cartMessage", "Bạn cần chọn món trước khi đặt bàn");
            request.setAttribute("message", "Bạn cần chọn món trước khi đặt bàn");
            response.sendRedirect(request.getContextPath() + "/cart");
        } else if (cart.getTable() == null) {
            session.setAttribute("cartMessage", "Bạn cần chọn bàn trước khi đặt bàn");
            response.sendRedirect(request.getContextPath() + "/cart");
        } else {
            request.setAttribute("userSession", userSession);
            request.getRequestDispatcher("/views/web/reservation.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        String fullname = request.getParameter("fullname");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String note = request.getParameter("note");
        String paymentMethod = request.getParameter("paymentMethod");

        Cart cart = (Cart) session.getAttribute("cart");
        User userSession = (User) session.getAttribute("userSession");

        Reservation reservation = new Reservation(cart.getTable().getId(), userSession.getId(), fullname, Integer.parseInt(phone), email, cart.getStartTime(), cart.getEndTime(), 1, paymentMethod, note, cart.getTotalPrice());
        session.setAttribute("reservation", reservation);
        if (paymentMethod.equals("Tiền Mặt")) {
            response.sendRedirect(request.getContextPath() + "/checkout/result");
        } else if (paymentMethod.equals("VNPAY")) {
            int totalPrice = (int) (cart.getTotalPrice());
            String ipAddress = request.getRemoteAddr();
            String orderInfo = "Thanh toan hoa don ";

            VnPay vnPay = new VnPay();
            String paymentUrl = vnPay.amount(totalPrice * 100)
                    .vnpHashSecret(VnPayProperties.getHashSecret())
                    .vnpTmnCode(VnPayProperties.getTmnCode())
                    .vnpIpAddr(ipAddress)
                    .vnpOrderInfo(orderInfo)
                    .buildUrl();
            response.sendRedirect(paymentUrl);
        }
    }
}
