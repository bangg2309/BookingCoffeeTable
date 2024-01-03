package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.admin.table;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Category;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Table;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.AreaService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.CategoryService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.TableService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EditTableController", value = "/admin/table-management/edit")
public class EditController extends HttpServlet {
    TableService tableService;
    AreaService areaService;

    public EditController() {
        areaService = AreaService.getInstance();
        tableService = TableService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        request.setAttribute("areas", areaService.findAllArea());
        if (id != null) {
            Table table = tableService.findById(Integer.parseInt(id));
            request.setAttribute("table", table);
        }
        request.getRequestDispatcher("/views/admin/table-addition.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
