package vn.edu.hcmuaf.fit.bookingcoffeetable.dao;

import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.VerifyEmail;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.QUERIES;

import java.util.List;

@RegisterBeanMapper(VerifyEmail.class)
public interface VerifyEmailDAO {
    @SqlUpdate(QUERIES.VERIFY_EMAIL.INSERT_VERIFY_EMAIL)
    void insertVerifyEmail(@Bind("userId") int userId, @Bind("code") String code);

    @SqlQuery(QUERIES.VERIFY_EMAIL.SELECT_VERIFY_EMAIL_BY_CODE)
    List<VerifyEmail> selectVerifyEmailByCode(@Bind("code") String code);

    @SqlQuery(QUERIES.VERIFY_EMAIL.SELECT_VERIFY_EMAIL_BY_USER_ID)
    List<VerifyEmail> selectVerifyEmailByUserId(@Bind("userId") int userId);

    @SqlUpdate(QUERIES.VERIFY_EMAIL.DELETE)
    void delete(@Bind("id") int id);
}
