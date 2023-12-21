package vn.edu.hcmuaf.fit.bookingcoffeetable.service;

import org.jdbi.v3.sqlobject.SqlObjectPlugin;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Post;
import vn.edu.hcmuaf.fit.bookingcoffeetable.dao.PostDAO;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.JDBIConnector;

import java.util.List;

public class PostService {
    private static PostService instance;
    private static PostDAO postDAO;

    public static PostService getInstance() {
        if (instance == null) {
            postDAO = JDBIConnector.get().installPlugin(new SqlObjectPlugin()).onDemand(PostDAO.class);
            instance = new PostService(postDAO);


        }
        return instance;
    }

    private PostService(PostDAO postDAO) {
        this.postDAO = postDAO;
    }

    public List<Post> getPost() {
        return postDAO.getPost();
    }
    public List<Post> getPostTop1() {
        return postDAO.getPostTop1();
    }
    public Post findOne(int id) {
        List<Post> posts = postDAO.findOne(id);
        if (posts.isEmpty()) {
            return null;
        }
        return posts.get(0);
    }

    public static void main(String[] args) {
        PostService postService = PostService.getInstance();
        System.out.println(postService.findOne(1));
    }
}
