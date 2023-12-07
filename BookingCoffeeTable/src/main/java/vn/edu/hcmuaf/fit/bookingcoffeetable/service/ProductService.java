package vn.edu.hcmuaf.fit.bookingcoffeetable.service;

import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.sqlobject.SqlObjectPlugin;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Product;
import vn.edu.hcmuaf.fit.bookingcoffeetable.dao.ProductDAO;
import vn.edu.hcmuaf.fit.bookingcoffeetable.dao.ProductVariantDAO;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.JDBIConnector;

import java.util.List;

public class ProductService {
    private static ProductService instance;
    private static ProductDAO productDAO;
    private static ProductVariantDAO productVariantDAO;

    public static ProductService getInstance() {
        if (instance == null) {
            Jdbi jdbi = JDBIConnector.get();
            jdbi.installPlugin(new SqlObjectPlugin());
            productDAO = jdbi.onDemand(ProductDAO.class);
            productVariantDAO = jdbi.onDemand(ProductVariantDAO.class);
            instance = new ProductService(productDAO, productVariantDAO);
        }
        return instance;
    }

    private ProductService(ProductDAO productDAO, ProductVariantDAO productVariantDAO) {
        this.productDAO = productDAO;
        this.productVariantDAO = productVariantDAO;
    }

    public void insertProduct(int categoryId, String name, int price, String description, int status, int discount) {
        productDAO.insertProduct(categoryId, name, price, description, status, discount);
    }

    public Product findOne(int id) {
        List<Product> products = productDAO.findOne(id);

        if (!products.isEmpty()) {
            Product product = products.get(0);
            product.setProductVariants(productVariantDAO.getProductVariantByProductId(product.getId()));
            return product;
        }
        return null;
    }

    public List<Product> findProductNewest(int limit) {
        List<Product> products = productDAO.findProductNewest(limit);
        for (Product product : products) {
            product.setProductVariants(productVariantDAO.getProductVariantByProductId(product.getId()));
            product.setSize(product.getProductVariants().get(0).getSize());
        }
        return products;
    }


    public static void main(String[] args) {
        ProductService productService = ProductService.getInstance();
        System.out.println(productService.findProductNewest(1));
    }
}


