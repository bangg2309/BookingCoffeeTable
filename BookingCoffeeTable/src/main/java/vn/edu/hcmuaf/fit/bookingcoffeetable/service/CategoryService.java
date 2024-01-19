package vn.edu.hcmuaf.fit.bookingcoffeetable.service;

import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Category;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.User;
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

    public Category findByUserName(String name) {
        List<Category> categories = categoryDAO.findByUser(name);
        if (categories.isEmpty()) return null;
        return categories.get(0);
    }

    public Category SAVE(Category category) {
        categoryDAO.SAVE(category.getName(), category.getStatus(), category.getImage());
        return findByUserName(category.getName());
    }

    public Category UPDATE(Category category) {
        categoryDAO.UPDATE(category.getId(), category.getName(), category.getStatus(), category.getImage());
        return findByUserName(category.getName());
    }

    public void DELETE(int id) {
        categoryDAO.DELETE(id);
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

    public Category findById(int id) {
        return categoryDAO.findById(id);
    }

    public List<Category> findCategory() {
        return categoryDAO.findCategory();
    }

    public static void main(String[] args) {
        CategoryService categoryService = CategoryService.getInstance();
        List<Category> categories = categoryService.findCategory();
        System.out.println(categories);
    }

}
