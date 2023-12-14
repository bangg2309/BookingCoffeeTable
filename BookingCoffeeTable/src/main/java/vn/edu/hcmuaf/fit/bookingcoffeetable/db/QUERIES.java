package vn.edu.hcmuaf.fit.bookingcoffeetable.db;

public class QUERIES {

    //PRODUCT
    public static final String INSERT_PRODUCT = "INSERT INTO products (categoryId, name, price, description, status, discount) VALUES (:categoryId, :name, :price, :description, :status, :discount)";
    public static final String SELECT_ALL_PRODUCT = "SELECT * FROM products";
    public static final String SELECT_PRODUCT_BY_ID = "SELECT * FROM products WHERE id = :id";
    public static final String SELECT_PRODUCT_BY_CATEGORY_ID = "SELECT * FROM products WHERE categoryId = :categoryId";
    public static final String SELECT_PRODUCT_BY_NAME = "SELECT * FROM products WHERE name = :name";
    public static final String UPDATE_PRODUCT = "UPDATE products SET categoryId = :categoryId, name = :name, price = :price, description = :description, status = :status, discount = :discount WHERE id = :id";
    public static final String DELETE_PRODUCT = "DELETE FROM products WHERE id = :id";
    public static final String SELECT_PRODUCT_WITH_IMAGES = "SELECT products.id,products.categoryId, products.name,products.price,products.description,products.status,products.discount, products.createdDate, images.id AS image_id, images.productId, images.url " +
            "FROM products " +
            "LEFT JOIN images ON products.id = images.productId " +
            "WHERE products.id = :id";
    public static final String SELECT_PRODUCTS_NEWEST = "SELECT products.id,products.categoryId, products.name,products.price,products.description,products.status,products.discount, products.createdDate, images.id AS image_id, images.productId, images.url " +
            "FROM products " +
            "LEFT JOIN images ON products.id = images.productId " +
            "ORDER BY products.createdDate DESC " +
            "LIMIT :limit";
    public static final String SELECT_ALL_ATTRIBUTE = "SELECT products.id,products.categoryId, products.name,products.price,products.description,products.status,products.discount, products.createdDate, images.id AS image_id, images.productId, images.url" +
            "FROM products " +
            "LEFT JOIN images ON products.id = images.productId " +
            "WHERE products.id = :id";

    //CATEGORY
    public static final String SELECT_N_CATEGORY = "SELECT * FROM categories LIMIT :limit";


    //REVIEW
    public static final String SELECT_REVIEW_BY_PRODUCT_ID = "SELECT * FROM reviews WHERE productId = :productId";

    //PRODUCT VARIANT
    public static final String SELECT_PRODUCT_VARIANT_BY_PRODUCT_ID = "SELECT * FROM product_variants WHERE productId = :productId";

    //IMAGE
    public class IMAGE {
        public static final String INSERT_IMAGE = "INSERT INTO images (productId, url) VALUES (:productId, :url)";
        public static final String SELECT_IMAGE_BY_PRODUCT_ID = "SELECT * FROM images WHERE productId = :productId";
    }
}
