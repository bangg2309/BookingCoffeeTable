package vn.edu.hcmuaf.fit.bookingcoffeetable.bean;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class Cart implements Serializable {
    private Map<Integer, Product> products;
    private double totalPrice;
    private static Cart instance;

    private Cart() {
        products = new HashMap<>();
    }

    public static Cart getInstance() {
        if (instance == null) {
            instance = new Cart();
        }
        return instance;
    }

    public void addProduct(Product product) {
        if (products.containsKey(product.getId())) {
            Product existProduct = products.get(product.getId());
            existProduct.setQuantity(existProduct.getQuantity() + 1);
        } else {
            product.setQuantity(1);
            products.put(product.getId(), product);
        }
        totalPrice += product.getPrice() * product.getQuantity();
    }

    public void upQuantity(int productId) {
        Product product = products.get(productId);
        product.setQuantity(product.getQuantity() + 1);
        totalPrice += product.getPrice();
    }

    public void downQuantity(int productId) {
        Product product = products.get(productId);
        product.setQuantity(product.getQuantity() - 1);
        totalPrice -= product.getPrice();
    }


    public void removeProduct(int productId) {
        Product product = products.get(productId);
        totalPrice -= product.getPrice() * product.getQuantity();
        products.remove(productId);
    }

    @Override
    public String toString() {
        return "Cart{" +
                "products=" + products +
                ", totalPrice=" + totalPrice +
                '}';
    }

    public Map<Integer, Product> getProducts() {
        return products;
    }

    public void setProducts(Map<Integer, Product> products) {
        this.products = products;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }
}
