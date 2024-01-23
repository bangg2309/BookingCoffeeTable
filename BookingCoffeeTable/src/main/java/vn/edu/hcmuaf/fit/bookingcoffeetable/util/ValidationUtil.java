package vn.edu.hcmuaf.fit.bookingcoffeetable.util;

public class ValidationUtil {
    public static boolean isEmail(String email) {
        return email.matches("^[a-zA-Z0-9]+[a-zA-Z0-9]*@[a-zA-Z0-9]+(\\.[a-zA-Z0-9]+)+$");
    }

    public static boolean isPhoneNumber(String phoneNumber) {
        return phoneNumber.matches("^[0-9]{10}$");
    }

    public static boolean isPassword(String password) {
        return password.matches("^[a-zA-Z0-9]{6,}$");
    }

    public static boolean isName(String name) {
        return name.matches("^[a-zA-Z0-9]{6,}$");
    }


}
