package vn.edu.hcmuaf.fit.bookingcoffeetable.json;

import com.google.gson.Gson;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Post;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Table;
import vn.edu.hcmuaf.fit.bookingcoffeetable.paging.PageRequest;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.PostService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.TableService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "post-json", urlPatterns = {"/posts"}, initParams = {
        @WebInitParam(name = "page-index", value = "1"),
        @WebInitParam(name = "per-page", value = "3")
})
public class ListPostsJson extends HttpServlet {
    private PostService postService;
    private List<Post> posts;
    private String json;
    int pageIndexNum = 1;
    int perPageNum = 3;
    PageRequest pageRequest = null;

    public ListPostsJson() {
        postService = PostService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");

        // Receive request page-index and per-page
        String pageIndex = request.getParameter("page-index");
        String perPage = request.getParameter("per-page");
        System.out.println("pageIndex: " + pageIndex + " perPage: " + perPage);
        try {
            pageIndexNum = Integer.parseInt(pageIndex);
            perPageNum = Integer.parseInt(perPage);

            pageRequest = new PageRequest(pageIndexNum, perPageNum);
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }

        // Fetch tables directly without using a separate thread
        System.out.println("pageRequest: " + pageRequest.getLimit() + " " + pageRequest.getOffset());
        posts = postService.getPosts(pageRequest.getLimit(), pageRequest.getOffset());
        System.out.println("posts: " + posts);

        if (posts != null) {
            json = new Gson().toJson(posts);
            PrintWriter out = response.getWriter();
            try {
                out.println(json);
            } finally {
                out.close();
            }
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
