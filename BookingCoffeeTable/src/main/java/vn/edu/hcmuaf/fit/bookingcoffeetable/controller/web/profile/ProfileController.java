package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.web.profile;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.User;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ProfileController", value = "/profile")
public class ProfileController extends HttpServlet {

    UserService userService;

    public ProfileController() {
        userService = UserService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/views/web/profile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding( "UTF-8");
        String id = request.getParameter("userId");
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        User userSession = userService.updateProfile(Integer.parseInt(id), fullname, email, phone);
        request.getSession().setAttribute("userSession", userSession);
        request.setAttribute("success", "Update profile successfully");

        request.getRequestDispatcher("/views/web/profile.jsp").forward(request, response);

    }
}
