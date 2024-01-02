package vn.edu.hcmuaf.fit.bookingcoffeetable.service;

import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.sqlobject.SqlObjectPlugin;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.VerifyEmail;
import vn.edu.hcmuaf.fit.bookingcoffeetable.dao.UserDAO;
import vn.edu.hcmuaf.fit.bookingcoffeetable.dao.VerifyEmailDAO;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.JDBIConnector;

import java.util.List;

public class VerifyEmailService {
    private final VerifyEmailDAO verifyEmailDAO;
    private static VerifyEmailService instance;

    public VerifyEmailService(VerifyEmailDAO verifyEmailDAO) {
        this.verifyEmailDAO = verifyEmailDAO;
    }

    public static VerifyEmailService getInstance() {
        if (instance == null) {
            Jdbi jdbi = JDBIConnector.get();
            jdbi.installPlugin(new SqlObjectPlugin());
            VerifyEmailDAO verifyEmailDAO = jdbi.onDemand(VerifyEmailDAO.class);

            instance = new VerifyEmailService(verifyEmailDAO);
        }
        return instance;
    }

    public void insertVerifyEmail(int userId, String code) {
        verifyEmailDAO.insertVerifyEmail(userId, code);
    }

    public VerifyEmail selectVerifyEmailByCode(String code) {
        List<VerifyEmail> verifyEmails = verifyEmailDAO.selectVerifyEmailByCode(code);
        if (verifyEmails.isEmpty()) return null;
        return verifyEmails.get(0);
    }

    public VerifyEmail selectVerifyEmailByUserId(int userId) {
        List<VerifyEmail> verifyEmails = verifyEmailDAO.selectVerifyEmailByUserId(userId);
        if (verifyEmails.isEmpty()) return null;
        return verifyEmails.get(0);
    }
}
