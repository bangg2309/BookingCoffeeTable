package vn.edu.hcmuaf.fit.bookingcoffeetable.service;

import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.sqlobject.SqlObjectPlugin;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.User;
import vn.edu.hcmuaf.fit.bookingcoffeetable.dao.UserDAO;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.JDBIConnector;

import java.util.List;

public class UserService {
    private final UserDAO userDao;
    private static UserService instance;

    public UserService(UserDAO userDao) {
        this.userDao = userDao;
    }

    public static UserService getInstance() {
        if (instance == null) {
            // Tạo đối tượng UserDAO từ JDBI
            Jdbi jdbi = JDBIConnector.get();
            jdbi.installPlugin(new SqlObjectPlugin());
            UserDAO userDao = jdbi.onDemand(UserDAO.class);

            // Tạo đối tượng UserService và chuyển đối tượng UserDAO vào
            instance = new UserService(userDao);
        }
        return instance;
    }

    public User getUserById(int id) {
        return userDao.getUserById(id);
    }

    public User findByUserNameAndPassword(String username, String password) {
        List<User> users = userDao.findByUserNameAndPassword(username, password);
        if (users.size() != 1) return null;
        return users.get(0);
    }

    public User findByUserName(String username) {
        List<User> users = userDao.findByUser(username);
        if (users.isEmpty()) return null;
        return users.get(0);
    }

    public User findByEmail(String email) {
        List<User> users = userDao.findByEmail(email);
        if (users.isEmpty()) return null;
        return users.get(0);
    }

    public int register(String username, String password, String email, String phone) {
        User user = null;
        if (findByUserName(username) != null) {
            return 1;
        }
        if (findByEmail(email) != null) {
            return 2;
        }
        userDao.register(username, password, email, phone);
        return 0;
    }

    //Lấy ra tên đầy đủ của một user. Nếu không có tên đầy đủ thì lấy tên đăng nhập. Không có trả về null
    public String getNameById(int id) {
        User user = userDao.getUserById(id);
        if (user.getFullname() != null)
            return user.getFullname();
        else if (user.getUsername() != null)
            return user.getUsername();
        return null;
    }

    public static void main(String[] args) {
        // Tạo đối tượng UserService
        UserService userService = UserService.getInstance();
        System.out.println(userService.findByUserNameAndPassword("quibang", "bang123"));
    }
}
