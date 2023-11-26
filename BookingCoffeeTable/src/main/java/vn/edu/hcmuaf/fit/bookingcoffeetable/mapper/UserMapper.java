package vn.edu.hcmuaf.fit.bookingcoffeetable.mapper;

import org.jdbi.v3.core.mapper.RowMapper;
import org.jdbi.v3.core.statement.StatementContext;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.User;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserMapper implements RowMapper<User> {

    @Override
    public User map(ResultSet rs, StatementContext ctx) throws SQLException {
        User user = new User();
//        user.setId(rs.getInt("id"));
        user.setUsername(rs.getString("username"));
        return user;
    }
}
