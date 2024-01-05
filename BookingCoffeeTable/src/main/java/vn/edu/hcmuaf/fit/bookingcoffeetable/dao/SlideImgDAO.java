package vn.edu.hcmuaf.fit.bookingcoffeetable.dao;

import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.SlideImg;

import java.util.List;

@RegisterBeanMapper(SlideImg.class)
public interface SlideImgDAO {
    @SqlQuery("SELECT * FROM slide")
    List<SlideImg> getImgSlide();



}
