package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.admin.reservation;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Reservation;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Table;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.AreaService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.ReservationService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.TableService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "EditReservationController", value = "/admin/reservation-management/edit")
public class EditController extends HttpServlet {
    TableService tableService;
    AreaService areaService;
    ReservationService reservationService;

    public EditController() {
        areaService = AreaService.getInstance();
        tableService = TableService.getInstance();
        reservationService = ReservationService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        request.setAttribute("tables", tableService.findAllTables());
        List<String> paymentMethods = new ArrayList<>();
        paymentMethods.add("Momo");
        paymentMethods.add("VnPay");
        paymentMethods.add("Master Card");
        request.setAttribute("paymentMethods", paymentMethods);
        if (id != null) {
            Reservation reservation = reservationService.findById(Integer.parseInt(id));
            request.setAttribute("reservation", reservation);
        }
        request.getRequestDispatcher("/views/admin/reservation-addition.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
