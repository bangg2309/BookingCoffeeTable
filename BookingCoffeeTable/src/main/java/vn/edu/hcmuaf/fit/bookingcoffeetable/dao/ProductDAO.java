package vn.edu.hcmuaf.fit.bookingcoffeetable.dao;

import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Product;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.QUERIES;

import java.util.List;

@RegisterBeanMapper(Product.class)
public interface ProductDAO {
    @SqlUpdate(QUERIES.PRODUCT.INSERT_PRODUCT)
    void insertProduct(@Bind("categoryId") int categoryId, @Bind("name") String name, @Bind("price") int price, @Bind("description") String description, @Bind("status") int status, @Bind("discount") int discount);


    @SqlQuery(QUERIES.PRODUCT.SELECT_PRODUCT_WITH_IMAGES)
    List<Product> findOne(@Bind("id") int id);

    @SqlQuery(QUERIES.PRODUCT.SELECT_PRODUCTS_NEWEST)
    List<Product> findProductNewest(@Bind("limit") int limit);

    @SqlQuery(QUERIES.PRODUCT.SELECT_PRODUCTS_DISCOUNT)
    List<Product> findProductDiscount(@Bind("limit") int limit);


    @SqlQuery(QUERIES.PRODUCT.SELECT_ALL_PRODUCT)
    List<Product> findAllProducts();


    @SqlQuery(QUERIES.PRODUCT.SELECT_PRODUCT_PAGE_PRICE_DESC)
    List<Product> getProductsORDERBYPriceDESC(@Bind("categoryId") String categoryId, @Bind("find") String find, @Bind("limit") int limit, @Bind("offset") int offset, @Bind("from") int from, @Bind("to") int to);

    @SqlQuery(QUERIES.PRODUCT.SELECT_PRODUCT_PAGE_PRICE_ASC)
    List<Product> getProductsORDERBYPriceASC(@Bind("categoryId") String categoryId, @Bind("find") String find, @Bind("limit") int limit, @Bind("offset") int offset, @Bind("from") int from, @Bind("to") int to);

    @SqlQuery(QUERIES.PRODUCT.SELECT_PRODUCT_PAGE)
    List<Product> getProducts(@Bind("categoryId") String categoryId, @Bind("find") String find, @Bind("limit") int limit, @Bind("offset") int offset, @Bind("from") int from, @Bind("to") int to);

    @SqlQuery(QUERIES.PRODUCT.SELECT_PRODUCT_PAGE_NAME_ASC)
    List<Product> getProductsORDERBYNameASC(@Bind("categoryId") String categoryId, @Bind("find") String find, @Bind("limit") int limit, @Bind("offset") int offset, @Bind("from") int from, @Bind("to") int to);

    @SqlQuery(QUERIES.PRODUCT.COUNT_PRODUCT)
    String totalItem();

    @SqlUpdate(QUERIES.PRODUCT.UPDATE_PRODUCT)
    void updateProduct(@Bind("id") int id, @Bind("categoryId") int categoryId, @Bind("name") String name, @Bind("price") int price, @Bind("description") String description, @Bind("status") int status, @Bind("discount") int discount);

    @SqlUpdate(QUERIES.PRODUCT.DELETE_PRODUCT)
    void deleteProduct(@Bind("id") int id);

    @SqlUpdate(QUERIES.PRODUCT.DELETE)
    void delete(@Bind("categoryId") int id);

    @SqlQuery(QUERIES.PRODUCT.SELECT_PRODUCTID_BY_NAME)
    int getByName(@Bind("name") String name);

    @SqlQuery(QUERIES.PRODUCT.SELECT_PRODUCT_BY_CATEGORY_ID)
    List<Product> findByCategoryId(@Bind("categoryId") int categoryId);
}
