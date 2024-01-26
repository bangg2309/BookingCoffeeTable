package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.api.admin;

import com.google.gson.Gson;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Area;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Reservation;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Table;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.User;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.*;

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
@WebServlet(name = "TableAPI", value = "/api/admin/table")
public class TableAPI extends HttpServlet {
    TableService tableService;
    AreaService areaService;
    ReservationService reservationService;

    public TableAPI() {
        areaService = AreaService.getInstance();
        tableService = TableService.getInstance();
        reservationService = ReservationService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Gson gson = new Gson();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        String numberTable = request.getParameter("numberTable");
        String seatCount = request.getParameter("seatCount");
        String areaId = request.getParameter("areaId");
        String location = request.getParameter("location");
        String status = request.getParameter("status");
        Table table = new Table();
        table.setTableNum(Integer.parseInt(numberTable));
        table.setSeatCount(Integer.parseInt(seatCount));
        System.out.println("area " + areaId);
        table.setAreaId(Integer.parseInt(areaId));
        table.setLocation(location);
        table.setStatus(Integer.parseInt(status));
        // Xử lý tải lên hình ảnh avatar
        Part filePart = request.getPart("avatar");
        String fileName = "default.svg";
        if (filePart != null && filePart.getSize() > 0 && filePart.getSubmittedFileName() != null) {
            String rootPath = request.getServletContext().getRealPath("/views/template/custom/image/avatar");
            fileName = filePart.getSubmittedFileName();
            filePart.write(rootPath + File.separator + fileName);
        }
        table.setImage("/views/template/custom/image/table/" + fileName);
        System.out.println(table);
        table = tableService.save(table);
        gson.toJson(table, response.getWriter());
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Gson gson = new Gson();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        String tableId = request.getParameter("id");
        String numberTable = request.getParameter("numberTable");
        String seatCount = request.getParameter("seatCount");
        String areaId = request.getParameter("areaId");
        String location = request.getParameter("location");
        Table table = new Table();
        String status = request.getParameter("status");
        table.setTableNum(Integer.parseInt(numberTable));
        table.setSeatCount(Integer.parseInt(seatCount));
        table.setLocation(location);
        table.setArea(areaService.findById(Integer.parseInt(areaId)));
        table.setStatus(Integer.parseInt(status));
        table.setId(Integer.parseInt(tableId));
        // Xử lý tải lên hình ảnh avatar
        Part filePart = request.getPart("avatar");
        String fileName = "default.svg";
        if (filePart != null && filePart.getSize() > 0 && filePart.getSubmittedFileName() != null) {
            String rootPath = request.getServletContext().getRealPath("/views/template/custom/image/table");
            fileName = filePart.getSubmittedFileName();
            filePart.write(rootPath + File.separator + fileName);
        }
        table.setImage("/views/template/custom/image/avatar/" + fileName);
        table = tableService.updateTable(table);
        gson.toJson(table, response.getWriter());
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Gson gson = new Gson();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Table table = gson.fromJson(request.getReader(), Table.class);
        Area area = gson.fromJson(request.getReader(), Area.class);
        Reservation reservation = gson.fromJson(request.getReader(), Reservation.class);
        if (reservation == null){
            reservationService.deleteByTableId(table.getId());
        }

        tableService.deleteTable(table.getId());
        gson.toJson("{}", response.getWriter());
    }
}
