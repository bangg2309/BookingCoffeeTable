package vn.edu.hcmuaf.fit.bookingcoffeetable.dao;

import org.jdbi.v3.core.mapper.Nested;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.config.RegisterJoinRowMapper;
import org.jdbi.v3.sqlobject.config.RegisterRowMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Image;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Product;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.QUERIES;
import vn.edu.hcmuaf.fit.bookingcoffeetable.mapper.ImageMapper;
import vn.edu.hcmuaf.fit.bookingcoffeetable.mapper.ProductMapper;

import java.util.List;

@RegisterBeanMapper(Product.class)
public interface ProductDAO {
    @SqlUpdate(QUERIES.INSERT_PRODUCT)
    void insertProduct(@Bind("categoryId") int categoryId, @Bind("name") String name, @Bind("price") int price, @Bind("description") String description, @Bind("status") int status, @Bind("discount") int discount);


    @SqlQuery(QUERIES.SELECT_PRODUCT_WITH_IMAGES)
    @RegisterRowMapper(ProductMapper.class)
    List<Product> findOne(@Bind("id") int id);

    @SqlQuery(QUERIES.SELECT_PRODUCTS_NEWEST)
    @RegisterRowMapper(ProductMapper.class)
    List<Product> findProductNewest(@Bind("limit") int limit);

}
