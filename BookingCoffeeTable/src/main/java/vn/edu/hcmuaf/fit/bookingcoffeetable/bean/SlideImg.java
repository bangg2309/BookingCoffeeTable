package vn.edu.hcmuaf.fit.bookingcoffeetable.bean;

public class SlideImg {
    private int id;
    private String url;
    public String toString () {
        return "SlideImg{" +
                "id=" + id +
                ", url='" + url + '\'' +
                '}';
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getUrl(){
        return url;
    }
    public void setUrl(String url){
        this.url = url;
    }
}
