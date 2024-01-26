package vn.edu.hcmuaf.fit.bookingcoffeetable.dao;

import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Statistical;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.QUERIES;

import java.util.List;

@RegisterBeanMapper(Statistical.class)
public interface StatisticalDAO {

    @SqlQuery(QUERIES.STATISTICAL.findAll)
    List<Statistical> findAll();
}
