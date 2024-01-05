package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.admin.post;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Post;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Reservation;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.AreaService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.PostService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.ReservationService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.TableService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "EditPostController", value = "/admin/post-management/edit")
public class EditController extends HttpServlet {
    PostService postService;

    public EditController() {
        postService = PostService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        request.setAttribute("posts", postService.findAllPost());
        if (id != null) {
            Post post = postService.findById(Integer.parseInt(id));
            request.setAttribute("post", post);
        }
        request.getRequestDispatcher("/views/admin/post-addition.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
