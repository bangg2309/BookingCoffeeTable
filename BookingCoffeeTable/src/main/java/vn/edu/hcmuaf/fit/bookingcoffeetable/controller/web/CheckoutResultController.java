package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.web;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Cart;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Reservation;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.User;
import vn.edu.hcmuaf.fit.bookingcoffeetable.constant.Payment;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.ReservationProductService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.ReservationService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CheckoutResultController", value = "/checkout/result")
public class CheckoutResultController extends HttpServlet {
    private ReservationService reservationService;
    private ReservationProductService reservationProductService;

    public CheckoutResultController() {
        reservationService = ReservationService.getInstance();
        reservationProductService = ReservationProductService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String responseCode = request.getParameter("vnp_ResponseCode");
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        User userSession = (User) session.getAttribute("userSession");
        Reservation reservation = (Reservation) session.getAttribute("reservation");
        if (responseCode == null) {
            responseCode = "";
        }
        if (responseCode.equals("00") || reservation.getPaymentMethod().equals(Payment.CASH)) {
            reservationService.save(reservation);
            int reservationId = reservationService.findIdByDetails(cart.getTable().getId(), userSession.getId(), reservation.getContactName(), reservation.getContactPhone(), reservation.getContactEmail(), cart.getStartTime(), cart.getEndTime(), 1, reservation.getPaymentMethod(), reservation.getNote(), cart.getTotalPrice());

            for (String key : cart.getProducts().keySet()) {
                System.out.println(cart.getProducts().get(key).getId());
                reservationProductService.save(cart.getProducts().get(key).getId(), reservationId, cart.getProducts().get(key).getQuantity(), cart.getProducts().get(key).getTotalPrice(), cart.getProducts().get(key).getSize());
            }

            session.removeAttribute("cart");
            session.removeAttribute("reservation");
            request.setAttribute("checkoutSuccess", "Thanh toán thành công!");
            request.getRequestDispatcher("/views/web/checkout-result.jsp").forward(request, response);
        } else {
            System.out.println("Thanh toán thất bại!");
            request.setAttribute("checkoutError", "Thanh toán thất bại!");
            request.getRequestDispatcher("/views/web/checkout-result.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
