package vn.edu.hcmuaf.fit.bookingcoffeetable.dao;

import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.config.RegisterRowMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;

import org.jdbi.v3.sqlobject.statement.SqlUpdate;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.User;
import vn.edu.hcmuaf.fit.bookingcoffeetable.mapper.UserMapper;

@RegisterBeanMapper(User.class)
public interface UserDAO {
    @SqlUpdate("INSERT INTO users (roleId, username, password, email, emailVerified, phone, status) VALUES (:roleId, :username, :password, :email, :emailVerified, :phone, :status)")
    void insertUser(@Bind("roleId") int roleId, @Bind("username") String username, @Bind("password") String password, @Bind("email") String email, @Bind("emailVerified") int emailVerified, @Bind("phone") String phone, @Bind("status") int status);


    @SqlQuery("SELECT users.username, users.password FROM users WHERE id = :id")
    @RegisterRowMapper(UserMapper.class)
    User getUserById(@Bind("id") int id);


}
