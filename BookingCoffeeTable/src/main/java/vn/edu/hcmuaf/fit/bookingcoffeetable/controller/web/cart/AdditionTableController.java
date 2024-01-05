package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.web.cart;

import com.google.gson.Gson;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Cart;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Table;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.TableService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdditionTableController", value = "/add-table")
public class AdditionTableController extends HttpServlet {
    TableService tableService;

    public AdditionTableController() {
        tableService = TableService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tableId = request.getParameter("id");
        String startTime = request.getParameter("startTime");
        String endTime = request.getParameter("endTime");
        System.out.println(startTime);
        System.out.println(endTime);
        Table table = tableService.findById(Integer.parseInt(tableId));
        if (table != null) {
            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = Cart.getInstance();
            }
            cart.setTable(table);
            cart.setStartTime(startTime);
            cart.setEndTime(endTime);
            session.setAttribute("cart", cart);
            response.sendRedirect(request.getContextPath() + "/cart");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
