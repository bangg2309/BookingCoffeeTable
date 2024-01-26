package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.web;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Reservation;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.ReservationService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ReservationDetailController", value = "/reservation-detail")
public class ReservationDetailController extends HttpServlet {
    ReservationService reservationService;

    public ReservationDetailController() {
        reservationService = ReservationService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Reservation reservation = reservationService.findById(Integer.parseInt(id));
        request.setAttribute("reservation", reservation);
        request.getRequestDispatcher("/views/web/reservation-detail.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("reservationId");
        reservationService.cancel(Integer.parseInt(id));
        response.sendRedirect(request.getContextPath() + "/reservation-detail?id=" + id);
    }
}
