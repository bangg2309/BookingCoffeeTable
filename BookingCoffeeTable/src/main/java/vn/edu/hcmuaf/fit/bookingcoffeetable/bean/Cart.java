package vn.edu.hcmuaf.fit.bookingcoffeetable.bean;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;

public class Cart implements Serializable {
    private Map<String, Product> products;
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

    public void addProduct(Product product, String size) {
        if (size == null) {
            size = "notSize";
        }
        String productKey = generateProductKey(product.getId(), size);
        if (products.containsKey(productKey)) {
            updateProductQuantity(productKey, products.get(productKey).getQuantity() + 1);
        } else {
            product.setQuantity(1);
            if (!size.equals("notSize")) {
                product.updateBySize(size);
            }
            productKey = generateProductKey(product.getId(), size);
            product.setSize(size);
            products.put(productKey, product);
            getTotalPrice();
            System.out.println("add product: " + productKey);
        }
    }

    public void updateProductQuantity(String productKey, int quantity) {
        Product product = products.get(productKey);

        if (product != null) {
            product.setQuantity(quantity);
            getTotalPrice();
        } else {
            // Xử lý trường hợp product là null (nếu cần)
            System.out.println("Không tìm thấy sản phẩm có key: " + productKey);
        }
    }

    public void updateProductSize(String productKey, String newSize) {
        StringTokenizer stringTokenizer = new StringTokenizer(productKey, "_");
        int productId = Integer.parseInt(stringTokenizer.nextToken());
        String oldSize = stringTokenizer.nextToken();
        String oldProductKey = generateProductKey(productId, oldSize);

        if (products.containsKey(oldProductKey)) {
            Product existingProduct = products.get(oldProductKey);

            products.remove(oldProductKey);

            String newProductKey = generateProductKey(productId, newSize);

            if (products.containsKey(newProductKey)) {
                Product newProduct = products.get(newProductKey);
                newProduct.setQuantity(newProduct.getQuantity() + existingProduct.getQuantity());
            } else {
                existingProduct.updateBySize(oldSize, newSize);
                products.put(newProductKey, existingProduct);
            }
            getTotalPrice();
        }
    }

    public void removeProduct(String productKey) {
        if (products.containsKey(productKey)) {
            products.remove(productKey);
            getTotalPrice();
        }
    }

    private String generateProductKey(int productId, String size) {
        return productId + "_" + size;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "products=" + products +
                ", totalPrice=" + totalPrice +
                '}';
    }

    public Map<String, Product> getProducts() {
        return products;
    }

    public void setProducts(Map<String, Product> products) {
        this.products = products;
    }

    public double getTotalPrice() {
        double totalPrice = 0;
        for (Product product : products.values()) {
            totalPrice += product.getSaleTotalPrice();
        }
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }
}
