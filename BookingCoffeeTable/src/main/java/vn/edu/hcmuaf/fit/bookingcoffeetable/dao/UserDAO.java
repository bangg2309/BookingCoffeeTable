package vn.edu.hcmuaf.fit.bookingcoffeetable.dao;

import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.User;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.QUERIES;

import java.util.List;

@RegisterBeanMapper(User.class)
public interface UserDAO {

    @SqlQuery(QUERIES.USER.findAll)
    List<User> findAll();

    @SqlQuery(QUERIES.USER.findById)
    User findById(@Bind("id") int id);

    @SqlQuery(QUERIES.USER.findByUser)
    List<User> findByUser(@Bind("username") String username);

    @SqlQuery(QUERIES.USER.findByEmail)
    List<User> findByEmail(@Bind("email") String email);

    @SqlUpdate(QUERIES.USER.register)
    void register(@Bind("username") String username, @Bind("password") String password, @Bind("email") String email, @Bind("phone") String phone);

    @SqlQuery(QUERIES.USER.findByUserNameAndPassword)
    List<User> findByUserNameAndPassword(@Bind("username") String username, @Bind("password") String password);

    @SqlUpdate(QUERIES.USER.save)
    void save(@Bind("username") String username, @Bind("password") String password, @Bind("fullname") String fullname, @Bind("email") String email, @Bind("phone") String phone,
              @Bind("roleId") int roleId, @Bind("emailVerified") int emailVerified, @Bind("status") int status, @Bind("avatar") String avatar);

    @SqlUpdate(QUERIES.USER.update)
    void update(@Bind("id") int id, @Bind("fullname") String fullname, @Bind("email") String email, @Bind("phone") String phone,
                @Bind("roleId") int roleId, @Bind("emailVerified") int emailVerified, @Bind("status") int status, @Bind("avatar") String avatar);

    @SqlUpdate(QUERIES.USER.delete)
    void delete(@Bind("id") int id);

    @SqlUpdate(QUERIES.USER.updatePassword)
    void updatePassword(@Bind("id") int id, @Bind("password") String password);

    @SqlUpdate(QUERIES.USER.updateProfile)
    void updateProfile(@Bind("id") int id, @Bind("fullname") String fullname, @Bind("email") String email, @Bind("phone") String phone);

    @SqlUpdate(QUERIES.USER.updateEmailVerifiedById)
    void updateEmailVerifiedById(@Bind("id") int id);

    @SqlUpdate(QUERIES.USER.insertByGoogle)
    void insertByGoogle(@Bind("username") String username,@Bind("password") String password, @Bind("fullname") String fullname, @Bind("email") String email,
                        @Bind("roleId") int roleId, @Bind("emailVerified") int emailVerified, @Bind("status") int status, @Bind("avatar") String avatar);
}
