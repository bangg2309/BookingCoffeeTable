package vn.edu.hcmuaf.fit.bookingcoffeetable.service;

import org.jdbi.v3.core.Jdbi;

import org.jdbi.v3.sqlobject.SqlObjectPlugin;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Reservation;
import vn.edu.hcmuaf.fit.bookingcoffeetable.dao.ReservationDAO;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.JDBIConnector;

import java.util.List;

public class ReservationService {

    private static ReservationDAO reservationDAO;
    private static ReservationService instance;

    public static ReservationService getInstance() {
        if (instance == null) {
            Jdbi jdbi = JDBIConnector.get();
            jdbi.installPlugin(new SqlObjectPlugin());
            reservationDAO = jdbi.onDemand(ReservationDAO.class);
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

    public ReservationService(ReservationDAO reservationDAO) {
        this.reservationDAO = reservationDAO;
    }

    public List<Reservation> findReservationByUserId(int userId, String sortOrder) {
        List<Reservation> reservations = null;
        if (sortOrder.equals("DESC")) {
            reservations = reservationDAO.findReservationNewestByUserId(userId);
        } else {
            reservations = reservationDAO.findReservationLatestByUserId(userId);
        }
        if (reservations.isEmpty()) return null;
        for (Reservation reservation : reservations) {
            reservation.setReservationProducts(ReservationProductService.getInstance().findReservationProductByReservId(reservation.getId()));
            reservation.setTable(TableService.getInstance().findById(reservation.getTableId()));
        }
        return reservations;
    }

    public Reservation findById(int id) {
        if (reservationDAO.findReservationById(id).isEmpty()) {
            return null;
        }
        Reservation reservation = reservationDAO.findReservationById(id).get(0);
        reservation.setReservationProducts(ReservationProductService.getInstance().findReservationProductByReservId(reservation.getId()));
        reservation.setTable(TableService.getInstance().findById(reservation.getTableId()));
        return reservation;
    }

    public static void main(String[] args) {
        System.out.println(ReservationService.getInstance().findById(1));
    }

}
