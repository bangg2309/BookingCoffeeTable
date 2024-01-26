package vn.edu.hcmuaf.fit.bookingcoffeetable.dao;

import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Reservation;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.QUERIES;

import java.util.List;

@RegisterBeanMapper(value = Reservation.class)
public interface ReservationDAO {
    @SqlQuery(QUERIES.RESERVATION.SELECT_RESERVATION_BY_USER_ID)
    List<Reservation> getReservationByTableId(@Bind("tableId") int tableId);

    @SqlQuery(QUERIES.RESERVATION.SELECT_RESERVATION_NEWEST_BY_USER_ID)
    List<Reservation> findReservationNewestByUserId(@Bind("userId") int userId);
    @SqlQuery(QUERIES.RESERVATION.SELECT_RESERVATION_LATEST_BY_USER_ID)
    List<Reservation> findReservationLatestByUserId(@Bind("userId") int userId);

    @SqlQuery(QUERIES.RESERVATION.SELECT_RESERVATION_BY_ID)
    List<Reservation> findReservationById(@Bind("id") int id);

    @SqlQuery(QUERIES.RESERVATION.SELECT_ALL_RESERVATION)
    List<Reservation> findAllReservation();

    @SqlUpdate(QUERIES.RESERVATION.SAVE_RESERVATION)
    void saveReservation(@Bind("tableId") int tableId, @Bind("userId") int userId, @Bind("contactName") String contactName, @Bind("contactPhone") int contactPhone, @Bind("contactEmail") String contactEmail, @Bind("startTime") String startTime, @Bind("endTime") String endTime, @Bind("status") int status, @Bind("paymentMethod") String paymentMethod, @Bind("note") String note, @Bind("totalPrice") double totalPrice, @Bind("createdDate") String createdDate);

    @SqlUpdate(QUERIES.RESERVATION.UPDATE_RESERVATION)
    void updateReservation(@Bind("id") int id, @Bind("tableId") int tableId, @Bind("userId") int userId, @Bind("contactName") String contactName, @Bind("contactPhone") int contactPhone, @Bind("contactEmail") String contactEmail, @Bind("startTime") String startTime, @Bind("endTime") String endTime, @Bind("status") int status, @Bind("paymentMethod") String paymentMethod, @Bind("note") String note, @Bind("totalPrice") double totalPrice, @Bind("createdDate") String createdDate);

    @SqlUpdate(QUERIES.RESERVATION.DELETE_RESERVATION)
    void deleteReservation(@Bind("id") int id);

    @SqlUpdate(QUERIES.RESERVATION.DELETE_BY_USERID)
    void deleteByUserId(@Bind("userId") int id);
    @SqlUpdate(QUERIES.RESERVATION.DELETE_BY_TABLEID)
    void deleteByTableId(@Bind("tableId") int id);

    @SqlUpdate(QUERIES.RESERVATION.SAVE)
    void save(@Bind("tableId") int tableId, @Bind("userId") int userId, @Bind("contactName") String contactName, @Bind("contactPhone") int contactPhone, @Bind("contactEmail") String contactEmail, @Bind("startTime") String startTime, @Bind("endTime") String endTime, @Bind("status") int status, @Bind("paymentMethod") String paymentMethod, @Bind("note") String note, @Bind("totalPrice") double totalPrice);
    @SqlQuery(QUERIES.RESERVATION.SELECT_RESERVATION_ID_BY_DETAILS)
    int findIdByDetails(@Bind("tableId") int tableId, @Bind("userId") int userId, @Bind("contactName") String contactName, @Bind("contactPhone") int contactPhone, @Bind("contactEmail") String contactEmail, @Bind("startTime") String startTime, @Bind("endTime") String endTime, @Bind("status") int status, @Bind("paymentMethod") String paymentMethod, @Bind("note") String note, @Bind("totalPrice") double totalPrice);

    @SqlQuery(QUERIES.RESERVATION.COUNT)
    int count();

    @SqlUpdate(QUERIES.RESERVATION.CANCEL)
    void cancel(@Bind("id") int id);
}
