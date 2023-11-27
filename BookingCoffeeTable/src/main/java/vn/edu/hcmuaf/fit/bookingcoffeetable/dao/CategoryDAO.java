package vn.edu.hcmuaf.fit.bookingcoffeetable.dao;


import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Category;

import java.util.List;

@RegisterBeanMapper(Category.class)
public interface CategoryDAO {
    @SqlUpdate("INSERT INTO categories (name, status, image) VALUES (:name, :status, :image)")
    void insertCategory(@Bind("name") String name, @Bind("status") int status, @Bind("image") String image);

    @SqlQuery("SELECT * FROM categories")
    List<Category> findAll();
}