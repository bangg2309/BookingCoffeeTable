package vn.edu.hcmuaf.fit.bookingcoffeetable.dao;


import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Category;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.QUERIES;

import java.util.List;

@RegisterBeanMapper(Category.class)
public interface CategoryDAO {
    @SqlUpdate("INSERT INTO categories (name, status, image) VALUES (:name, :status, :image)")
    void insertCategory(@Bind("name") String name, @Bind("status") int status, @Bind("image") String image);



    @SqlQuery(QUERIES.SELECT_N_CATEGORY)
    List<Category> findNCategory(@Bind("limit") int limit);


    @SqlQuery(QUERIES.SELECT_ALL_CATEGORY)
    List<Category> findAllCategory();
}


    @SqlQuery(QUERIES.CATEGORY.findOne)
    List<Category> findOne(@Bind("id") int id);

    @SqlQuery(QUERIES.SELECT_ALL_CATEGORY)
    List<Category> findAllCategory();

}
