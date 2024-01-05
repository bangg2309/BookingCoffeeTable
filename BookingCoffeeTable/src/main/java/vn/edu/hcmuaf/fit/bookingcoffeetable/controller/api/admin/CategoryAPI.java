package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.api.admin;

import com.google.gson.Gson;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Category;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.User;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.CategoryService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;

@MultipartConfig
@WebServlet(name = "CategoryAPI", value = "/api/admin/category")
public class CategoryAPI extends HttpServlet {
    CategoryService categoryService;

    public CategoryAPI() {
        categoryService = CategoryService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Gson gson = new Gson();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");

        String categoryName = request.getParameter("category");

        String status = request.getParameter("status");
        Category category = new Category();
        category.setName(categoryName);

        category.setStatus(Integer.parseInt(status));
        // Xử lý tải lên hình ảnh avatar
        Part filePart = request.getPart("avatar");
        String fileName = "default.svg";
        if (filePart != null && filePart.getSize() > 0 && filePart.getSubmittedFileName() != null) {
            String rootPath = request.getServletContext().getRealPath("/views/template/custom/image/category");
            fileName = filePart.getSubmittedFileName();
            filePart.write(rootPath + File.separator + fileName);
        }
        category.setImage("/views/template/custom/image/avatar/" + fileName);
        System.out.println(category);
        category = categoryService.SAVE(category);
        gson.toJson(category, response.getWriter());
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Gson gson = new Gson();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        String categoryId = request.getParameter("id");
        String categoryName = request.getParameter("category");

        String status = request.getParameter("status");
        Category category = new Category();
        category.setId(Integer.parseInt(categoryId));
        category.setName(categoryName);

        category.setStatus(Integer.parseInt(status));
        // Xử lý tải lên hình ảnh avatar
        Part filePart = request.getPart("avatar");
        String fileName = "default.svg";
        if (filePart != null && filePart.getSize() > 0 && filePart.getSubmittedFileName() != null) {
            String rootPath = request.getServletContext().getRealPath("/views/template/custom/image/category");
            fileName = filePart.getSubmittedFileName();
            filePart.write(rootPath + File.separator + fileName);
        }
        category.setImage("/views/template/custom/image/avatar/" + fileName);
        category = categoryService.UPDATE(category);
        gson.toJson(category, response.getWriter());
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Gson gson = new Gson();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        User user = gson.fromJson(request.getReader(), User.class);
        categoryService.DELETE(user.getId());
        gson.toJson("{}", response.getWriter());
    }
}
