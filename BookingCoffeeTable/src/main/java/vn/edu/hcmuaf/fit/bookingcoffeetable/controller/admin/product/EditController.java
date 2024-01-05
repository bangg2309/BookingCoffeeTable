package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.admin.product;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Product;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Reservation;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "EditProductController", value = "/admin/product-management/edit")
public class EditController extends HttpServlet {
    CategoryService categoryService;
    ProductService productService;

    public EditController() {
        categoryService = CategoryService.getInstance();
        productService = ProductService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        request.setAttribute("categories", categoryService.findAllCategory());

        if (id != null) {
            Product product = productService.findOne(Integer.parseInt(id));
            request.setAttribute("product", product);
        }
        request.getRequestDispatcher("/views/admin/product-addition.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
