package vn.edu.hcmuaf.fit.bookingcoffeetable.config;

import vn.edu.hcmuaf.fit.bookingcoffeetable.util.VnPayUtil;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.*;

public class VnPay {
    // VNPAY Constants
    public static final String VNP_REDIRECT_URL = "http://localhost:8080/checkout/result";
    public static final String VNP_CREATE_PAYMENT_URL = "https://sandbox.vnpayment.vn/paymentv2/vpcpay.html";
    public static final String VNP_VERSION = "2.1.0";
    public static final String VNP_COMMAND = "pay";

    private String vnpOrderInfo;
    private String orderType;
    private String vnpTxnRef;
    private String vnpIpAddr;
    private int amount;
    private String vnpTmnCode;
    private String vnpHashSecret;

    public VnPay vnpTmnCode(String str) {
        this.vnpTmnCode = str;
        return this;
    }

    public VnPay vnpHashSecret(String str) {
        this.vnpHashSecret = str;
        return this;
    }

    public VnPay vnpOrderInfo(String str) {
        vnpOrderInfo = str;
        return this;
    }

    public VnPay orderType(String str) {
        orderType = str;
        return this;
    }

    public VnPay vnpTxnRef(String str) {
        vnpTxnRef = str;
        return this;
    }

    public VnPay vnpIpAddr(String str) {
        vnpIpAddr = str;
        return this;
    }

    public VnPay amount(int num) {
        amount = num;
        return this;
    }

    public String buildUrl() {
        String result = VNP_CREATE_PAYMENT_URL;
        String vnp_Version = VNP_VERSION;
        String vnp_Command = VNP_COMMAND;
        String vnp_OrderInfo = "Test";
        String orderType = "other";
        String vnp_TxnRef = VnPayUtil.generateRandomNumberString(4, 6);
        String vnp_IpAddr = this.vnpIpAddr;
        String vnp_TmnCode = this.vnpTmnCode;

        int amount = this.amount;
        Map<String, Object> vnp_Params = new HashMap<String, Object>();
        vnp_Params.put("vnp_Version", vnp_Version);
        vnp_Params.put("vnp_Command", vnp_Command);
        vnp_Params.put("vnp_TmnCode", vnp_TmnCode);
        vnp_Params.put("vnp_Amount", String.valueOf(amount));
        vnp_Params.put("vnp_CurrCode", "VND");
        String bank_code = "";
        if (bank_code != null && !bank_code.isEmpty()) {
            vnp_Params.put("vnp_BankCode", bank_code);
        }
        vnp_Params.put("vnp_TxnRef", vnp_TxnRef);
        vnp_Params.put("vnp_OrderInfo", vnp_OrderInfo);
        vnp_Params.put("vnp_OrderType", orderType);

        String locate = "vn";
        if (locate != null && !locate.isEmpty()) {
            vnp_Params.put("vnp_Locale", locate);
        } else {
            vnp_Params.put("vnp_Locale", "vn");
        }
        vnp_Params.put("vnp_ReturnUrl", VNP_REDIRECT_URL);
        vnp_Params.put("vnp_IpAddr", vnp_IpAddr);
        Calendar cld = Calendar.getInstance(TimeZone.getTimeZone("Etc/GMT+7"));
        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
        String vnp_CreateDate = formatter.format(cld.getTime());

        vnp_Params.put("vnp_CreateDate", vnp_CreateDate);
        cld.add(Calendar.MINUTE, 15);
        String vnp_ExpireDate = formatter.format(cld.getTime());
        // Add Params of 2.1.0 Version
        vnp_Params.put("vnp_ExpireDate", vnp_ExpireDate);
        // Billing
        // vnp_Params.put("vnp_Bill_Mobile", req.getParameter("txt_billing_mobile"));
        // vnp_Params.put("vnp_Bill_Email", req.getParameter("txt_billing_email"));
        // String fullName = (req.getParameter("txt_billing_fullname")).trim();
        // if (fullName != null && !fullName.isEmpty()) {
        //     int idx = fullName.indexOf(' ');
        //     String firstName = fullName.substring(0, idx);
        //     String lastName = fullName.substring(fullName.lastIndexOf(' ') + 1);
        //     vnp_Params.put("vnp_Bill_FirstName", firstName);
        //     vnp_Params.put("vnp_Bill_LastName", lastName);

        // }
        // vnp_Params.put("vnp_Bill_Address", req.getParameter("txt_inv_addr1"));
        // vnp_Params.put("vnp_Bill_City", req.getParameter("txt_bill_city"));
        // vnp_Params.put("vnp_Bill_Country", req.getParameter("txt_bill_country"));
        // if (req.getParameter("txt_bill_state") != null && !req.getParameter("txt_bill_state").isEmpty()) {
        //     vnp_Params.put("vnp_Bill_State", req.getParameter("txt_bill_state"));
        // }
        // // Invoice
        // vnp_Params.put("vnp_Inv_Phone", req.getParameter("txt_inv_mobile"));
        // vnp_Params.put("vnp_Inv_Email", req.getParameter("txt_inv_email"));
        // vnp_Params.put("vnp_Inv_Customer", req.getParameter("txt_inv_customer"));
        // vnp_Params.put("vnp_Inv_Address", req.getParameter("txt_inv_addr1"));
        // vnp_Params.put("vnp_Inv_Company", req.getParameter("txt_inv_company"));
        // vnp_Params.put("vnp_Inv_Taxcode", req.getParameter("txt_inv_taxcode"));
        // vnp_Params.put("vnp_Inv_Type", req.getParameter("cbo_inv_type"));
        // Build data to hash and querystring
        List<String> fieldNames = new ArrayList<String>(vnp_Params.keySet());
        Collections.sort(fieldNames);
        StringBuilder hashData = new StringBuilder();
        StringBuilder query = new StringBuilder();
        Iterator<String> itr = fieldNames.iterator();
        while (itr.hasNext()) {
            String fieldName = (String) itr.next();
            String fieldValue = (String) vnp_Params.get(fieldName);
            if ((fieldValue != null) && (fieldValue.length() > 0)) {
                // Build hash data
                hashData.append(fieldName);
                hashData.append('=');
                try {
                    hashData.append(URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII.toString()));
                    // Build query
                    query.append(URLEncoder.encode(fieldName, StandardCharsets.US_ASCII.toString()));
                    query.append('=');
                    query.append(URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII.toString()));
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
                if (itr.hasNext()) {
                    query.append('&');
                    hashData.append('&');
                }
            }
        }
        String queryUrl = query.toString();
        String vnp_SecureHash = VnPayUtil.hmacSHA512(hashData.toString(), this.vnpHashSecret);
        queryUrl += "&vnp_SecureHash=" + vnp_SecureHash;
        result += "?" + queryUrl;
        return result;

    }


    public static void main(String[] args) {
        VnPay vnpay = new VnPay();

        String paymentUrl = vnpay.amount(20000 * 100)
                .vnpHashSecret("AXDLVNEDUUTCRADCZGFQJZMLAAGQENYI")
                .vnpTmnCode("UBGUBN2O")
                .vnpIpAddr("172.25.32.1")
                .vnpOrderInfo("test")
                .buildUrl();
        System.out.println(paymentUrl);
    }
}
