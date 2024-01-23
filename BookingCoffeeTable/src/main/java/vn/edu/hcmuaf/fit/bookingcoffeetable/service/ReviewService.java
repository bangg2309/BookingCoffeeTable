package vn.edu.hcmuaf.fit.bookingcoffeetable.service;

import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.sqlobject.SqlObjectPlugin;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Review;
import vn.edu.hcmuaf.fit.bookingcoffeetable.dao.ReviewDAO;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.JDBIConnector;

import java.util.List;

public class ReviewService {
    private static ReviewService instance;
    private static ReviewDAO reviewDAO;

    public static ReviewService getInstance() {
        if (instance == null) {
            Jdbi jdbi = JDBIConnector.get();
            jdbi.installPlugin(new SqlObjectPlugin());
            reviewDAO = jdbi.onDemand(ReviewDAO.class);
            instance = new ReviewService(reviewDAO);
        }
        return instance;
    }

    public ReviewService(ReviewDAO reviewDAO) {
        this.reviewDAO = reviewDAO;
    }

    public List<Review> findReviewByProductId(int productId) {
        List<Review> reviews = reviewDAO.findReviewByProductId(productId);
        for (Review review : reviews){
            review.setUserName(UserService.getInstance().getNameById(review.getUserId()));
        }
        return reviews;
    }


    public List<Review> findAllReview() {
        List<Review> reviews = reviewDAO.findAllReview();
        for (Review review : reviews){
            review.setUserName(UserService.getInstance().getNameById(review.getUserId()));
        }
        return reviews;
    }

    public void deleteReview(int id) {
        reviewDAO.deleteReview(id);
    }
    public void delete(int id) {
        reviewDAO.delete(id);
    }
    public void save(Review review){
        reviewDAO.save(review.getProductId(), review.getUserId(), review.getStarRate(), review.getContent());

    }

    public static void main(String[] args) {
        ReviewService rv = ReviewService.getInstance();
        System.out.println(rv.findReviewByProductId(20));
    }
}
