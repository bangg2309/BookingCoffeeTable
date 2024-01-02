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

@WebServlet(name = "HomeController", value = "/home")
public class HomeController extends HttpServlet {
    ProductService productService;
    CategoryService categoryService;

    public HomeController() {
        productService = ProductService.getInstance();
        categoryService = CategoryService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Product product = productService.findOne(1);
//        String json = gson.toJson(product);
//        System.out.println(json);
//        response.getWriter().write(json);

        List<Category> category = categoryService.findAll();
//        String json1 = gson.toJson(category);
//        System.out.println(json1);
//        response.getWriter().write(json1);
        List<SlideImg> slideImgs = slideImgService.getImgSlide();
        List<Post> posts = postService.getPost();

        request.setAttribute("products", productService.findOne(1));
        request.setAttribute("categories", categoryService.findAll());
        request.setAttribute("slideImgs", slideImgs);
        request.setAttribute("posts", posts);



        int productId = 1;
        int limitCategory = 4;
        int limitProducts = 10;
        List<Category> categories = categoryService.findNCategory(limitCategory);
        List<Product> newProducts = productService.findProductNewest(limitProducts);
        request.setAttribute("newProducts", newProducts);
        request.setAttribute("categories", categories);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/web/home.jsp");
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
