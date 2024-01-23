package vn.edu.hcmuaf.fit.bookingcoffeetable.dao;

import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.ReservationProduct;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.QUERIES;

import java.util.List;

@RegisterBeanMapper(value = ReservationProduct.class)
public interface ReservationProductDAO {
    @SqlQuery(QUERIES.RESERVATION_PRODUCT.SELECT_RESERVATION_PRODUCT_BY_RESERV_ID)
    List<ReservationProduct> findReservationProductByReservId(@Bind("reservId") int reservId);

    @SqlUpdate(QUERIES.RESERVATION_PRODUCT.SAVE)
    void save(@Bind("productId") int productId, @Bind("reservId") int reservId, @Bind("quantity") int quantity, @Bind("price") int price, @Bind("size") String size);

    @SqlUpdate(QUERIES.RESERVATION_PRODUCT.DELETE)
    void delete(@Bind("reservId") int reservId);
}
