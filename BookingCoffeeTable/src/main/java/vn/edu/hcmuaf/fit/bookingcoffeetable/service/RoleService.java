package vn.edu.hcmuaf.fit.bookingcoffeetable.service;

import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.sqlobject.SqlObjectPlugin;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Role;
import vn.edu.hcmuaf.fit.bookingcoffeetable.dao.RoleDAO;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.JDBIConnector;

import java.util.List;

public class RoleService {
    private final RoleDAO roleDAO;
    private static RoleService instance;

    public RoleService(RoleDAO roleDAO) {
        this.roleDAO = roleDAO;
    }

    public static RoleService getInstance() {
        if (instance == null) {
            Jdbi jdbi = JDBIConnector.get();
            jdbi.installPlugin(new SqlObjectPlugin());
            RoleDAO roleDAO = jdbi.onDemand(RoleDAO.class);
            instance = new RoleService(roleDAO);
        }
        return instance;
    }

    public Role findById(int id) {
        if (roleDAO.findById(id).isEmpty()) return null;
        return roleDAO.findById(id).get(0);
    }

    public List<Role> findAll() {
        return roleDAO.findAll();
    }
}
