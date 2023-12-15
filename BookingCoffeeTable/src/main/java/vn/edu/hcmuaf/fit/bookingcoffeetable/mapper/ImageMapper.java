package vn.edu.hcmuaf.fit.bookingcoffeetable.mapper;

import org.jdbi.v3.core.mapper.RowMapper;
import org.jdbi.v3.core.statement.StatementContext;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Image;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ImageMapper implements RowMapper<Image> {
    @Override
    public Image map(ResultSet rs, StatementContext ctx) throws SQLException {
        Image image = new Image();
        image.setId(rs.getInt("image_id"));
        image.setProductId(rs.getInt("productId"));
        image.setUrl(rs.getString("url"));
        return image;
    }
}
