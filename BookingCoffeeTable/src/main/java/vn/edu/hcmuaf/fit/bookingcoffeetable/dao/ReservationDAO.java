package vn.edu.hcmuaf.fit.bookingcoffeetable.dao;

import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Reservation;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.QUERIES;

import java.util.List;


@RegisterBeanMapper(Reservation.class)
public interface ReservationDAO {
    @SqlQuery(QUERIES.RESERVATION.SELECT_RESERVATION_BY_USER_ID)
    List<Reservation> getReservationByTableId(@Bind("tableId") int tableId);


    @SqlQuery(QUERIES.RESERVATION.SELECT_RESERVATION_NEWEST_BY_USER_ID)
    List<Reservation> findReservationNewestByUserId(@Bind("userId") int userId);
    @SqlQuery(QUERIES.RESERVATION.SELECT_RESERVATION_LATEST_BY_USER_ID)
    List<Reservation> findReservationLatestByUserId(@Bind("userId") int userId);

    @SqlQuery(QUERIES.RESERVATION.SELECT_RESERVATION_BY_ID)
    List<Reservation> findReservationById(@Bind("id") int id);

}
