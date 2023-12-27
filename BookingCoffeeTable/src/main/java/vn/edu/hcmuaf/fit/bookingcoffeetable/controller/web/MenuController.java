package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.web;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Category;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Product;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.CategoryService;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "MenuController", value = "/menu")
public class MenuController extends HttpServlet {
    ProductService productService;
    CategoryService categoryService;

    public MenuController() {
        productService = ProductService.getInstance();
        categoryService = CategoryService.getInstance();

    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Category> categories = categoryService.findAllCategory();
        request.setAttribute("categories", categories);

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
//        List<Product> products = productService.findAllProductsOffset(recordsPerPage, offset);
        List<Product> products = productService.findAllProducts();
        request.setAttribute("products", products);
        // Sử dụng JDBC để truy vấn cơ sở dữ liệu và lấy dữ liệu
        // Đặt dữ liệu vào request
        request.setAttribute("dataList", products);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("totalPages", calculateTotalPages(recordsPerPage));

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/web/menu.jsp");
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    public int calculateTotalPages(int recordsPerPage) {
        int totalRecords = productService.findAllProducts().size(); // Lấy tổng số bản ghi từ cơ sở dữ liệu
        System.out.println(totalRecords);
        return (int) Math.ceil((double) totalRecords / recordsPerPage);
    }


}
