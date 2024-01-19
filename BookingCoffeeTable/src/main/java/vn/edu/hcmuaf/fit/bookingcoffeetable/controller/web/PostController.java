package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.web;

import com.google.gson.Gson;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Cart;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Post;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Product;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.PostService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "PostController", value = "/post")
public class PostController extends HttpServlet {
    private PostService postService;
    private int page = 1;
    private int maxPageItem = 3;
    private int totalItem = -1;

    public PostController() {
        postService = PostService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Post post = null;
        if (id != null) {
            post = postService.findById(Integer.parseInt(id));
        } else {
            post = postService.findNewPost(1).get(0);
        }

        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");

        // Calculate totalItem synchronously
        totalItem = Integer.parseInt(postService.totalItem());
        System.out.println("totalItem: " + totalItem);

        if (totalItem != -1) {
            // paging attribute setup
            request.setAttribute("page", page);
            request.setAttribute("post", post);
            request.setAttribute("totalPage", (int) Math.ceil((double) totalItem / maxPageItem));
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/post.jsp");

            try {
                rd.forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        }



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
