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
    @SqlQuery(QUERIES.USER.findById)
    User getUserById(@Bind("id") int id);

    @SqlQuery(QUERIES.USER.findByUser)
    List<User> findByUser(@Bind("username") String username);
    @SqlQuery(QUERIES.USER.findByEmail)
    List<User> findByEmail(@Bind("email") String email);

    @SqlUpdate(QUERIES.USER.register)
    void register(@Bind("username") String username, @Bind("password") String password, @Bind("email") String email, @Bind("phone") String phone);

    @SqlQuery(QUERIES.USER.findByUserNameAndPassword)
    List<User> findByUserNameAndPassword(@Bind("username") String username, @Bind("password") String password);


}
