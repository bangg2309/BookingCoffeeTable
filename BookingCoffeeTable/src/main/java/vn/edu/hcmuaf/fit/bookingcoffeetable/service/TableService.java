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

    public List<Table> getTables(int count, String location, int limit, int offset){
        return tableDAO.getTables(count, location, limit, offset);
    }

    public String totalItem(){
        return tableDAO.totalItem();
    }









    public List<Table> findAllTables() {
        return tableDAO.findAllTabes();
    }

    public static void main(String[] args) {
        TableService productService = TableService.getInstance();
//        System.out.println(productService.getTables(9, 0));
    }

}


