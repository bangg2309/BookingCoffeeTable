package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.web;


import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Area;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Table;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.AreaService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.TableService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "TableController", value = "/table")
public class TableController extends HttpServlet {
    private final TableService tableService = TableService.getInstance();
    private final AreaService areaService = AreaService.getInstance();
    ;
    //    private Map<String, Product> mapPro;
    private List<Table> tables;
    private List<Area> areas;
    private int page = 1;
    private int maxPageItem = 9;
    private int totalItem = -1;
//    private final ICategoryService categoryService = CategoryService.getInstance();
//    private List<Category> categories;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //setup response
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");

        // Calculate totalItem synchronously
        totalItem = Integer.parseInt(tableService.totalItem());

        if (totalItem != -1) {
            // paging attribute setup
            areas = areaService.findAllArea();
            request.setAttribute("areas", areas);
            request.setAttribute("page", page);
            request.setAttribute("totalPage", (int) Math.ceil((double) totalItem / maxPageItem));
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/table.jsp");

            try {
                rd.forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
