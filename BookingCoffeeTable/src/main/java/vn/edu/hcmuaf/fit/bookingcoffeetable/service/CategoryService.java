package vn.edu.hcmuaf.fit.bookingcoffeetable.service;

import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Category;
import vn.edu.hcmuaf.fit.bookingcoffeetable.dao.CategoryDAO;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.JDBIConnector;

import java.util.List;

public class CategoryService {
    private static CategoryService instance;
    private static CategoryDAO categoryDAO;

    public static CategoryService getInstance() {
        if (instance == null) {
            Jdbi jdbi = JDBIConnector.get();
            jdbi.installPlugin(new org.jdbi.v3.sqlobject.SqlObjectPlugin());
            categoryDAO = jdbi.onDemand(CategoryDAO.class);
            instance = new CategoryService(categoryDAO);
        }
        return instance;
    }

    public CategoryService(CategoryDAO categoryDAO) {
        this.categoryDAO = categoryDAO;
    }

    public void insertCategory(String name, int status, String image) {
        categoryDAO.insertCategory(name, status, image);
    }

    public List<Category> findAllCategory() {
        return categoryDAO.findAllCategory();
    }

    public List<Category> findNCategory(int limit) {
        return categoryDAO.findNCategory(limit);
    }

    public Category findOne(int id) {
        List<Category> categories = categoryDAO.findOne(id);
        if (!categories.isEmpty()) {
            return categories.get(0);
        }
        return null;
    }

}
