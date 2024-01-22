package vn.edu.hcmuaf.fit.bookingcoffeetable.dao;

import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Review;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.QUERIES;

import java.util.List;

@RegisterBeanMapper(Review.class)
public interface ReviewDAO {
    @SqlQuery(QUERIES.REVIEW.SELECT_REVIEW_BY_PRODUCT_ID)
    List<Review> findReviewByProductId(@Bind("productId") int productId);

    @SqlQuery(QUERIES.REVIEW.SELECT_ALL_REVIEW)
    List<Review> findAllReview();

    @SqlUpdate(QUERIES.REVIEW.DELETE_REVIEW)
    void deleteReview(@Bind("id") int id);
    @SqlUpdate(QUERIES.REVIEW.DELETE)
    void delete(@Bind("userId") int id);

    @SqlUpdate(QUERIES.REVIEW.INSERT_REVIEW)
    void save(@Bind("productId") int productId, @Bind("userId") int userId, @Bind("starRate") int starRate, @Bind("content") String content);

}
