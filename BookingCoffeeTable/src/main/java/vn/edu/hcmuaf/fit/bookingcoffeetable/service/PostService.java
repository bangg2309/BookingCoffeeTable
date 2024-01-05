package vn.edu.hcmuaf.fit.bookingcoffeetable.service;


import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.sqlobject.SqlObjectPlugin;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Contact;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Post;
import vn.edu.hcmuaf.fit.bookingcoffeetable.dao.ContactDAO;

import vn.edu.hcmuaf.fit.bookingcoffeetable.dao.PostDAO;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.JDBIConnector;

import java.util.List;

public class PostService {
    private static PostService instance;
    private static PostDAO postDAO;

    public static PostService getInstance() {
        if (instance == null) {
            Jdbi jdbi = JDBIConnector.get();
            jdbi.installPlugin(new SqlObjectPlugin());
            postDAO = jdbi.onDemand(PostDAO.class);
            instance = new PostService(postDAO);

        }
        return instance;
    }


    public PostService(PostDAO postDAO) {
        this.postDAO = postDAO;
    }


    public List<Post> findAllPost() {
        return postDAO.findAllPost();
    }

    public Post findById(int id) {
        return postDAO.findById(id);
    }

    public Post savePost(Post post) {
        post.setUser(UserService.getInstance().findById(post.getUserId()));
        postDAO.savePost(post.getUserId(), post.getTitle(), post.getShortDescription(), post.getDescription(), post.getThumbnail(), post.getStatus(), post.getCreatedBy(), post.getCreatedDate());
        return findById(post.getId());
    }

    public Post updatePost(Post post) {
        post.setUser(UserService.getInstance().findById(post.getUserId()));
       postDAO.updatePost(post.getId(), post.getUserId(), post.getTitle(), post.getShortDescription(), post.getDescription(), post.getThumbnail(), post.getStatus(), post.getCreatedBy(), post.getCreatedDate());
        return findById(post.getId());
    }

    public void deletePost(int id) {
        postDAO.deletePost(id);
    }

    public static void main(String[] args) {
        PostService rv = PostService.getInstance();

    }
}
