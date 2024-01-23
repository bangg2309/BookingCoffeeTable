package vn.edu.hcmuaf.fit.bookingcoffeetable.dao;

import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Area;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.QUERIES;

import java.util.List;

@RegisterBeanMapper(Area.class)
public interface AreaDAO {
    @SqlUpdate(QUERIES.PRODUCT.INSERT_PRODUCT)
    void insertProduct(@Bind("categoryId") int categoryId, @Bind("name") String name, @Bind("price") int price, @Bind("description") String description, @Bind("status") int status, @Bind("discount") int discount);


//    @SqlQuery(QUERIES.SELECT_PRODUCT_WITH_IMAGES)
//    @RegisterRowMapper(ProductMapper.class)
//    List<Product> findOne(@Bind("id") int id);
//
//    @SqlQuery(QUERIES.SELECT_PRODUCTS_NEWEST)
//    List<Product> findProductNewest(@Bind("limit") int limit);

//    @RegisterRowMapper(TableMapper.class)
    @SqlQuery(QUERIES.AREA.SELECT_ALL_AREA)
    List<Area> findAllArea();

    @SqlQuery(QUERIES.AREA.SELECT_AREA_BY_ID)
    List<Area> findById(@Bind("id") int id);


}
