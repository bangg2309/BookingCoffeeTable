package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.web;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Cart;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ReservationController", value = "/reservation")
public class ReservationController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User userSession = (User) session.getAttribute("userSession");
        if (userSession != null) {
            request.setAttribute("userSession", userSession);
        }
        request.getRequestDispatcher("/views/web/reservation.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
    }
}
