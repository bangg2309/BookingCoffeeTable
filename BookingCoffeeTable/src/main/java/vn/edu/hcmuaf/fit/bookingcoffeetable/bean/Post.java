package vn.edu.hcmuaf.fit.bookingcoffeetable.bean;

public class Post {
    private int id;
    private int userId;
    private String title;
    private String shortDescription;
    private String description;
    private String thumbnail;
    private int status;
    private String createdDate;
    private String createdBy;

    private String coverImage;

    public String toString() {
        return "Post [id=" + id + ", userId=" + userId + ", title=" + title + ", shortDescription=" + shortDescription
                + ", description=" + description + ", thumbnail=" + thumbnail + ", status=" + status + ", createdDate="
                + createdDate + ", createdBy=" + createdBy + ", coverImage=" + coverImage + "]";

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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getShortDescription() {
        return shortDescription;
    }

    public void setShortDescription(String shortDescription) {
        this.shortDescription = shortDescription;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public String getCoverImage() {
        return coverImage;
    }

    public void setCoverImage(String coverImage) {
        this.coverImage = coverImage;
    }
}
