package vn.edu.hcmuaf.fit.bookingcoffeetable.service;

import vn.edu.hcmuaf.fit.bookingcoffeetable.mail.MailProperties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class MailService {

    private static MailService instance;

    private MailService() {

    }

    public static MailService getInstance() {
        if (instance == null) {
            instance = new MailService();
        }
        return instance;
    }

    public void sendMail(String to, String subject, String content) {
        Properties prop = new Properties();
        prop.setProperty("mail.smtp.host", MailProperties.getMailHost());
        prop.setProperty("mail.smtp.port", MailProperties.getMailPort());
        prop.setProperty("mail.smtp.auth", String.valueOf(MailProperties.getMailAuth()));
        prop.setProperty("mail.smtp.starttls.enable", String.valueOf(MailProperties.getMailStarttls()));
        prop.setProperty("mail.smtp.ssl.trust", MailProperties.sslTrust());

        prop.setProperty("mail.smtp.socketFactory.port", MailProperties.socketFactoryPort());
        prop.setProperty("mail.smtp.socketFactory.class", MailProperties.socketFactoryClass());
        Authenticator auth = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(MailProperties.getMailUsername(), MailProperties.getMailPassword());
            }
        };
        Session session = Session.getInstance(prop, auth);

        MimeMessage msg = new MimeMessage(session);
        try {
            msg.setFrom(new InternetAddress(MailProperties.getMailUsername()));
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            msg.setSubject(subject, "UTF-8");
            msg.setText(content, "UTF-8");
            javax.mail.Transport.send(msg);
            System.out.println("Sent");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void sendVerificationMail(String domain, String to, String verificationCode) {
        // Xây dựng liên kết xác minh
        String verificationLink = domain + "/verify?code=" + verificationCode;

        // Tùy chỉnh chủ đề và nội dung cho email xác minh
        String subject = "Xác Minh Email";
        String content = "Vui lòng nhấp vào liên kết sau để xác minh email của bạn: " + verificationLink;

        // Sử dụng phương thức sendMail hiện có
        sendMail(to, subject, content);
    }
}