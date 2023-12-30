package vn.edu.hcmuaf.fit.bookingcoffeetable.service;

import org.jdbi.v3.sqlobject.SqlObjectPlugin;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Table;
import vn.edu.hcmuaf.fit.bookingcoffeetable.dao.TableDAO;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.JDBIConnector;

import java.util.List;

public class TableService {
    private static TableService instance;
    private static TableDAO tableDAO;


    public static TableService getInstance() {
        if (instance == null) {
            tableDAO = JDBIConnector.get().installPlugin(new SqlObjectPlugin()).onDemand(TableDAO.class);
            instance = new TableService(tableDAO);
        }
        return instance;
    }


    private TableService(TableDAO tableDAO) {
        this.tableDAO = tableDAO;
    }

    public void insertProduct(int categoryId, String name, int price, String description, int status, int discount) {
        tableDAO.insertProduct(categoryId, name, price, description, status, discount);
    }



    public List<Table> findAllArea() {
        return tableDAO.findAllTabes();
    }

    public List<Table> getTables(String areaId, String startTime, String endTime, int count, String find, int limit, int offset){
        List<Table> tables = tableDAO.getTables(areaId, startTime, endTime, count, find, limit, offset);
        for (Table table : tables) {
            table.setReservations(ReservationService.getInstance().getReservationByTableId(table.getId()));
        }

        return tables;
    }

    public String totalItem(){
        return tableDAO.totalItem();
    }









    public List<Table> findAllTables() {
        return tableDAO.findAllTabes();
    }

    public static void main(String[] args) {
        TableService productService = TableService.getInstance();
        System.out.println(productService.getTables("1", "2021-05-05 10:00:00", "2021-05-05 12:00:00", 2, "", 2, 0));
    }

}


