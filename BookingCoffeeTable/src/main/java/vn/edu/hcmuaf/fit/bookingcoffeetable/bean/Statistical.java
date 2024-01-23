package vn.edu.hcmuaf.fit.bookingcoffeetable.bean;

import java.io.Serializable;
import java.util.List;

public class Statistical implements Serializable {
    private User user;
    private List<Reservation> reservations;

    private int reservationCount;
    private double sumTotalPrice;
    private int countProduct;

    public Statistical() {
    }

    public int getReservationCount() {
        return countReservation();
    }

    public double getSumTotalPrice() {
        return sumTotalPrice();
    }

    public int getCountProduct() {
        return countProduct();
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Reservation> getReservations() {
        return reservations;
    }

    public void setReservations(List<Reservation> reservations) {
        this.reservations = reservations;
    }

    public int countReservation() {
    	return reservations.size();
    }

    public double sumTotalPrice() {
        double sum = 0;
        for (Reservation reservation : reservations) {
            sum += reservation.getTotalPrice();
        }
        return sum;
    }

    public int countProduct(){
        int count = 0;
        for (Reservation reservation : reservations) {
            count += reservation.getReservationProducts().size();
        }
        return count;
    }



    @Override
    public String toString() {
        return "Statistical{" +
                "user=" + user +
                ", reservations=" + reservations +
                '}';
    }
}
