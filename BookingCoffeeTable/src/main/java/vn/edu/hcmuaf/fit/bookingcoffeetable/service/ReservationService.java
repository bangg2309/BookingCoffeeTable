package vn.edu.hcmuaf.fit.bookingcoffeetable.service;

import org.jdbi.v3.sqlobject.SqlObjectPlugin;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Reservation;
import vn.edu.hcmuaf.fit.bookingcoffeetable.dao.ReservationDAO;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.JDBIConnector;

import java.util.List;

public class ReservationService {
    private static ReservationService instance;
    private static ReservationDAO reservationDAO;


    public static ReservationService getInstance() {
        if (instance == null) {
            reservationDAO = JDBIConnector.get().installPlugin(new SqlObjectPlugin()).onDemand(ReservationDAO.class);
            instance = new ReservationService(reservationDAO);
        }
        return instance;
    }


    private ReservationService(ReservationDAO reservationDAO) {
        this.reservationDAO = reservationDAO;
    }

    public List<Reservation> getReservationByTableId(int tableId) {
        return reservationDAO.getReservationByTableId(tableId);
    }



}


