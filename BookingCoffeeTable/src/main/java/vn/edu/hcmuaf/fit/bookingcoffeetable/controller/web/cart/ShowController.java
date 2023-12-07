package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.web.cart;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Cart;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ShowController", value = "/cart")
public class ShowController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = Cart.getInstance();
        }
        session.setAttribute("cart", cart);
        request.setAttribute("cart", cart);
        for (Product product : cart.getProducts().values()) {
            System.out.println(product.getName() + " " + product.getSize() + " " + product.getQuantity());
        }
        request.getRequestDispatcher("/views/web/cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
