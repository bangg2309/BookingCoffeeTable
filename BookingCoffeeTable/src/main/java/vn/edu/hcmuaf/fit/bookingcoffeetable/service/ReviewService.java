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
        return reviewDAO.findReviewByProductId(productId);
    }

}
