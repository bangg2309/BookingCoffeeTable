package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.web;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Area;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Table;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.QUERIES;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.AreaService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.TableService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.List;

@WebServlet(name = "TableController", value = "/table")
public class TableController extends HttpServlet {
    TableService tableService;
    AreaService areaService;

    public TableController() {
        tableService = TableService.getInstance();
        areaService = AreaService.getInstance();

    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        List<Table> tables = tableService.findAllTables();
//        request.setAttribute("tables", tables);
        List<Area> areas = areaService.findAllArea();
        request.setAttribute("areas", areas);


        String pageParameter = request.getParameter("page");
        int currentPage = 1;  // Giá trị mặc định hoặc bất kỳ giá trị mặc định phù hợp nào khác
        if (pageParameter != null && !pageParameter.isEmpty()) {
            try {
                currentPage = Integer.parseInt(pageParameter);
            } catch (NumberFormatException e) {
                // Xử lý ngoại lệ (ví dụ: ghi log hoặc cung cấp giá trị mặc định)
                e.printStackTrace(); // hoặc logger.error(e.getMessage(), e);
            }
        }

        int recordsPerPage = 9;
        int offset = (currentPage - 1) * recordsPerPage;
        List<Table> tables = tableService.pageTable(recordsPerPage, offset);
        request.setAttribute("tables", tables);
        // Sử dụng JDBC để truy vấn cơ sở dữ liệu và lấy dữ liệu
        // Đặt dữ liệu vào request
        request.setAttribute("dataList", tables);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("totalPages", calculateTotalPages(recordsPerPage));
//        List<Image> images = productService.findImageById();
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/web/table.jsp");
        requestDispatcher.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    public int calculateTotalPages(int recordsPerPage) {
        int totalRecords = tableService.findAllTables().size(); // Lấy tổng số bản ghi từ cơ sở dữ liệu
        return (int) Math.ceil((double) totalRecords / recordsPerPage);
    }


}
