package vn.edu.hcmuaf.fit.bookingcoffeetable.service;

import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.sqlobject.SqlObjectPlugin;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.User;
import vn.edu.hcmuaf.fit.bookingcoffeetable.dao.UserDAO;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.JDBIConnector;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
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

    public List<User> findAll() {
        List<User> users = userDao.findAll();
        for (User user : users) {
            user.setRole(RoleService.getInstance().findById(user.getRoleId()));
        }
        return users;
    }

    public User findById(int id) {
        return userDao.findById(id);
    }

    public User findByUserNameAndPassword(String username, String password) {
        String hashedPass = hashPassword(password);
        List<User> users = userDao.findByUserNameAndPassword(username, hashedPass);
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

    public int register(String username, String password, String email, String phone, String confirm) {
        User user = null;
        if (findByUserName(username) != null) {
            return 1;
        }
        if (findByEmail(email) != null) {
            return 2;
        }
        if (!password.equals(confirm)) {
            return 3;
        }
        String hashedPass = hashPassword(password);
        userDao.register(username, hashedPass, email, phone);
        return 0;
    }

    //Lấy ra tên đầy đủ của một user. Nếu không có tên đầy đủ thì lấy tên đăng nhập. Không có trả về null
    public String getNameById(int id) {
        User user = userDao.findById(id);
        if (user.getFullname() != null && !user.getFullname().isEmpty())
            return user.getFullname();
        else if (user.getUsername() != null)
            return user.getUsername();
        return null;
    }

    public User save(User user) {
        user.setPassword(hashPassword(user.getPassword()));
        userDao.save(user.getUsername(), user.getPassword(), user.getFullname(), user.getEmail(), user.getPhone(), user.getRoleId(), user.getEmailVerified(), user.getStatus(), user.getAvatar());
        return findByUserName(user.getUsername());
    }
    public void insertByGoogle(User user) {
        userDao.insertByGoogle(user.getUsername(),user.getPassword() , user.getFullname(), user.getEmail(), user.getRoleId(), user.getEmailVerified(), user.getStatus(), user.getAvatar());
    }

    public User update(User user) {
        User oldUser = userDao.findById(user.getId());
        if (user.getPassword() != null)
            user.setPassword(hashPassword(user.getPassword()));
        userDao.update(user.getId(), user.getFullname(), user.getEmail(), user.getPhone(), user.getRoleId(), user.getEmailVerified(), user.getStatus(), user.getAvatar());
        return findByUserName(user.getUsername());
    }


    public void delete(int id) {
        userDao.delete(id);
    }

    public void updatePassword(int id, String password) {
        userDao.updatePassword(id, hashPassword(password));
    }

    public User updateProfile(int id, String fullname, String email, String phone) {
        userDao.updateProfile(id, fullname, email, phone);
        return findById(id);
    }

    public void updateEmailVerifiedById(int id) {
        userDao.updateEmailVerifiedById(id);
    }

    public boolean exists(User user) {
        List<User> users = userDao.findAll();
        for (User u : users) {
            if (u.getUsername().equals(user.getUsername())) {
                return true;
            }
        }
        return false;
    }

    public String hashPassword(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(password.getBytes());
            byte[] bytes = md.digest();

            StringBuilder sb = new StringBuilder();
            for (byte aByte : bytes) {
                sb.append(Integer.toString((aByte & 0xff) + 0x100, 16).substring(1));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void main(String[] args) {
        UserService userService = UserService.getInstance();
        System.out.println(userService.hashPassword("123456"));
    }
}
