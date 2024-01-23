package vn.edu.hcmuaf.fit.bookingcoffeetable.dao;

import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.customizer.BindMethods;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Contact;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Review;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.QUERIES;

import java.util.List;

@RegisterBeanMapper(Contact.class)
public interface ContactDAO {
    @SqlQuery(QUERIES.CONTACT.FIND_ALL_CONTACT)
    List<Contact> findAllContact();

    @SqlUpdate(QUERIES.CONTACT.DELETE_CONTACT)
    void deleteContact(@Bind("id") int id);

    @SqlUpdate(QUERIES.CONTACT.SAVE)
    void save(@Bind("fullname") String fullname, @Bind("email") String email, @Bind("phone") String phone, @Bind("subject") String subject, @Bind("content") String content);
}
