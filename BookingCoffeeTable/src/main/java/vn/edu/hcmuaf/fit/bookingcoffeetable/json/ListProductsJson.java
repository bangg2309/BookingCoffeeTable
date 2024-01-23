package vn.edu.hcmuaf.fit.bookingcoffeetable.json;

import com.google.gson.Gson;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Product;
import vn.edu.hcmuaf.fit.bookingcoffeetable.paging.PageRequest;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "product-json", urlPatterns = {"/menus"}, initParams = {
        @WebInitParam(name = "page-index", value = "1"),
        @WebInitParam(name = "per-page", value = "9")
})
public class ListProductsJson extends HttpServlet {
    private ProductService productService;
    private List<Product> products;
    private String json;

    int pageIndexNum = 1;
    int perPageNum = 9;

    int countNum = 0;
    int from = 0;
    int to = 1000000;

    String category = null;

    PageRequest pageRequest = null;

    public ListProductsJson() {
        productService = ProductService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        // Receive request page-index and per-page
        String pageIndex = request.getParameter("page-index");
        String perPage = request.getParameter("per-page");
        String find = request.getParameter("find");
        String orderBy = request.getParameter("orderBy");
        String ratingValue = request.getParameter("ratingValue");
        String fromPriceStr = request.getParameter("firstPrice");
        String toPriceStr = request.getParameter("secondPrice");
        category = request.getParameter("categoryValue");


        try {
            pageIndexNum = Integer.parseInt(pageIndex);
            perPageNum = Integer.parseInt(perPage);
            from = Integer.parseInt(fromPriceStr);
            to = Integer.parseInt(toPriceStr);
            if (category.equals("0")) {
                category = null;
            }

            pageRequest = new PageRequest(pageIndexNum, perPageNum);
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }



        // Fetch tables directly without using a separate thread
        products = productService.getProducts(category, find, pageRequest.getLimit(), pageRequest.getOffset(), orderBy, ratingValue, from, to);
        System.out.println("product"+products);

        if (products != null) {
            json = new Gson().toJson(products);
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
