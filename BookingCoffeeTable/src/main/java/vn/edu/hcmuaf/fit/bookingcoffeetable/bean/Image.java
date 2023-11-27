package vn.edu.hcmuaf.fit.bookingcoffeetable.bean;

public class Image {
    private int id;
    private int productId;
    private String url;

    @Override
    public String toString() {
        return "Image{" +
                "id=" + id +
                ", productId=" + productId +
                ", url='" + url + '\'' +
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

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
