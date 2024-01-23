package vn.edu.hcmuaf.fit.bookingcoffeetable.bean;

import java.io.Serializable;

public class ProductVariant implements Serializable {
    private int id;
    private String size;
    private int pricePlus;
    private int productId;

    public ProductVariant() {
    }

    public ProductVariant(int id, String size, int pricePlus, int productId) {
        this.id = id;
        this.size = size;
        this.pricePlus = pricePlus;
        this.productId = productId;
    }

    @Override
    public String toString() {
        return "ProductVariantService{" +
                "id=" + id +
                ", size='" + size + '\'' +
                ", pricePlus=" + pricePlus +
                ", productId=" + productId +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getPricePlus() {
        return pricePlus;
    }

    public void setPricePlus(int pricePlus) {
        this.pricePlus = pricePlus;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

}
