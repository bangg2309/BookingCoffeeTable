package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.web.cart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Cart;

@WebServlet(name = "UpdateQuantityController", value = "/update-quantity")
public class UpdateQuantityController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productKey = request.getParameter("productKey");
        System.out.println(productKey);
        String quantity = request.getParameter("quantity");
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart != null) {
            cart.updateProductQuantity(productKey, Integer.parseInt(quantity));
            session.setAttribute("cart", cart);
        }

        response.sendRedirect("/cart");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
