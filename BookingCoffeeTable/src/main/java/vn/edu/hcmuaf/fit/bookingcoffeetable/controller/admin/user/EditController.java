package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.admin.user;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.User;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.RoleService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditUserController", value = "/admin/user-management/edit")
public class EditController extends HttpServlet {
    UserService userService;
    RoleService roleService;

    public EditController() {
        userService = UserService.getInstance();
        roleService = RoleService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        request.setAttribute("roles", roleService.findAll());
        if (id != null) {
            User user = userService.findById(Integer.parseInt(id));
            request.setAttribute("user", user);
        }
        request.getRequestDispatcher("/views/admin/user-addition.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
