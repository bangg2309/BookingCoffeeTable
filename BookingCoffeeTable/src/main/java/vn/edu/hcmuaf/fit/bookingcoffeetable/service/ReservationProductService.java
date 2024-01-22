package vn.edu.hcmuaf.fit.bookingcoffeetable.service;

import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.sqlobject.SqlObjectPlugin;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.ReservationProduct;
import vn.edu.hcmuaf.fit.bookingcoffeetable.dao.ReservationProductDAO;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.JDBIConnector;

import java.util.List;

public class ReservationProductService {
    private static ReservationProductDAO reservationProductDAO;
    private static ReservationProductService instance;

    public static ReservationProductService getInstance() {
        if (instance == null) {
            Jdbi jdbi = JDBIConnector.get();
            jdbi.installPlugin(new SqlObjectPlugin());
            reservationProductDAO = jdbi.onDemand(ReservationProductDAO.class);
            instance = new ReservationProductService(reservationProductDAO);
        }
        return instance;
    }

    public ReservationProductService(ReservationProductDAO reservationProductDAO) {
        this.reservationProductDAO = reservationProductDAO;
    }

    public List<ReservationProduct> findReservationProductByReservId(int reservId) {
        List<ReservationProduct> list = reservationProductDAO.findReservationProductByReservId(reservId);
        for (ReservationProduct reservationProduct : list) {
            reservationProduct.setProduct(ProductService.getInstance().findProductDetail(reservationProduct.getProductId()));
        }
        return list;
    }

    public void save(int productId, int reservId, int quantity, int price, String size) {
         reservationProductDAO.save(productId, reservId, quantity, price, size);
    }

    public void delete(int reservId) {
        reservationProductDAO.delete(reservId);
    }
}
