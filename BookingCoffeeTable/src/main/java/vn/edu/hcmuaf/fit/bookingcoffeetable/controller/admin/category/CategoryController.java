package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.admin.category;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Category;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.User;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.CategoryService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategoryController", value = "/admin/category-management")
public class CategoryController extends HttpServlet {
    CategoryService categoryService;
    public CategoryController() {
        categoryService = CategoryService.getInstance();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Category> categories = categoryService.findAllCategory();
        request.setAttribute("categories", categories);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/admin/category-management.jsp");
        requestDispatcher.forward(request,response);

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
