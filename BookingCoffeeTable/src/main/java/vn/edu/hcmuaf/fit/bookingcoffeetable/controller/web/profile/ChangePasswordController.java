package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.web.profile;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.User;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ChangePasswordController", value = "/change-password")
public class ChangePasswordController extends HttpServlet {
    UserService userService;

    public ChangePasswordController() {
        userService = UserService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/views/web/change-password.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("userId");
        User user = userService.findById(Integer.parseInt(id));

        String oldPassword = request.getParameter("oldPassword");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        oldPassword = userService.hashPassword(oldPassword);

        if (oldPassword.equals(user.getPassword())) {
            if (newPassword.equals(confirmPassword)) {
                user.setPassword(newPassword);
                userService.update(user);
                request.setAttribute("message", "Đổi mật khẩu thành công");
                request.getRequestDispatcher("/views/web/change-password.jsp").forward(request, response);
            } else {
                request.setAttribute("message", "Mật khẩu mới không khớp");
                request.getRequestDispatcher("/views/web/change-password.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("message", "Mật khẩu cũ không đúng");
            request.getRequestDispatcher("/views/web/change-password.jsp").forward(request, response);
        }


    }
}
