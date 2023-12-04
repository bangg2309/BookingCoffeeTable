package vn.edu.hcmuaf.fit.bookingcoffeetable.bean;

import java.io.Serializable;

public class Review implements Serializable {
    private int id;
    private int productId;
    private int userId;
    private int startRate;
    private String content;

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

    public int getStartRate() {
        return startRate;
    }

    public void setStartRate(int startRate) {
        this.startRate = startRate;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
