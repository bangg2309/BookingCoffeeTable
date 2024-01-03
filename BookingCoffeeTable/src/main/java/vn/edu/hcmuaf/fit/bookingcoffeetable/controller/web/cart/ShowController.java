package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.web.cart;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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

        request.getRequestDispatcher("/views/web/cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
