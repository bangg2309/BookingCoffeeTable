package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.web;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Review;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.User;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.ProductService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.ReviewService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ProductDetailController", value = "/product-detail")
public class ProductDetailController extends HttpServlet {
    ProductService productService;
    ReviewService reviewService;

    public ProductDetailController() {
        productService = ProductService.getInstance();
        reviewService = ReviewService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productId = request.getParameter("id");

        request.setAttribute("product", productService.findProductDetail(Integer.parseInt(productId)));
        request.getRequestDispatcher("/views/web/product-detail.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        User userSession = (User) session.getAttribute("userSession");
        if (userSession == null) {
            request.setAttribute("message", "Bạn cần đăng nhập để đánh giá sản phẩm");
            request.getRequestDispatcher("/views/web/login.jsp").forward(request, response);
        } else {
            String productId = request.getParameter("productId");
            int userId = userSession.getId();
            String starRate = request.getParameter("starRate");
            String content = request.getParameter("content");
            Review review = new Review(Integer.parseInt(productId), userId, Integer.parseInt(starRate), content);
            reviewService.save(review);
            response.sendRedirect(request.getContextPath() + "/product-detail?id=" + productId);
        }
    }
}
