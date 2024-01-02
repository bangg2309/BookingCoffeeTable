package vn.edu.hcmuaf.fit.bookingcoffeetable.mail;

import vn.edu.hcmuaf.fit.bookingcoffeetable.db.DBProperties;

import java.io.IOException;
import java.util.Properties;

public class MailProperties {
    private static Properties prop = new Properties();

    static {
        try {
            prop.load(DBProperties.class.getClassLoader().getResourceAsStream("mail.properties"));
        } catch (IOException ioException) {
            ioException.printStackTrace();
        }
    }

    public static String getMailHost() {
        return prop.get("mail.smtp.host").toString();
    }

    public static String getMailPort() {
        return prop.get("mail.smtp.port").toString();
    }

    public static boolean getMailAuth() {
        return Boolean.parseBoolean(prop.get("mail.smtp.auth").toString());
    }

    public static boolean getMailStarttls() {
        return Boolean.parseBoolean(prop.get("mail.smtp.starttls.enable").toString());
    }

    public static String sslTrust() {
        return prop.get("mail.smtp.ssl.trust").toString();
    }

    public static String socketFactoryPort() {
        return prop.get("mail.smtp.socketFactory.port").toString();
    }

    public static String socketFactoryClass() {
        return prop.get("mail.smtp.socketFactory.class").toString();
    }

    public static String getMailUsername() {
        return prop.get("mail.username").toString();
    }

    public static String getMailPassword() {
        return prop.get("mail.password").toString();
    }

    public static String getMailFrom() {
        return prop.get("mail.from").toString();
    }

    public static String getMailTo() {
        return prop.get("mail.to").toString();
    }

    public static String getMailSubject() {
        return prop.get("mail.subject").toString();
    }

    public static String getMailContent() {
        return prop.get("mail.content").toString();
    }


}