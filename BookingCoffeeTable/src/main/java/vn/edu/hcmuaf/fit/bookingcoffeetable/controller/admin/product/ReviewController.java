package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.admin.product;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Review;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.ReviewService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminReviewController", value = "/admin/product-management/review")
public class ReviewController extends HttpServlet {
    ReviewService reviewService;
    public ReviewController() {
        reviewService = ReviewService.getInstance();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Review> reviews = reviewService.findAllReview();
        request.setAttribute("reviews", reviews);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/admin/review-management.jsp");
        requestDispatcher.forward(request,response);

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
