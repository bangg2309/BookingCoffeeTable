package vn.edu.hcmuaf.fit.bookingcoffeetable.bean;

import java.io.Serializable;
import java.util.List;

public class Reservation implements Serializable {
    private int id;
    private int tableId;
    private int userId;
    private String contactName;
    private int contactPhone;
    private String contactEmail;
    private String startTime;
    private String endTime;
    private int status;
    private String paymentMethod;
    private String note;
    private double totalPrice;
    private String createdDate;

    private List<ReservationProduct> reservationProducts;
    private Table table;


    public Reservation() {
    }

    public Reservation(int tableId, int userId, String contactName, int contactPhone, String contactEmail, String startTime, String endTime, int status, String paymentMethod, String note, double totalPrice) {
        this.tableId = tableId;
        this.userId = userId;
        this.contactName = contactName;
        this.contactPhone = contactPhone;
        this.contactEmail = contactEmail;
        this.startTime = startTime;
        this.endTime = endTime;
        this.status = status;
        this.paymentMethod = paymentMethod;
        this.note = note;
        this.totalPrice = totalPrice;
    }

    @Override
    public String toString() {
        return "Reservation{" +
                "id=" + id +
                ", userId=" + userId +
                ", tableId=" + tableId +
                ", contactName='" + contactName + '\'' +
                ", contactPhone=" + contactPhone +
                ", contactEmail='" + contactEmail + '\'' +
                ", startTime='" + startTime + '\'' +
                ", endTime='" + endTime + '\'' +
                ", status='" + status + '\'' +
                ", paymentMethod='" + paymentMethod + '\'' +
                ", note='" + note + '\'' +
                ", totalPrice='" + totalPrice + '\'' +
                ", createdDate='" + createdDate + '\'' +
                ", reservationProducts=" + reservationProducts +
                ", table=" + table +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;

    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }


    public int getTableId() {
        return tableId;
    }

    public void setTableId(int tableId) {
        this.tableId = tableId;
    }


    public String getContactName() {
        return contactName;
    }

    public void setContactName(String contactName) {
        this.contactName = contactName;
    }

    public int getContactPhone() {
        return contactPhone;
    }

    public void setContactPhone(int contactPhone) {
        this.contactPhone = contactPhone;
    }

    public String getContactEmail() {
        return contactEmail;
    }

    public void setContactEmail(String contactEmail) {
        this.contactEmail = contactEmail;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }


    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }


    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }


    public List<ReservationProduct> getReservationProducts() {
        return reservationProducts;
    }

    public void setReservationProducts(List<ReservationProduct> reservationProducts) {
        this.reservationProducts = reservationProducts;
    }

    public Table getTable() {
        return table;
    }

    public void setTable(Table table) {
        this.table = table;

    }
}



