package vn.edu.hcmuaf.fit.bookingcoffeetable.service;

import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.sqlobject.SqlObjectPlugin;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Statistical;
import vn.edu.hcmuaf.fit.bookingcoffeetable.dao.StatisticalDAO;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.JDBIConnector;

import java.util.List;

public class StatisticalService {
    private static StatisticalDAO statisticalDAO;
    private static StatisticalService instance;

    public static StatisticalService getInstance() {
        if (instance == null) {
            Jdbi jdbi = JDBIConnector.get();
            jdbi.installPlugin(new SqlObjectPlugin());
            statisticalDAO = jdbi.onDemand(StatisticalDAO.class);
            instance = new StatisticalService(statisticalDAO);
        }
        return instance;
    }

    private StatisticalService(StatisticalDAO statisticalDAO) {
        this.statisticalDAO = statisticalDAO;
    }

    public List<Statistical> findAll() {
        return statisticalDAO.findAll();
    }

    public static void main(String[] args) {
        StatisticalService statisticalService = StatisticalService.getInstance();
        List<Statistical> list = statisticalService.findAll();
        for (Statistical statistical : list) {
            System.out.println(statistical);
        }
    }
}
