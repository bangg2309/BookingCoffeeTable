package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.api.admin;

import com.google.gson.Gson;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.*;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;

@MultipartConfig
@WebServlet(name = "UserAPI", value = "/api/admin/user")
public class UserAPI extends HttpServlet {
    UserService userService;
    PostService postService;
    VerifyEmailService verifyEmailService;
    ReviewService reviewService;
    ReservationService reservationService;

    public UserAPI() {
        userService = UserService.getInstance();
        postService = PostService.getInstance();
        verifyEmailService = VerifyEmailService.getInstance();
        reviewService = ReviewService.getInstance();
        reservationService = ReservationService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Gson gson = new Gson();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String roleId = request.getParameter("roleId");
        String emailVerify = request.getParameter("emailVerify");
        String status = request.getParameter("status");
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setFullname(fullname);
        user.setEmail(email);
        user.setPhone(phone);
        user.setRoleId(Integer.parseInt(roleId));
        user.setEmailVerified(Integer.parseInt(emailVerify));
        user.setStatus(Integer.parseInt(status));
        // Xử lý tải lên hình ảnh avatar
        Part filePart = request.getPart("avatar");
        String fileName = "default.svg";
        if (filePart != null && filePart.getSize() > 0 && filePart.getSubmittedFileName() != null) {
            String rootPath = request.getServletContext().getRealPath("/views/template/custom/image/avatar");
            fileName = filePart.getSubmittedFileName();
            filePart.write(rootPath + File.separator + fileName);
        }
        user.setAvatar("/views/template/custom/image/avatar/" + fileName);
        user = userService.save(user);
        gson.toJson(user, response.getWriter());
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Gson gson = new Gson();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");

        String userId = request.getParameter("id");
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String roleId = request.getParameter("roleId");
        String emailVerify = request.getParameter("emailVerify");
        String status = request.getParameter("status");
        User user = new User();
        user.setId(Integer.parseInt(userId));
        user.setFullname(fullname);
        user.setEmail(email);
        user.setPhone(phone);
        user.setRoleId(Integer.parseInt(roleId));
        user.setEmailVerified(Integer.parseInt(emailVerify));
        user.setStatus(Integer.parseInt(status));
        // Xử lý tải lên hình ảnh avatar
        Part filePart = request.getPart("avatar");
        String fileName = "default.svg";
        if (filePart != null && filePart.getSize() > 0 && filePart.getSubmittedFileName() != null) {
            String rootPath = request.getServletContext().getRealPath("/views/template/custom/image/avatar");
            fileName = filePart.getSubmittedFileName();
            filePart.write(rootPath + File.separator + fileName);
        }
        user.setAvatar("/views/template/custom/image/avatar/" + fileName);
        user = userService.update(user);
        gson.toJson(user, response.getWriter());
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Gson gson = new Gson();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        User user = gson.fromJson(request.getReader(), User.class);
        Post post = gson.fromJson(request.getReader(), Post.class);
        VerifyEmail verifyEmail = gson.fromJson(request.getReader(), VerifyEmail.class);
        Review review = gson.fromJson(request.getReader(), Review.class);
        Reservation reservation = gson.fromJson(request.getReader(), Reservation.class);
//        System.out.println(reservation.getUserId());
        if (reservation == null){
            reservationService.deleteByUserId(user.getId());
        }
        if (review == null){
            reviewService.delete(user.getId());
        }
        if (verifyEmail == null){
            verifyEmailService.delete(user.getId());
        }
        if (post == null){
            postService.delete(user.getId());
        }
        userService.delete(user.getId());
        gson.toJson("{}", response.getWriter());
    }
}
