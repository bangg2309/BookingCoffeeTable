package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.auth;

import vn.edu.hcmuaf.fit.bookingcoffeetable.service.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RegisterController", value = "/register")
public class RegisterController extends HttpServlet {
    UserService userService;

    public RegisterController() {
        userService = UserService.getInstance();
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



        int result = userService.register(username, pass, email, phone);
        if (result == 1) {
            request.setAttribute("error", "Username is already exist");
            request.getRequestDispatcher("/views/web/register.jsp").forward(request, response);
        } else if (result == 2) {
            request.setAttribute("error", "Email is already exist");
            request.getRequestDispatcher("/views/web/register.jsp").forward(request, response);
        } else {
            response.sendRedirect(request.getContextPath() + "/login");
        }
    }

}
