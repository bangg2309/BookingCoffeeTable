package vn.edu.hcmuaf.fit.bookingcoffeetable.dao;

import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Image;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.QUERIES;

import java.util.List;

@RegisterBeanMapper(Image.class)
public interface ImageDAO {

    @SqlQuery(QUERIES.IMAGE.SELECT_IMAGE_BY_PRODUCT_ID)
    List<Image> findById(@Bind("productId") int productId);

    @SqlQuery(QUERIES.IMAGE.SELECT_IMAGE_BY_ID)
    Image findByIdImage(@Bind("id") int id);

    @SqlUpdate(QUERIES.IMAGE.INSERT_IMAGE)
    void saveImage(@Bind("productId") int productId, @Bind("url") String url);

    @SqlUpdate(QUERIES.IMAGE.UPDATE_IMAGE)
    void updateImage(@Bind("id") int id, @Bind("productId") int productId, @Bind("url") String url);

    @SqlUpdate(QUERIES.IMAGE.DELETE)
    void delete(@Bind("id") int id);
}
