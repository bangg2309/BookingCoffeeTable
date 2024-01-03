package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.admin.category;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Category;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.User;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.CategoryService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.RoleService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EditCategoryController", value = "/admin/category-management/edit")
public class EditController extends HttpServlet {
    CategoryService categoryService;

    public EditController() {
        categoryService = CategoryService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        if (id != null) {
            Category category = categoryService.findById(Integer.parseInt(id));
            request.setAttribute("category", category);
        }
        request.getRequestDispatcher("/views/admin/category-addition.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
