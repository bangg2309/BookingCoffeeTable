package vn.edu.hcmuaf.fit.bookingcoffeetable.db;

public class QUERIES {

    //USER
    public class USER {
        public static final String findByUserNameAndPassword = "SELECT * FROM users WHERE username = :username AND password = :password";
        public static final String register = "INSERT INTO users (username, password, email, phone, roleId,status) VALUES (:username, :password, :email, :phone, 1,1)";
        public static final String findByUser = "SELECT * FROM users WHERE username = :username";
        public static final String findById = "SELECT * FROM users WHERE id = :id";
        public static final String findByEmail = "SELECT * FROM users WHERE email = :email";
    }

    //PRODUCT
    public static final String INSERT_PRODUCT = "INSERT INTO products (categoryId, name, price, description, status, discount) VALUES (:categoryId, :name, :price, :description, :status, :discount)";
    public static final String SELECT_ALL_PRODUCT = "SELECT products.id,products.categoryId, products.name,products.price,products.description,products." +
            "status,products.discount, products.createdDate, images.id AS image_id, images.productId, images.url " +
            "FROM products " +
            "LEFT JOIN images ON products.id = images.productId " +
            "ORDER BY products.createdDate DESC ";

    public static final String SELECT_ALL_PRODUCT_OFFSET = "SELECT products.id,products.categoryId, products.name,products.price,products.description,products.status,products.discount, products.createdDate, images.id AS image_id, images.productId, images.url FROM products LEFT JOIN images ON products.id = images.productId LIMIT ? OFFSET ?";
    public static final String SELECT_PRODUCT_BY_ID = "SELECT * FROM products WHERE id = :id";
    public static final String SELECT_PRODUCT_BY_CATEGORY_ID = "SELECT * FROM products WHERE categoryId = :categoryId";
    public static final String SELECT_PRODUCT_BY_NAME = "SELECT * FROM products WHERE name = :name";
    public static final String UPDATE_PRODUCT = "UPDATE products SET categoryId = :categoryId, name = :name, price = :price, description = :description, status = :status, discount = :discount WHERE id = :id";
    public static final String DELETE_PRODUCT = "DELETE FROM products WHERE id = :id";
    public static final String SELECT_PRODUCT_WITH_IMAGES = "SELECT products.id,products.categoryId, products.name,products.price,products.description,products.status,products.discount, products.createdDate, images.id AS image_id, images.productId, images.url " +
            "FROM products " +
            "LEFT JOIN images ON products.id = images.productId " +
            "WHERE products.id = :id";
    public static final String SELECT_PRODUCTS_NEWEST =
            "SELECT products.id,products.categoryId, products.name,products.price,products.description,products." +
                    "status,products.discount, products.createdDate, images.id AS image_id, images.productId, images.url " +
            "FROM products " +
            "LEFT JOIN images ON products.id = images.productId " +
            "ORDER BY products.createdDate DESC " +
            "LIMIT :limit";
    public static final String SELECT_ALL_ATTRIBUTE = "SELECT products.id,products.categoryId, products.name,products.price,products.description,products.status,products.discount, products.createdDate, images.id AS image_id, images.productId, images.url" +
            "FROM products " +
            "LEFT JOIN images ON products.id = images.productId " +
            "WHERE products.id = :id";

    //CATEGORY
    public class CATEGORY{
        public static final String findOne = "SELECT * FROM categories WHERE id = :id";
    }
    public static final String SELECT_N_CATEGORY = "SELECT * FROM categories LIMIT :limit";
    public static final String SELECT_ALL_CATEGORY = "SELECT * FROM categories";

    //REVIEW
    public class REVIEW {
        public static final String INSERT_REVIEW = "INSERT INTO reviews (productId, userId, content, rating) VALUES (:productId, :userId, :content, :rating)";
        public static final String SELECT_REVIEW_BY_PRODUCT_ID = "SELECT * FROM reviews WHERE productId = :productId";
    }


    //AREA
    public static final String SELECT_ALL_AREA = "SELECT name FROM areas";

    //TABLE
    public static final String SELECT_ALL_TABLE = "SELECT * FROM tables";

    public static final String SELECT_TABLE_FILTER = "SELECT T.tableNum, T.seatCount, T.location, T.image\n" +
            "FROM tables T\n" +
            "LEFT JOIN reservations R ON T.id = R.tableId\n" +
            "WHERE T.status = 1 AND T.location :location AND \n" +
            "T.seatCount >= :seatCount AND\n" +
            "(R.id ISNULL OR (R.endTime <= :endTime OR R.startTime >= :startTime));\n";
    public static final String SELECT_TABLE_PAGE = "SELECT * FROM tables WHERE seatCount >= :count AND LOWER(location) LIKE LOWER(CONCAT('%', :location, '%')) LIMIT :limit OFFSET :offset";

    public static final String COUNT_TOTALITEM = "SELECT count(*) FROM tables";

    //PRODUCT VARIANT
    public static final String SELECT_PRODUCT_VARIANT_BY_PRODUCT_ID = "SELECT * FROM product_variants WHERE productId = :productId";

    //IMAGE
    public class IMAGE {
        public static final String INSERT_IMAGE = "INSERT INTO images (productId, url) VALUES (:productId, :url)";
        public static final String SELECT_IMAGE_BY_PRODUCT_ID = "SELECT * FROM images WHERE productId = :productId";
    }

}
