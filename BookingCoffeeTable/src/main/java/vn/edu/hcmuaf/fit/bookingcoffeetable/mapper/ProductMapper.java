package vn.edu.hcmuaf.fit.bookingcoffeetable.mapper;

import org.jdbi.v3.core.mapper.RowMapper;
import org.jdbi.v3.core.statement.StatementContext;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Image;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Product;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductMapper implements RowMapper<Product> {
    public ProductMapper() {

    }

    @Override
    public Product map(ResultSet rs, StatementContext ctx) {
        Product product = null;
        try {
            product = new Product();
            if (columnExists(rs, "id"))
                product.setId(rs.getInt("id"));

            if (columnExists(rs, "name")) {
                product.setName(rs.getString("name"));
            }
            if (columnExists(rs, "categoryId")) {
                product.setCategoryId(rs.getInt("categoryId"));
            }
            if (columnExists(rs, "description")) {
                product.setDescription(rs.getString("description"));
            }
            if (columnExists(rs, "price")) {
                product.setPrice(rs.getInt("price"));
            }
            if (columnExists(rs, "status")) {
                product.setStatus(rs.getInt("status"));
            }
            if (columnExists(rs, "discount")) {
                product.setDiscount(rs.getInt("discount"));
            }
//            if (columnExists(rs, "createdDate")) {
//                product.setCreatedDate(rs.getTimestamp("createdDate"));
//            }

            List<Image> images = new ArrayList<>();
            do {
                Image image = new Image();
                image.setId(rs.getInt("image_id"));
                image.setProductId(rs.getInt("productId"));
                image.setUrl(rs.getString("url"));
                images.add(image);
            }
            while (rs.next() && rs.getInt("id") == product.getId());
            product.setImages(images);

        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(product);
        return product;
    }


    private boolean columnExists(ResultSet rs, String columnName) throws SQLException {
        try {
            rs.findColumn(columnName);
            return true;
        } catch (SQLException e) {
            return false;
        }
    }


}