package vn.edu.hcmuaf.fit.bookingcoffeetable.service;

import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.sqlobject.SqlObjectPlugin;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.ProductVariant;
import vn.edu.hcmuaf.fit.bookingcoffeetable.dao.ProductDAO;
import vn.edu.hcmuaf.fit.bookingcoffeetable.dao.ProductVariantDAO;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.JDBIConnector;

import java.util.List;

public class ProductVariantService {
    private static ProductVariantDAO productVariantDAO;
    private static ProductVariantService instance;

    public static ProductVariantService getInstance() {
        if (instance == null) {
            Jdbi jdbi = JDBIConnector.get();
            jdbi.installPlugin(new SqlObjectPlugin());
            productVariantDAO = jdbi.onDemand(ProductVariantDAO.class);
            instance = new ProductVariantService(productVariantDAO);
        }
        return instance;
    }

    public ProductVariantService(ProductVariantDAO productVariantDAO) {
        this.productVariantDAO = productVariantDAO;
    }

    public List<ProductVariant> getProductVariantByProductId(int productId) {
        return productVariantDAO.getProductVariantByProductId(productId);
    }

    public ProductVariant saveProductVariant(ProductVariant productVariant) {
        productVariantDAO.saveProductVariant(productVariant.getProductId(), productVariant.getSize(), productVariant.getPricePlus());
        return getProductVariantByProductId(productVariant.getProductId()).get(0);
    }

    public void updateProductVariant(ProductVariant productVariant, String sizeChange) {
        System.out.println(productVariant.getProductId()+ "" + sizeChange+ "" + productVariant.getSize()+ "" + productVariant.getPricePlus());
        productVariantDAO.updateProductVariant(productVariant.getProductId(), sizeChange, productVariant.getSize(), productVariant.getPricePlus());
    }

    public void deleteProductVariant(int id) {
        productVariantDAO.deleteProductVariant(id);
    }

    public void delete(int id) {
        productVariantDAO.delete(id);
    }


}
