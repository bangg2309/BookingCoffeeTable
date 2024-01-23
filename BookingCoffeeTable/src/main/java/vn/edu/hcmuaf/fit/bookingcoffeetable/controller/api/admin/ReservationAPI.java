package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.api.admin;

import com.google.gson.Gson;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Reservation;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.ReservationProduct;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Table;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.AreaService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.ReservationProductService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.ReservationService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.TableService;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;

@MultipartConfig
@WebServlet(name = "ReservationAPI", value = "/api/admin/reservation")
public class ReservationAPI extends HttpServlet {
    ReservationService reservationService;
    AreaService areaService;
    ReservationProductService reservationProductService;

    public ReservationAPI() {
        areaService = AreaService.getInstance();
        reservationService = ReservationService.getInstance();
        reservationProductService = ReservationProductService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Gson gson = new Gson();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");

        String userID = request.getParameter("userID");
        String tableNum = request.getParameter("tableNum");
        String filterDate = request.getParameter("filterDate");
        String filterStartTime = request.getParameter("filterStartTime");
        String filterEndTime = request.getParameter("filterEndTime");
        String paymentMethod = request.getParameter("paymentMethod");
        String totalPrice = request.getParameter("totalPrice");
        String status = request.getParameter("status");
        Reservation reservation = new Reservation();
        reservation.setUserId(Integer.parseInt(userID));
        reservation.setTableId(Integer.parseInt(tableNum));

        reservation.setStartTime(filterDate + " " + filterStartTime);
        reservation.setEndTime(filterDate + " " + filterEndTime);
//        reservation.setTotalPrice(totalCost);

        System.out.println(reservation);
        reservation = reservationService.save(reservation);
        gson.toJson(reservation, response.getWriter());
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Gson gson = new Gson();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        String reservationId = request.getParameter("id");
        String username = request.getParameter("username");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String userId = request.getParameter("userId");
        String tableNum = request.getParameter("tableNum");
        String filterDate = request.getParameter("filterDate");
        String filterStartTime = request.getParameter("filterStartTime");
        String filterEndTime = request.getParameter("filterEndTime");
        String paymentMethod = request.getParameter("paymentMethod");
        String totalPrice = request.getParameter("totalPrice");
        String status = request.getParameter("status");
        Reservation reservation = new Reservation();
        reservation.setId(Integer.parseInt(reservationId));
        reservation.setContactName(username);
        reservation.setContactPhone(Integer.parseInt(phone));
        reservation.setContactEmail(email);
        reservation.setUserId(Integer.parseInt(userId));
        reservation.setTableId(Integer.parseInt(tableNum));
        reservation.setCreatedDate(filterDate);
        reservation.setStartTime(filterDate + " " + filterStartTime);
        reservation.setEndTime(filterDate + " " + filterEndTime);
        reservation.setPaymentMethod(paymentMethod);
        reservation.setTotalPrice(Double.parseDouble(totalPrice));
        reservation.setStatus(Integer.parseInt(status));
        System.out.println(Integer.parseInt(status));
        System.out.println(reservation);
        reservation = reservationService.update(reservation);
        gson.toJson(reservation, response.getWriter());
        System.out.println(reservation);
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Gson gson = new Gson();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Reservation reservation = gson.fromJson(request.getReader(), Reservation.class);
        ReservationProduct reservationProduct = gson.fromJson(request.getReader(), ReservationProduct.class);
        reservationProductService.delete(reservation.getId());
        reservationService.deleteReservation(reservation.getId());
        gson.toJson("{}", response.getWriter());
    }
}
