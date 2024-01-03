package vn.edu.hcmuaf.fit.bookingcoffeetable.dao;

import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Area;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Table;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.QUERIES;

import java.util.List;

@RegisterBeanMapper(Table.class)
public interface TableDAO {
    @SqlUpdate(QUERIES.PRODUCT.INSERT_PRODUCT)
    void insertProduct(@Bind("categoryId") int categoryId, @Bind("name") String name, @Bind("price") int price, @Bind("description") String description, @Bind("status") int status, @Bind("discount") int discount);


//    @SqlQuery(QUERIES.SELECT_PRODUCT_WITH_IMAGES)
//    @RegisterRowMapper(ProductMapper.class)
//    List<Product> findOne(@Bind("id") int id);
//
//    @SqlQuery(QUERIES.SELECT_PRODUCTS_NEWEST)
//    List<Product> findProductNewest(@Bind("limit") int limit);

//    @RegisterRowMapper(TableMapper.class)

    @SqlQuery(QUERIES.TABLE.SELECT_ALL_TABLE)
    List<Table> findAllTabes();

    @SqlQuery(QUERIES.TABLE.SELECT_TABLE_FILTER)
    List<Table> findTablesFilter(@Bind("location") String location, @Bind("seatCount") int seatCount, @Bind("endTime") String endTime, @Bind("startTime") String startTime);


    @SqlQuery(QUERIES.TABLE.SELECT_TABLE_PAGE)
    List<Table> getTables(@Bind("areaId") String areaId, @Bind("startTime") String startTime, @Bind("endTime")  String endTime, @Bind("count") int count, @Bind("find") String find, @Bind("limit") int limit, @Bind("offset") int offset);

    @SqlQuery(QUERIES.TABLE.COUNT_TABLE)
    String totalItem();

    @SqlQuery(QUERIES.TABLE.SELECT_TABLE_BY_ID)
    List<Table> findById(@Bind("id") int id);

}
