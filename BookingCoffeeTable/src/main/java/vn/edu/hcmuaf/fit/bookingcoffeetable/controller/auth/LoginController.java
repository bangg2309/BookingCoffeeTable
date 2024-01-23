package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.auth;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.User;
import vn.edu.hcmuaf.fit.bookingcoffeetable.constant.Message;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.QUERIES;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginController", value = "/login")
public class LoginController extends HttpServlet {
    UserService userService;

    public LoginController() {
        userService = UserService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/views/web/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = userService.findByUserNameAndPassword(username, password);
        System.out.println(user);
        String error = null;
        if (user == null) {
            error = "Username or password is incorrect";
            request.setAttribute("error", error);
            request.getRequestDispatcher("/views/web/login.jsp").forward(request, response);
        } else if (user.getStatus() == 0) {
            request.setAttribute("error", Message.ACCOUNT_BLOCKED);
            request.getRequestDispatcher("/views/web/login.jsp").forward(request, response);
        } else if (user.getEmailVerified() == 0) {
            response.sendRedirect(request.getContextPath() + "/verify");
        } else {

            HttpSession session = request.getSession(true);
            session.setAttribute("userSession", user);

            if (user.getRoleId() == 1) {
                response.sendRedirect(request.getContextPath() + "/home");
            } else if (user.getRoleId() == 2) {
                response.sendRedirect(request.getContextPath() + "/admin/dashboard");
            }
        }
    }
}
