package vn.edu.hcmuaf.fit.bookingcoffeetable.bean;

import java.io.Serializable;

public class Review implements Serializable {
    private int id;
    private int productId;
    private int userId;
    private String userName;
    private int starRate;
    private String content;

    public Review() {
    }

    public Review(int productId, int userId, int starRate, String content) {

        this.productId = productId;
        this.userId = userId;
        this.starRate = starRate;
        this.content = content;
    }

    @Override
    public String toString() {
        return "Review{" +
                "id=" + id +
                ", productId=" + productId +
                ", userId=" + userId +
                ", userName='" + userName + '\'' +
                ", starRate=" + starRate +
                ", content='" + content + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getStarRate() {
        return starRate;
    }

    public void setStarRate(int starRate) {
        this.starRate = starRate;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
