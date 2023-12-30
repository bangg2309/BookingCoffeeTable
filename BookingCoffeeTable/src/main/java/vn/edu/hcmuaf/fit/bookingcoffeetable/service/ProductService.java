package vn.edu.hcmuaf.fit.bookingcoffeetable.service;

import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.sqlobject.SqlObjectPlugin;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Product;
import vn.edu.hcmuaf.fit.bookingcoffeetable.dao.ProductDAO;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.JDBIConnector;

import java.util.ArrayList;
import java.util.List;

public class ProductService {
    private static ProductService instance;
    private static ProductDAO productDAO;


    public static ProductService getInstance() {
        if (instance == null) {
            Jdbi jdbi = JDBIConnector.get();
            jdbi.installPlugin(new SqlObjectPlugin());
            productDAO = jdbi.onDemand(ProductDAO.class);
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
            product.setProductVariants(ProductVariantService.getInstance().getProductVariantByProductId(product.getId()));
            return product;
        }
        return null;
    }

    public List<Product> findProductNewest(int limit) {
        List<Product> products = productDAO.findProductNewest(limit);
        for (Product product : products) {
            product.setProductVariants(ProductVariantService.getInstance().getProductVariantByProductId(product.getId()));
            product.updateBySize(product.getProductVariants().get(0).getSize());
            product.setImages(ImageService.getInstance().findById(product.getId()));
            product.setReviews(ReviewService.getInstance().findReviewByProductId(product.getId()));
        }
        return products;
    }

    public List<Product> findAllProducts() {
        return productDAO.findAllProducts();
    }

    public List<Product> getProducts(String categoryId, String find, int limit, int offset, String orderBy, String ratingValue, int from, int to) {
        List<Product> products = new ArrayList<Product>();
        if (orderBy.equals("price_DESC")) {
            products = productDAO.getProductsORDERBYPriceDESC(categoryId, find, limit, offset, from, to);
        } else if (orderBy.equals("price_ASC")) {
            products = productDAO.getProductsORDERBYPriceASC(categoryId, find, limit, offset, from, to);
        } else if (orderBy.equals("name_DESC")) {
            products = productDAO.getProductsORDERBYNameASC(categoryId, find, limit, offset, from, to);
        } else if (orderBy.equals("")) {
            products = productDAO.getProducts(categoryId, find, limit, offset, from, to);

        }
        List<Product> result = new ArrayList<Product>();
        for (Product product : products) {
            product.setProductVariants(ProductVariantService.getInstance().getProductVariantByProductId(product.getId()));
            product.updateBySize(product.getProductVariants().get(0).getSize());
            product.setImages(ImageService.getInstance().findById(product.getId()));
            product.setReviews(ReviewService.getInstance().findReviewByProductId(product.getId()));
            product.getAverageRating();
            System.out.println("ratingValue: " + ratingValue);
            if (product.getAverageRating() >= Integer.parseInt(ratingValue)) {
                result.add(product);
            }
        }
        return result;
    }

    public String totalItem() {
        return productDAO.totalItem();
    }

    public static void main(String[] args) {
        ProductService productService = ProductService.getInstance();

        List<Product> products = productService.findProductNewest(20);
        for (Product product : products) {
//            System.out.println(product.getId() + " " + product.getName() + " " + product.getPrice() + " " + product.getImages() + product.getCreatedDate());
        }

        System.out.println(productService.getProducts(null, "", 9, 0, "price_DESC", "4", 0, 100000));
    }

}


