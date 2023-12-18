package vn.edu.hcmuaf.fit.bookingcoffeetable.dao;

import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.ProductVariant;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.QUERIES;

import java.util.List;

@RegisterBeanMapper(value = ProductVariant.class)
public interface ProductVariantDAO {
   @SqlQuery(QUERIES.SELECT_PRODUCT_VARIANT_BY_PRODUCT_ID)
   List<ProductVariant> getProductVariantByProductId(@Bind("productId") int productId);

}
