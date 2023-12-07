package vn.edu.hcmuaf.fit.bookingcoffeetable.service;

import org.jdbi.v3.sqlobject.SqlObjectPlugin;
import org.jdbi.v3.sqlobject.customizer.Bind;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Product;
import vn.edu.hcmuaf.fit.bookingcoffeetable.dao.ProductDAO;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.JDBIConnector;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.IService.IProductService;

import java.util.List;

public class ProductService implements IProductService {
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

    public double priceOfQuantity(Product product) {
        return product.getPrice() * product.getQuantity();
    }

    public List<Product> findAllProducts() {
        return productDAO.findAllProducts();
    }
    public List<Product> findAllProductsOffset(int recordsPerPage, int offset) {
        return productDAO.findAllProductsOffset(recordsPerPage, offset);
    }

    public static void main(String[] args) {
        ProductService productService = ProductService.getInstance();
//        System.out.println(productService.findProductNewest(20));
        System.out.println(productService.findAllProducts().size());
    }

}


