package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.auth;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.User;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.MailService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.UserService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.VerifyEmailService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.UUID;

@WebServlet("/forget-password")
public class ForgetPasswordController extends HttpServlet {
    private UserService userService;
    private MailService mailService;
    private VerifyEmailService verifyEmailService;

    public ForgetPasswordController() {
        userService = UserService.getInstance();
        mailService = MailService.getInstance();
        verifyEmailService = VerifyEmailService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/views/web/forget-password.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        User user = userService.findByEmail(email);
        String type = "forget-password";
        String error = null;
        if (user == null) {
            error = "Email is not exist";
            request.setAttribute("error", error);
            request.getRequestDispatcher("/views/web/forget-password.jsp").forward(request, response);
        } else {
            String subject = "BookingCoffeeTable - Reset password";
            String newPassword = Integer.toString((int) (Math.random() * 1000000));
            String code = UUID.randomUUID().toString();
            String name = user.getUsername();
            String url = "http://localhost:8080/reset-password?code=" + code + "&new-password=" + newPassword;
            String content = "Xin chào " + name + ",\n " +
                    "\n" +
                    "Bạn đã yêu cầu đặt lại mật khẩu cho tài khoản của bạn trên CoffeeShop.\n" +
                    "\n" +
                    "Mật khẩu mới của bạn là: " + newPassword + "\n" +
                    "\n" +
                    "Đường link để xác nhận đặt lại mật khẩu: " + url +
                    "\n" +
                    "Nếu bạn không yêu cầu đặt lại mật khẩu, vui lòng bỏ qua email này.\n" +
                    "\n" +
                    "Trân trọng,\n" +
                    "\n" +
                    "CoffeeShop Team";
            mailService.sendMail(email, subject, content);
            verifyEmailService.insertVerifyEmail(user.getId(), code, type);
            request.setAttribute("message", "Please check your email to reset password");
            request.getRequestDispatcher("/views/web/forget-password.jsp").forward(request, response);
        }
    }
}
