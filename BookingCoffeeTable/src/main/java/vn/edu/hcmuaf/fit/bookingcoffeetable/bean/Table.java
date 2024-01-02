package vn.edu.hcmuaf.fit.bookingcoffeetable.bean;

public class Table {
    private int id;
    private int areaId;
    private int tableNum;
    private int seatCount;
    private String location;
    private String image;

    private int status;

    @Override
    public String toString() {
        return "Table{" +
                "id=" + id +
                ", areaId=" + areaId +
                ", tableNum=" + tableNum +
                ", seatCount=" + seatCount +
                ", location='" + location + '\'' +
                ", image='" + image + '\'' +
                ", status=" + status +
                '}';
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAreaId() {
        return areaId;
    }

    public void setAreaId(int areaId) {
        this.areaId = areaId;
    }

    public int getTableNum() {
        return tableNum;
    }

    public void setTableNum(int tableNum) {
        this.tableNum = tableNum;
    }

    public int getSeatCount() {
        return seatCount;
    }

    public void setSeatCount(int seatCount) {
        this.seatCount = seatCount;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}