package vn.edu.hcmuaf.fit.bookingcoffeetable.config;

import vn.edu.hcmuaf.fit.bookingcoffeetable.db.DBProperties;

import java.io.IOException;
import java.util.Properties;

public class VnPayProperties {
    private static Properties prop = new Properties();

    static {
        try {
            prop.load(DBProperties.class.getClassLoader().getResourceAsStream("vnpay.properties"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static String getTmnCode() {
        return prop.get("vnp_TmnCode").toString();
    }

    public static String getHashSecret() {
        return prop.get("vnp_HashSecret").toString();
    }
}
