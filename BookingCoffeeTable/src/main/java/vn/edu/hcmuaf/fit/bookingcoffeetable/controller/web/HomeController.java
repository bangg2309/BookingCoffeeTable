package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.web;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Category;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Post;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Product;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.CategoryService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.PostService;
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
    PostService postService;

    public HomeController() {
        productService = ProductService.getInstance();
        categoryService = CategoryService.getInstance();
        postService = PostService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productId = 1;
        int limitCategory = 4;
        int limitProducts = 10;
        int limitPost = 3;
//        List<Category> categories = categoryService.findNCategory(limitCategory);
        List<Category> categories = categoryService.findCategory();
        List<Product> newProducts = productService.findProductNewest(limitProducts);
        List<Post> posts = postService.findNewPost(limitPost);
        List<Product> discountProducts = productService.findProductDiscount(limitProducts);
        request.setAttribute("newProducts", newProducts);
        request.setAttribute("discountProducts", discountProducts);
        request.setAttribute("categories", categories);
        request.setAttribute("posts", posts);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/web/home.jsp");
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
