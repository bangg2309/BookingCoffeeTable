package vn.edu.hcmuaf.fit.bookingcoffeetable.dao;

import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.config.RegisterRowMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;

import org.jdbi.v3.sqlobject.statement.SqlUpdate;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.User;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.QUERIES;
import vn.edu.hcmuaf.fit.bookingcoffeetable.mapper.UserMapper;

import java.util.List;

@RegisterBeanMapper(User.class)
public interface UserDAO {
    @SqlQuery("SELECT users.username, users.password FROM users WHERE id = :id")
    @RegisterRowMapper(UserMapper.class)
    User getUserById(@Bind("id") int id);

    @SqlQuery(QUERIES.User.findByUserNameAndPassword)
    List <User> findByUserNameAndPassword(@Bind("username") String username, @Bind("password") String password);


}
