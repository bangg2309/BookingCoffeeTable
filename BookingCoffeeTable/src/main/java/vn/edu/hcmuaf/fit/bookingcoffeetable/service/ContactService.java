package vn.edu.hcmuaf.fit.bookingcoffeetable.service;

import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.sqlobject.SqlObjectPlugin;
import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.Contact;
import vn.edu.hcmuaf.fit.bookingcoffeetable.dao.ContactDAO;
import vn.edu.hcmuaf.fit.bookingcoffeetable.db.JDBIConnector;

import java.util.List;

public class ContactService {
    private static ContactService instance;
    private static ContactDAO contactDAO;

    public static ContactService getInstance() {
        if (instance == null) {
            Jdbi jdbi = JDBIConnector.get();
            jdbi.installPlugin(new SqlObjectPlugin());
            contactDAO = jdbi.onDemand(ContactDAO.class);
            instance = new ContactService(contactDAO);
        }
        return instance;
    }

    public ContactService(ContactDAO contactDAO) {
        this.contactDAO = contactDAO;
    }


    public List<Contact> findAllContact() {
        return contactDAO.findAllContact();
    }

    public void deleteContact(int id) {
        contactDAO.deleteContact(id);
    }

    public static void main(String[] args) {
        ContactService rv = ContactService.getInstance();
    }
}
