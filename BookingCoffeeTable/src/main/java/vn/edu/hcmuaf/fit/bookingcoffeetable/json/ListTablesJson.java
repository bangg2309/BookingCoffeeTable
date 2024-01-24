package vn.edu.hcmuaf.fit.bookingcoffeetable.json;

import com.google.gson.Gson;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Table;
import vn.edu.hcmuaf.fit.bookingcoffeetable.paging.PageRequest;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.TableService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "table-json", urlPatterns = {"/tables"}, initParams = {
        @WebInitParam(name = "page-index", value = "1"),
        @WebInitParam(name = "per-page", value = "9")
})
public class ListTablesJson extends HttpServlet {
    private TableService tableService;
    private List<Table> tables;
    private String json;
    private double fromPrice = 0, toPrice = 100;
    int pageIndexNum = 1;
    int perPageNum = 9;

    int countNum = 0;

    int areaValue = 0;
    String area = null;

    PageRequest pageRequest = null;

    public ListTablesJson() {
        tableService = TableService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");

        // Receive request page-index and per-page
        String pageIndex = request.getParameter("page-index");
        String perPage = request.getParameter("per-page");
        String count = request.getParameter("count");
        String find = request.getParameter("text");
        String startTime = request.getParameter("startTime");
        String endTime = request.getParameter("endTime");
        area = request.getParameter("areaValue");

        try {
            pageIndexNum = Integer.parseInt(pageIndex);
            perPageNum = Integer.parseInt(perPage);
            if (area.equals("0")) {
                area = null;
            }
            if (count != null && !count.equals("")) {
                countNum = Integer.parseInt(count);
            }

            pageRequest = new PageRequest(pageIndexNum, perPageNum);
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        System.out.println(startTime + " " + endTime);
        // Fetch tables directly without using a separate thread
        tables = tableService.getTables(area, startTime, endTime, countNum, find, pageRequest.getLimit(), pageRequest.getOffset());

        if (tables != null) {
            json = new Gson().toJson(tables);
            PrintWriter out = response.getWriter();
            try {
                out.println(json);
            } finally {
                out.close();
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
