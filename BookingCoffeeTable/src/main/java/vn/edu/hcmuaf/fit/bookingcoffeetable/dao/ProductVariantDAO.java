package vn.edu.hcmuaf.fit.bookingcoffeetable.dao;

import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.ProductVariant;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.QUERIES;

import java.util.List;

@RegisterBeanMapper(ProductVariant.class)
public interface ProductVariantDAO {
   @SqlQuery(QUERIES.PRODUCTVARIANT.SELECT_PRODUCT_VARIANT_BY_PRODUCT_ID)
   List<ProductVariant> getProductVariantByProductId(@Bind("productId") int productId);

   @SqlUpdate(QUERIES.PRODUCTVARIANT.INSERT_PRODUCT_VARIANT)
    void saveProductVariant(@Bind("productId") int productId, @Bind("size") String size, @Bind("pricePlus") int pricePlus);

    @SqlUpdate(QUERIES.PRODUCTVARIANT.UPDATE_PRODUCT_VARIANT)
    void updateProductVariant(@Bind("productId") int id, @Bind("sizeChange") String sizeChange, @Bind("size") String size, @Bind("pricePlus") int pricePlus);

    @SqlUpdate(QUERIES.PRODUCTVARIANT.DELETE_PRODUCT_VARIANT)
    void deleteProductVariant(@Bind("id") int id);

    @SqlUpdate(QUERIES.PRODUCTVARIANT.DELETE)
    void delete(@Bind("id") int id);


}
