package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.auth;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.VerifyEmail;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.UserService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.VerifyEmailService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ResetPassword", value = "/reset-password")
public class ResetPasswordController extends HttpServlet {
    private VerifyEmailService verifyEmailService;
    private UserService userService;

    public ResetPasswordController() {
        verifyEmailService = VerifyEmailService.getInstance();
        userService = UserService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String code = request.getParameter("code");
        String newPassword = request.getParameter("new-password");
        String type = "forget-password";
        VerifyEmail verifyEmail = verifyEmailService.selectVerifyEmailByCode(code, type);
        if (verifyEmail != null || newPassword != null) {
            int userId = verifyEmail.getUserId();
            userService.updatePassword(userId, newPassword);
            verifyEmailService.deleteVerifyEmailByUserIdAndType(userId, type);
            HttpSession session = request.getSession();
            session.setAttribute("success", "Reset password successfully");
            response.sendRedirect(request.getContextPath() + "/login");
        } else {
            request.setAttribute("error", "Reset password failed");
            request.getRequestDispatcher("/views/web/login.jsp").forward(request, response);
        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
