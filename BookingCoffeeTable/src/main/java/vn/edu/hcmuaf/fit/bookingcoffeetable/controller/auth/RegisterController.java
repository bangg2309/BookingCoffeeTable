package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.auth;

import vn.edu.hcmuaf.fit.bookingcoffeetable.service.MailService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.UserService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.VerifyEmailService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.UUID;

@WebServlet(name = "RegisterController", value = "/register")
public class RegisterController extends HttpServlet {
    UserService userService;
    MailService mailService;
    VerifyEmailService verifyEmailService;

    public RegisterController() {
        userService = UserService.getInstance();
        mailService = MailService.getInstance();
        verifyEmailService = VerifyEmailService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/views/web/register.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String pass = request.getParameter("pass");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String confirm = request.getParameter("confirmPassword");
        String type = "register";
        String verifyCode = UUID.randomUUID().toString();


        int result = userService.register(username, pass, email, phone, confirm);
        if (result == 0) {
            int userId = userService.findByUserName(username).getId();
            verifyEmailService.insertVerifyEmail(userId, verifyCode, type);
            mailService.sendVerificationMail("http://localhost:8080", email, verifyCode);

            response.sendRedirect(request.getContextPath() + "/verify");
        } else if (result == 1) {
            request.setAttribute("error", "Username is already exist");
            request.getRequestDispatcher("/views/web/register.jsp").forward(request, response);
        } else if (result == 2) {
            request.setAttribute("error", "Email is already exist");
            request.getRequestDispatcher("/views/web/register.jsp").forward(request, response);
        } else if (result == 3) {
            request.setAttribute("error", "Password and confirm password is not match");
        }
    }
}
