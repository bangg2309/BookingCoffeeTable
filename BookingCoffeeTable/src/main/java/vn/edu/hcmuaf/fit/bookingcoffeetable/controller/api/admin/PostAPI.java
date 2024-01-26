package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.api.admin;

import com.google.gson.Gson;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Post;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.User;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.ContactService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.PostService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;
import java.time.LocalDateTime;

@MultipartConfig
@WebServlet(name = "PostAPI", value = "/api/admin/post")
public class PostAPI extends HttpServlet {
    PostService postService;

    public PostAPI() {
        postService = PostService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Gson gson = new Gson();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        String id = request.getParameter("id");
        String title = request.getParameter("title");
        String shortDescription = request.getParameter("shortDescription");
        String description = request.getParameter("description");
        System.out.println("des:" + description);
        String thumbnail = request.getParameter("thumbnail");
        String status = request.getParameter("status");
        String createdBy = request.getParameter("createdBy");
        Post post = new Post();
        post.setTitle(title);
        post.setShortDescription(shortDescription);
        post.setDescription(description);
        System.out.println(description);
        Part filePart = request.getPart("avatar");
        String fileName = "default.svg";
        if (filePart != null && filePart.getSize() > 0 && filePart.getSubmittedFileName() != null) {
            String rootPath = request.getServletContext().getRealPath("/views/template/custom/image/post");
            fileName = filePart.getSubmittedFileName();
            filePart.write(rootPath + File.separator + fileName);
        }
        post.setThumbnail("/views/template/custom/image/post/" + fileName);
        post.setStatus(status);
        post.setCreatedBy(createdBy);
        post.setCreatedDate(String.valueOf(LocalDateTime.now()));

        HttpSession session = request.getSession();
        User userSession = (User) session.getAttribute("userSession");
        post.setUserId(userSession.getId());
        System.out.println(post);
        post = postService.savePost(post);
        gson.toJson(post, response.getWriter());
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Gson gson = new Gson();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        String id = request.getParameter("id");
        String title = request.getParameter("title");
        String shortDescription = request.getParameter("shortDescription");
        String description = request.getParameter("description");
        String thumbnail = request.getParameter("thumbnail");
        String status = request.getParameter("status");
        String createdBy = request.getParameter("createdBy");
        String createdDate = request.getParameter("createdDate");
        Post post = new Post();
        HttpSession session = request.getSession();
        User userSession = (User) session.getAttribute("userSession");
        post.setId(Integer.parseInt(id));
        post.setUserId(userSession.getId());
        post.setTitle(title);
        post.setShortDescription(shortDescription);
        post.setDescription(description);
        Part filePart = request.getPart("avatar");
        String fileName = "default.svg";
        if (filePart != null && filePart.getSize() > 0 && filePart.getSubmittedFileName() != null) {
            String rootPath = request.getServletContext().getRealPath("/views/template/custom/image/avatar");
            fileName = filePart.getSubmittedFileName();
            filePart.write(rootPath + File.separator + fileName);
        }
        post.setThumbnail("/views/template/custom/image/post/" + fileName);
        post.setStatus(status);
        post.setCreatedBy(createdBy);
        post.setCreatedDate(createdDate);
        System.out.println(post);
        post = postService.updatePost(post);
        gson.toJson(post, response.getWriter());
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Gson gson = new Gson();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Post post = gson.fromJson(request.getReader(), Post.class);
        postService.deletePost(post.getId());
        gson.toJson("{}", response.getWriter());
    }
}
