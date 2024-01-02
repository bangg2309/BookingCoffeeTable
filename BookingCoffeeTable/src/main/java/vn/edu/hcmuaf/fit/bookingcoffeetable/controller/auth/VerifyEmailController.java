package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.auth;

import vn.edu.hcmuaf.fit.bookingcoffeetable.service.UserService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.VerifyEmailService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "VerifyEmailController", value = "/verify")
public class VerifyEmailController extends HttpServlet {
    VerifyEmailService verifyEmailService;
    UserService userService;

    public VerifyEmailController() {
        verifyEmailService = VerifyEmailService.getInstance();
        userService = UserService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String verificationCode = request.getParameter("code");
        if (verificationCode == null) {
            request.getRequestDispatcher("/views/web/email-verify.jsp").forward(request, response);
        } else {
            int userId = verifyEmailService.selectVerifyEmailByCode(verificationCode).getUserId();
            userService.updateEmailVerifiedById(userId);
            HttpSession registerSession = request.getSession();
            registerSession.setAttribute("registerSession", "Register successfully");
            response.sendRedirect(request.getContextPath() + "/login");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
