package vn.edu.hcmuaf.fit.bookingcoffeetable.util;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.http.HttpServletRequest;
import java.nio.charset.StandardCharsets;
import java.security.SecureRandom;
import java.util.*;

public class VnPayUtil {

    public static String hashAllFields(Map fields, String secretKey) {
        List fieldNames = new ArrayList(fields.keySet());
        Collections.sort(fieldNames);
        StringBuilder sb = new StringBuilder();
        Iterator itr = fieldNames.iterator();
        while (itr.hasNext()) {
            String fieldName = (String) itr.next();
            String fieldValue = (String) fields.get(fieldName);
            if ((fieldValue != null) && (fieldValue.length() > 0)) {
                sb.append(fieldName);
                sb.append("=");
                sb.append(fieldValue);
            }
            if (itr.hasNext()) {
                sb.append("&");
            }
        }
        return hmacSHA512(secretKey, sb.toString());
    }

    public static String hmacSHA512(String data, String key) {
        String algorithm = "HmacSHA512";
        try {
            Mac mac = Mac.getInstance(algorithm);
            SecretKeySpec secretKeySpec = new SecretKeySpec(key.getBytes(), algorithm);
            mac.init(secretKeySpec);

            byte[] hmacBytes = mac.doFinal(data.getBytes());

            // Convert byte array to hexadecimal string
            StringBuilder result = new StringBuilder();
            for (byte b : hmacBytes) {
                result.append(String.format("%02x", b));
            }

            return result.toString();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static String generateRandomNumberString(int minLength, int maxLength) {
        if (minLength < 1 || maxLength > 100 || minLength > maxLength) {
            throw new IllegalArgumentException("Invalid input parameters");
        }

        SecureRandom secureRandom = new SecureRandom();
        int length = minLength + secureRandom.nextInt(maxLength - minLength + 1);

        StringBuilder randomString = new StringBuilder();
        while (randomString.length() < length) {
            int randomNumber = secureRandom.nextInt(10); // Generate a random digit (0-9)
            if (randomString.indexOf(Integer.toString(randomNumber)) == -1) {
                randomString.append(randomNumber);
            }
        }

        return randomString.toString();
    }

}
