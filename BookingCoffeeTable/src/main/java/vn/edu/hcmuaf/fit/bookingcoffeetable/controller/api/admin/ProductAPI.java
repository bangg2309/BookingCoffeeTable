package vn.edu.hcmuaf.fit.bookingcoffeetable.controller.api.admin;

import com.google.gson.Gson;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.*;
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
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@MultipartConfig
@WebServlet(name = "ProductAPI", value = "/api/admin/product")
public class ProductAPI extends HttpServlet {
    ProductService productService;
    ProductVariantService productVariantService;

    ImageService imageService;
    ReviewService reviewService;

    public ProductAPI() {
        productVariantService = ProductVariantService.getInstance();
        productService = ProductService.getInstance();
        imageService = ImageService.getInstance();
        reviewService = ReviewService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Gson gson = new Gson();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        String name = request.getParameter("name");
        String price = request.getParameter("price");
        String categoryId = request.getParameter("category");
        String discount = request.getParameter("discount");
        String status = request.getParameter("status");
        String description = request.getParameter("description");
        String size = request.getParameter("size");
        String[] sizes = request.getParameterValues("size[]");
        String[] prices = request.getParameterValues("price[]");
        ProductVariant productVariant = new ProductVariant();


        Product product = new Product();
        product.setName(name);
        product.setPrice(Integer.parseInt(price));
        product.setCategoryId(Integer.parseInt(categoryId));
        product.setDiscount(Integer.parseInt(discount));
        product.setStatus(Integer.parseInt(status));
        product.setDescription(description);

        product = productService.saveProduct(product);
        int idProduct = productService.getByName(name);
        List<ProductVariant> productVariants = new ArrayList<>();
        if (sizes != null && prices != null && sizes.length == prices.length) {
            for (int i = 0; i < sizes.length; i++) {
                String sizeVariant = sizes[i];
                String priceVariant = prices[i];
                productVariant.setSize(sizeVariant);
                productVariant.setProductId(idProduct);
                if (priceVariant.equals("")) {
                    productVariant.setPricePlus(0);
                } else {
                    productVariant.setPricePlus(Integer.parseInt(priceVariant));
                }
                productVariant = productVariantService.saveProductVariant(productVariant);
                productVariants.add(productVariant);
            }
        } else {
            // Xử lý trường hợp không có dữ liệu hoặc dữ liệu không tương thích
        }


        List<String> fileNames = new ArrayList<>(); // Danh sách để lưu các tên file
        Collection<Part> fileParts = request.getParts(); // Lấy danh sách các phần từ request
        for (Part filePart : fileParts) {
            System.out.println(filePart.getName());
            if ("image".equals(filePart.getName())) { // Kiểm tra phần có tên là "images"
                String fileName = filePart.getSubmittedFileName();
                if (fileName != null && !fileName.isEmpty()) {
                    String rootPath = request.getServletContext().getRealPath("/views/template/custom/image/menu");
                    String filePath = rootPath + File.separator + fileName;

                    try {
                        // Tạo thư mục lưu trữ nếu chưa tồn tại
                        File uploadDir = new File(rootPath);
                        if (!uploadDir.exists()) {
                            uploadDir.mkdirs();
                        }

                        // Lưu file vào thư mục lưu trữ với tên gốc
                        filePart.write(filePath);
                        fileNames.add("/views/template/custom/image/menu/" + fileName);
                    } catch (IOException e) {
                        // Xử lý ngoại lệ khi không thể lưu file
                        e.printStackTrace();
                    }
                }
            }
        }

        Image image = null;
        for (String fileName : fileNames) {
            image = new Image(idProduct, fileName);
            image = imageService.saveImage(image);
        }

        gson.toJson(product, response.getWriter());
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Gson gson = new Gson();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        String count = request.getParameter("id");

        String name = request.getParameter("name");
        String price = request.getParameter("price");
        String categoryId = request.getParameter("category");
        String discount = request.getParameter("discount");
        String status = request.getParameter("status");
        String description = request.getParameter("description");
        String image = request.getParameter("image");
        String size = request.getParameter("size");
        String[] sizes = request.getParameterValues("size[]");
        String[] prices = request.getParameterValues("price[]");
        ProductVariant productVariant = new ProductVariant();
        int variant = productService.findOne(Integer.parseInt(count)).getProductVariants().size();
        List<ProductVariant> productVariants = new ArrayList<>();
        if (sizes != null && prices != null && sizes.length == prices.length) {
            if (sizes.length == variant) {
                for (int i = 0; i < sizes.length; i++) {
                    String sizeVariant = sizes[i];
                    String priceVariant = prices[i];
                    productVariant.setProductId(Integer.parseInt(count));
                    productVariant.setSize(sizeVariant);
                    System.out.println(sizeVariant);
                    productVariant.setPricePlus(Integer.parseInt(priceVariant));
                    System.out.println(priceVariant);
                    productVariants.add(productVariant);
                    productVariantService.updateProductVariant(productVariant, sizeVariant);
                    // Xử lý các giá trị kích thước và giá tiền ở đây
                    System.out.println("Size: " + size + ", Price: " + price);
                }
            } else if (sizes.length > variant) {

                for (int k = sizes.length - variant - 1; k < sizes.length; k++) {
                    String sizeVariant = sizes[k];
                    String priceVariant = prices[k];
                    productVariant.setProductId(Integer.parseInt(count));
                    productVariant.setSize(sizeVariant);
                    System.out.println(sizeVariant);
                    productVariant.setPricePlus(Integer.parseInt(priceVariant));
                    System.out.println(priceVariant);
                    productVariants.add(productVariant);
                    productVariantService.saveProductVariant(productVariant);
                    // Xử lý các giá trị kích thước và giá tiền ở đây
                    System.out.println("Size: " + size + ", Price: " + price);
                }
            } else if (sizes.length < variant) {
                productVariantService.deleteProductVariant(Integer.parseInt(count));
                for (int i = 0; i < sizes.length; i++) {
                    String sizeVariant = sizes[i];
                    String priceVariant = prices[i];
                    productVariant.setProductId(Integer.parseInt(count));
                    productVariant.setSize(sizeVariant);
                    System.out.println(sizeVariant);
                    productVariant.setPricePlus(Integer.parseInt(priceVariant));
                    System.out.println(priceVariant);
                    productVariants.add(productVariant);
                    productVariantService.saveProductVariant(productVariant);
                    // Xử lý các giá trị kích thước và giá tiền ở đây
                    System.out.println("Size: " + size + ", Price: " + price);
                }

            }
        } else {
            // Xử lý trường hợp không có dữ liệu hoặc dữ liệu không tương thích
        }

        Product product = new Product();
        product.setName(name);
        product.setPrice(Integer.parseInt(price));
        product.setCategoryId(Integer.parseInt(categoryId));
        product.setDiscount(Integer.parseInt(discount));
        product.setStatus(Integer.parseInt(status));
        product.setDescription(description);
        product.setProductVariants(productVariants);
        List<String> fileNames = new ArrayList<>(); // Danh sách để lưu các tên file

        Collection<Part> fileParts = request.getParts(); // Lấy danh sách các phần từ request

        for (Part filePart : fileParts) {
            if ("images".equals(filePart.getName())) { // Kiểm tra phần có tên là "images"
                String fileName = filePart.getSubmittedFileName();
                if (fileName != null && !fileName.isEmpty()) {
                    String rootPath = "/views/template/custom/image/menu/"; // Thay đổi đường dẫn thư mục lưu trữ của bạn
                    String filePath = rootPath + File.separator + fileName;

                    try {
                        // Tạo thư mục lưu trữ nếu chưa tồn tại
                        File uploadDir = new File(rootPath);
                        if (!uploadDir.exists()) {
                            uploadDir.mkdirs();
                        }

                        // Lưu file vào thư mục lưu trữ với tên gốc
                        filePart.write(filePath);
                        fileNames.add(filePath); // Thêm đường dẫn file vào danh sách
                    } catch (IOException e) {
                        // Xử lý ngoại lệ khi không thể lưu file
                        e.printStackTrace();
                    }
                }
            }
        }
        product.setId(Integer.parseInt(count));
        List<Image> images = new ArrayList<>();
        for (String fileName : fileNames) {
            Image image1 = new Image();
            image1.setProductId(Integer.parseInt(count));
            image1.setUrl(fileName);
            images.add(image1);
        }
        product.setImages(images);

        product = productService.updateProduct(product);

        gson.toJson(product, response.getWriter());
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Gson gson = new Gson();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Product product = gson.fromJson(request.getReader(), Product.class);
        Review review = gson.fromJson(request.getReader(), Review.class);
        if (review == null) {
            reviewService.delete(product.getId());
        }
        imageService.delete(product.getId());
        productVariantService.delete(product.getId());
        productService.deleteProduct(product.getId());
        gson.toJson("{}", response.getWriter());
    }

}
