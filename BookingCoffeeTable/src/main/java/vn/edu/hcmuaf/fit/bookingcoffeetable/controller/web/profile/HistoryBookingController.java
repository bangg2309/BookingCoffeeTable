package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.web.profile;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Reservation;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.User;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.ReservationService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HistoryBookingController", value = "/history-booking")
public class HistoryBookingController extends HttpServlet {
    ReservationService reservationService;
    public HistoryBookingController() {
        reservationService = ReservationService.getInstance();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("userSession");

        String sortOrder = request.getParameter("sortOrder");
        System.out.println("OrderBy " + sortOrder);

        if (sortOrder == null || sortOrder.isEmpty()) {
            sortOrder = "DESC"; // Mặc định là mới nhất
        }
        System.out.println("OrderBy " + sortOrder);
        List<Reservation> reservations = reservationService.findReservationByUserId(user.getId(), sortOrder);
        request.setAttribute("reservations", reservations);
        request.setAttribute("sortOrder", sortOrder);
        request.getRequestDispatcher("/views/web/history-booking.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
