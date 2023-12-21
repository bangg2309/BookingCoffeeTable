package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.web;

import com.google.gson.Gson;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Post;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.PostService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PostController", value = "/post")
public class PostController extends HttpServlet {
    PostService postService;
    public PostController(){
        postService = PostService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");

        int id = Integer.parseInt(request.getParameter("id"));

        Post post = postService.findOne(id);
        request.setAttribute("post", post);

        List<Post> postAll = postService.getPost();
        request.setAttribute("postAll", postAll);

        System.out.println(post);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/web/post.jsp");
        requestDispatcher.forward(request, response);

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
