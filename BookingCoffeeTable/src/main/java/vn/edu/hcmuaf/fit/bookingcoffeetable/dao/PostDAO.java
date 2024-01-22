package vn.edu.hcmuaf.fit.bookingcoffeetable.dao;

import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Contact;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Post;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.QUERIES;

import java.util.List;

@RegisterBeanMapper(Post.class)
public interface PostDAO {
    @SqlQuery(QUERIES.POST.FIND_ALL_POST)
    List<Post> findAllPost();

    @SqlQuery(QUERIES.POST.FIND_BY_ID)
    Post findById(@Bind("id") int id);

    @SqlUpdate(QUERIES.POST.SAVE_POST)
    void savePost(@Bind("userId") int userId, @Bind("title") String title, @Bind("shortDescription") String shortDescription, @Bind("description") String description, @Bind("thumbnail") String thumbnail, @Bind("status") String status, @Bind("createdBy") String createdBy, @Bind("createdDate") String createdDate);

    @SqlUpdate(QUERIES.POST.UPDATE_POST)
    void updatePost(@Bind("id") int id, @Bind("userId") int userId, @Bind("title") String title, @Bind("shortDescription") String shortDescription, @Bind("description") String description, @Bind("thumbnail") String thumbnail, @Bind("status") String status, @Bind("createdBy") String createdBy, @Bind("createdDate") String createdDate);

    @SqlUpdate(QUERIES.POST.DELETE_POST)
    void deletePost(@Bind("id") int id);

    @SqlUpdate(QUERIES.POST.DELETE)
    void delete(@Bind("userId") int id);

    @SqlQuery(QUERIES.POST.FIND_NEW_POST)
    List<Post> findNewPost(@Bind("limit") int limit);

    @SqlQuery(QUERIES.POST.TOTAL_ITEM)
    String totalItem();

    @SqlQuery(QUERIES.POST.GET_POSTS)
    List<Post> getPosts(@Bind("limit") int limit, @Bind("offset") int offset);
}
