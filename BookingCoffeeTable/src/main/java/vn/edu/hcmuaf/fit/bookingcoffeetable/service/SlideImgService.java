package vn.edu.hcmuaf.fit.bookingcoffeetable.service;

import org.jdbi.v3.sqlobject.SqlObjectPlugin;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.SlideImg;
import vn.edu.hcmuaf.fit.bookingcoffeetable.dao.SlideImgDAO;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.JDBIConnector;

import java.util.List;

public class SlideImgService {
    private static SlideImgService instance;
    private static SlideImgDAO slideImgDAO;

    public static SlideImgService getInstance() {
        if (instance == null) {
            slideImgDAO = JDBIConnector.get().installPlugin(new SqlObjectPlugin()).onDemand(SlideImgDAO.class);
            instance = new SlideImgService(slideImgDAO);

        }
        return instance;
    }
    private SlideImgService(SlideImgDAO slideImgDAO) {
        this.slideImgDAO = slideImgDAO;
    }
    public List<SlideImg> getImgSlide(){
        return slideImgDAO.getImgSlide();

    }

}
