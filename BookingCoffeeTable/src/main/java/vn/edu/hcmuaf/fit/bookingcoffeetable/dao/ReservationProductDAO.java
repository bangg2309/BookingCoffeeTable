package vn.edu.hcmuaf.fit.bookingcoffeetable.dao;

import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.ReservationProduct;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.QUERIES;

import java.util.List;

@RegisterBeanMapper(value = ReservationProduct.class)
public interface ReservationProductDAO {
    @SqlQuery(QUERIES.RESERVATION_PRODUCT.SELECT_RESERVATION_PRODUCT_BY_RESERV_ID)
    List<ReservationProduct> findReservationProductByReservId(@Bind("reservId") int reservId);
}
