package vn.edu.hcmuaf.fit.bookingcoffeetable.bean;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class Product implements Serializable {
    private int id;
    private int categoryId;
    private String name;
    private int price;
    private String description;
    private List<Image> images = new ArrayList<>();
    private List<Review> reviews = new ArrayList<>();
    private List<ProductVariant> productVariants = new ArrayList<>();
    private Category category;
    private int quantity;
    private int status;
    private int discount;
    private Timestamp createdDate;
    private int salePrice;
    private int totalPrice;
    private int saleTotalPrice;
    private double averageRating;
    private String size;


    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", categoryId=" + categoryId +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", description='" + description + '\'' +
                ", images=" + images +
                ", reviews=" + reviews +
                ", productVariants=" + productVariants +
                ", quantity=" + quantity +
                ", status=" + status +
                ", discount=" + discount +
                ", createdDate=" + createdDate +
                ", salePrice=" + salePrice +
                ", totalPrice=" + totalPrice +
                ", saleTotalPrice=" + saleTotalPrice +
                ", averageRating=" + averageRating +
                ", size='" + size + '\'' +
                '}';
    }




    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Product product = (Product) o;
        return id == product.id && categoryId == product.categoryId && price == product.price && quantity == product.quantity && status == product.status && discount == product.discount && totalPrice == product.totalPrice && saleTotalPrice == product.saleTotalPrice && Double.compare(product.averageRating, averageRating) == 0 && Objects.equals(name, product.name) && Objects.equals(description, product.description) && Objects.equals(images, product.images) && Objects.equals(reviews, product.reviews) && Objects.equals(productVariants, product.productVariants) && Objects.equals(createdDate, product.createdDate) && Objects.equals(size, product.size);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, categoryId, name, price, description, images, reviews, productVariants, quantity, status, discount, createdDate, totalPrice, saleTotalPrice, averageRating, size);
    }

    public void updateBySize(String size) {
        for (ProductVariant productVariant : productVariants) {
            if (productVariant.getSize().equals(size)) {
                this.price += productVariant.getPricePlus();
                this.size = productVariant.getSize();
                break;
            }
        }
    }

    public void updateBySize(String oldSize, String newSize) {
        for (ProductVariant productVariant : productVariants) {
            if (productVariant.getSize().equals(oldSize)) {
                this.price -= productVariant.getPricePlus();
                break;
            }
        }
        for (ProductVariant productVariant : productVariants) {
            if (productVariant.getSize().equals(newSize)) {
                this.price += productVariant.getPricePlus();
                this.size = productVariant.getSize();
                break;
            }
        }
    }

    public List<ProductVariant> getProductVariants() {
        return productVariants;
    }

    public void setProductVariants(List<ProductVariant> productVariants) {
        this.productVariants = productVariants;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public List<Image> getImages() {
        return images;
    }

    public void setImages(List<Image> images) {
        this.images = images;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public List<Review> getReviews() {
        return reviews;
    }

    public void setReviews(List<Review> reviews) {
        this.reviews = reviews;
    }

    public Timestamp getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Timestamp createdDate) {
        this.createdDate = createdDate;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getSaleTotalPrice() {
        if (this.discount > 0) {
            return saleTotalPrice = this.price * this.quantity * (100 - this.discount) / 100;
        }
        return saleTotalPrice = this.price * this.quantity;
    }

    public void setSaleTotalPrice(int saleTotalPrice) {
        this.saleTotalPrice = saleTotalPrice;
    }

    public int getTotalPrice() {
        return this.totalPrice = this.price * this.quantity;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
    }

    public double getAverageRating() {
        double sum = 0;
        for (Review review : reviews) {
            sum += review.getStarRate();
        }
        if (reviews.size() > 0) {
            return this.averageRating =  sum / reviews.size();
        }
        return this.averageRating = 5;
    }

    public void setAverageRating(double averageRating) {
        this.averageRating = averageRating;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getSalePrice() {
        return this.price * (100 - this.discount) / 100;
    }

    public void setSalePrice(int salePrice) {
        this.salePrice = salePrice;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

}
