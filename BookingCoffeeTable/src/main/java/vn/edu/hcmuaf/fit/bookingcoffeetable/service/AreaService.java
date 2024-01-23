package vn.edu.hcmuaf.fit.bookingcoffeetable.service;

import org.jdbi.v3.sqlobject.SqlObjectPlugin;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Area;
import vn.edu.hcmuaf.fit.bookingcoffeetable.dao.AreaDAO;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.JDBIConnector;

import java.util.List;

public class AreaService{
    private static AreaService instance;
    private static AreaDAO areaDAO;


    public static AreaService getInstance() {
        if (instance == null) {
            areaDAO = JDBIConnector.get().installPlugin(new SqlObjectPlugin()).onDemand(AreaDAO.class);
            instance = new AreaService(areaDAO);
        }
        return instance;
    }


    private AreaService(AreaDAO areaDAO) {
        this.areaDAO = areaDAO;
    }

    public void insertProduct(int categoryId, String name, int price, String description, int status, int discount) {
        areaDAO.insertProduct(categoryId, name, price, description, status, discount);
    }

    public Area findById(int id) {
        List<Area> areas = areaDAO.findById(id);
        return areas.isEmpty() ? null : areas.get(0);
    }

    public List<Area> findAllArea() {
        return areaDAO.findAllArea();
    }

    public static void main(String[] args) {
        AreaService productService = AreaService.getInstance();
        System.out.println(productService.findAllArea());
    }

}


