package vn.edu.hcmuaf.fit.bookingcoffeetable.dao;

import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Post;

import java.util.List;

@RegisterBeanMapper(Post.class)
public interface PostDAO {
    @SqlQuery("SELECT * FROM posts ORDER BY createdDate DESC LIMIT 3")
    List<Post> getPost();
    @SqlQuery("SELECT * FROM posts ORDER BY createdDate DESC LIMIT 1")
    List<Post> getPostTop1();

    @SqlQuery("SELECT * FROM posts WHERE id = :id")
    List<Post> findOne(@Bind("id") int id);
}
