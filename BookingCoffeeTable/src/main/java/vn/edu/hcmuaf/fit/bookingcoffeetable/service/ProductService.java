package vn.edu.hcmuaf.fit.bookingcoffeetable.service;

import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.sqlobject.SqlObjectPlugin;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Image;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Product;
import vn.edu.hcmuaf.fit.bookingcoffeetable.dao.ProductDAO;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class ProductService {
    private static ProductService instance;
    private static ProductDAO productDAO;

    public static ProductService getInstance() {
        if (instance == null) {
            productDAO = JDBIConnector.get().installPlugin(new SqlObjectPlugin()).onDemand(ProductDAO.class);
            instance = new ProductService(productDAO);
        }
        return instance;
    }

    private ProductService(ProductDAO productDAO) {
        this.productDAO = productDAO;
    }

    public void insertProduct(int categoryId, String name, int price, String description, int status, int discount) {
        productDAO.insertProduct(categoryId, name, price, description, status, discount);
    }

    public Product findOne(int id) {
        List<Product> products = productDAO.findOne(id);

        if (!products.isEmpty()) {
            Product product = products.get(0);
            return product;
        }
        return null;
    }

    public List<Product> findProductNewest(int limit) {
        return productDAO.findProductNewest(limit);
    }

    public static void main(String[] args) {
        ProductService productService = ProductService.getInstance();
        System.out.println(productService.findOne(1));
    }
}


