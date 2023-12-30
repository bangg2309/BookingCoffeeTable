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


}
