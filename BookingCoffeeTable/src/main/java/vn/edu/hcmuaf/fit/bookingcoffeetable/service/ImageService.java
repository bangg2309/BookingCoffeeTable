package vn.edu.hcmuaf.fit.bookingcoffeetable.service;

import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Image;
import vn.edu.hcmuaf.fit.bookingcoffeetable.dao.ImageDAO;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.JDBIConnector;

import java.util.List;

public class ImageService {
    private static ImageService instance;
    private static ImageDAO imageDAO;

    public static ImageService getInstance() {
        if (instance == null) {
            Jdbi jdbi = JDBIConnector.get();
            jdbi.installPlugin(new org.jdbi.v3.sqlobject.SqlObjectPlugin());
            imageDAO = jdbi.onDemand(ImageDAO.class);
            instance = new ImageService(imageDAO);
        }
        return instance;
    }

    public ImageService(ImageDAO imageDAO) {
        this.imageDAO = imageDAO;
    }

    public Image findById(int id) {
        return imageDAO.findByIdImage(id);
    }

    public Image saveImage(Image image) {
        imageDAO.saveImage(image.getProductId(), image.getUrl());
        return findById(image.getId());
    }

    public Image updateImage(Image image) {
        imageDAO.updateImage(image.getId(), image.getProductId(), image.getUrl());
        return findById(image.getId());
    }

    public void delete(int id) {
        imageDAO.delete(id);
    }

    public List<Image> findByProductId(int id) {
        return imageDAO.findById(id);
    }

}
