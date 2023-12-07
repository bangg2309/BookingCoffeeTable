package vn.edu.hcmuaf.fit.bookingcoffeetable.service;

import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.sqlobject.SqlObjectPlugin;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.User;
import vn.edu.hcmuaf.fit.bookingcoffeetable.dao.UserDAO;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.JDBIConnector;
import vn.edu.hcmuaf.fit.bookingcoffeetable.service.IService.IUserService;

public class UserService implements IUserService {
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

    public void insertUser(int roleId, String username, String password, String email, int emailVerified, String phone, int status) {
        userDao.insertUser(roleId, username, password, email, emailVerified, phone, status);
    }

    public static void main(String[] args) {
        // Tạo đối tượng UserService
        UserService userService = UserService.getInstance();

        int id = 1;
        User user = userService.getUserById(id);

        if (user != null) {
            System.out.println(user);
        } else {
            System.out.println("Không tìm thấy người dùng có ID là " + id);
        }

//        userService.insertUser(2, "user", "user", "user@gmail.com", 1, "0842314569", 1);

    }
}
