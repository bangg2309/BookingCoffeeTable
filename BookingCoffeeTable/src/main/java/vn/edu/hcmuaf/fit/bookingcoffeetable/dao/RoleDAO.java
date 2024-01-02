package vn.edu.hcmuaf.fit.bookingcoffeetable.dao;

import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Role;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.QUERIES;

import java.util.List;

@RegisterBeanMapper(Role.class)
public interface RoleDAO {
    @SqlQuery(QUERIES.ROLE.findById)
    List<Role> findById(@Bind("id") int id);

    @SqlQuery(QUERIES.ROLE.findAll)
    List<Role> findAll();
}
