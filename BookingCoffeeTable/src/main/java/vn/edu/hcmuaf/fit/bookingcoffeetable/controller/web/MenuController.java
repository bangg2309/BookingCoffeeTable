package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.web;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Category;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Product;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.CategoryService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "MenuController", value = "/menu")
public class MenuController extends HttpServlet {
    ProductService productService;
    CategoryService categoryService;
    private int page = 1;
    private int maxPageItem = 9;
    private int totalItem = -1;

    public MenuController() {
        productService = ProductService.getInstance();
        categoryService = CategoryService.getInstance();

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Category> categories = categoryService.findAllCategory();
        request.setAttribute("categories", categories);
        String value = request.getParameter("category-value");
        if (value != null) {
            request.setAttribute("category-value", value);
        } else {
            request.setAttribute("category-value", "0");
        }
        totalItem = Integer.parseInt(productService.totalItem());

        if (totalItem != -1) {
            // paging attribute setup
            request.setAttribute("page", page);
            request.setAttribute("totalPage", (int) Math.ceil((double) totalItem / maxPageItem));
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/menu.jsp");

            try {
                rd.forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }


}
