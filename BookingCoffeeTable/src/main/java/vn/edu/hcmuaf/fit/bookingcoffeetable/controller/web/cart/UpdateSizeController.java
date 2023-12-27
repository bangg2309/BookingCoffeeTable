package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.web.cart;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Cart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateSizeController", value = "/update-size")
public class UpdateSizeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productKey = request.getParameter("productKey");
        String size = request.getParameter("size");
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart != null) {
            cart.updateProductSize(productKey, size);
            session.setAttribute("cart", cart);
        }

        response.sendRedirect("/cart");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
