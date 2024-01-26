package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.admin.contact;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Contact;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.ContactService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminContactController", value = "/admin/contact-management")
public class ContactController extends HttpServlet {
    ContactService contactService;

    public ContactController() {
        contactService = ContactService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Contact> contacts = contactService.findAllContact();
        request.setAttribute("contacts", contacts);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/admin/contact-management.jsp");
        requestDispatcher.forward(request, response);

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String content = request.getParameter("content");
        contactService.replyEmail(email, subject, content);
        response.sendRedirect(request.getContextPath() + "/admin/contact-management");
    }
}
