package vn.edu.hcmuaf.fit.bookingcoffeetable.bean;

import java.io.Serializable;

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
    private int total;
    private String paymentMethod;
    private String note;
    private String createdDate;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTableId() {
        return tableId;
    }

    public void setTableId(int tableId) {
        this.tableId = tableId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
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

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
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

    public String getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }

    @Override
    public String toString() {
        return "Reservation{" +
                "id=" + id +
                ", tableId=" + tableId +
                ", userId=" + userId +
                ", contactName='" + contactName + '\'' +
                ", contactPhone=" + contactPhone +
                ", contactEmail='" + contactEmail + '\'' +
                ", startTime='" + startTime + '\'' +
                ", endTime='" + endTime + '\'' +
                ", status=" + status +
                ", total=" + total +
                ", paymentMethod='" + paymentMethod + '\'' +
                ", note='" + note + '\'' +
                ", createdDate='" + createdDate + '\'' +
                '}';
    }
}



