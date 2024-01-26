package vn.edu.hcmuaf.fit.bookingcoffeetable.db;

public class QUERIES {

    public class POST {
        public static final String FIND_ALL_POST = "SELECT * FROM posts";
        public static final String FIND_BY_ID = "SELECT * FROM posts WHERE id = :id";
        public static final String SAVE_POST = "INSERT INTO posts (userId, title, shortDescription, description, thumbnail, status, createdBy, createdDate) VALUES (:userId, :title, :shortDescription, :description, :thumbnail, :status, :createdBy, :createdDate)";
        public static final String UPDATE_POST = "UPDATE posts SET userId = :userId, title = :title, shortDescription = :shortDescription, description = :description, thumbnail = :thumbnail, status = :status, createdBy = :createdBy, createdDate = :createdDate WHERE id = :id";
        public static final String DELETE_POST = "DELETE FROM posts WHERE id = :id";
        public static final String DELETE = "DELETE FROM posts WHERE userId = :userId";
        public static final String FIND_NEW_POST = "SELECT * FROM posts ORDER BY createdDate DESC LIMIT :limit";

        public static final String TOTAL_ITEM = "SELECT count(*) FROM posts";
        public static final String GET_POSTS = "SELECT * FROM posts ORDER BY createdDate DESC LIMIT :limit OFFSET :offset";
    }

    public class CONTACT {
        public static final String FIND_ALL_CONTACT = "SELECT * FROM contacts";
        public static final String DELETE_CONTACT = "DELETE FROM contacts WHERE id = :id";
        public static final String SAVE = "INSERT INTO contacts (fullname, email, phone, subject,content) VALUES (:fullname, :email, :phone, :subject, :content)";
    }

    //ROLE
    public class ROLE {
        public static final String findAll = "SELECT * FROM roles";
        public static final String findById = "SELECT * FROM roles WHERE id = :id";
    }

    //USER
    public class USER {
        public static final String findAll = "SELECT * FROM users";
        public static final String findByUserNameAndPassword = "SELECT * FROM users WHERE username = :username AND password = :password";
        public static final String register = "INSERT INTO users (username, password, email, phone, roleId,status,emailVerified) VALUES (:username, :password, :email, :phone, 1,1,0)";
        public static final String updateEmailVerifiedById = "UPDATE users SET emailVerified = 1 WHERE id = :id";
        public static final String findByUser = "SELECT * FROM users WHERE username = :username";
        public static final String findById = "SELECT * FROM users WHERE id = :id";
        public static final String findByEmail = "SELECT * FROM users WHERE email = :email";
        public static final String save = "INSERT INTO users (username, password,fullname, email, phone, roleId,emailVerified, status, avatar) VALUES (:username, :password,:fullname, :email, :phone, :roleId,:emailVerified, :status, :avatar)";
        public static final String update = "UPDATE users SET fullname = :fullname, email = :email, phone = :phone, roleId = :roleId, emailVerified = :emailVerified, status = :status, avatar = :avatar WHERE id = :id";
        public static final String delete = "DELETE FROM users WHERE id = :id";
        public static final String updatePassword = "UPDATE users SET password = :password WHERE id = :id";
        public static final String updateProfile = "UPDATE users SET fullname = :fullname, email = :email, phone = :phone WHERE id = :id";
        public static final String insertByGoogle = "INSERT INTO users (username,password,fullname, email, roleId,emailVerified, status, avatar) VALUES (:username,:password,:fullname, :email, :roleId,:emailVerified, :status, :avatar)";
    }

    //PRODUCT
    public class PRODUCT {

        public static final String INSERT_PRODUCT = "INSERT INTO products (categoryId, name, price, description, status, discount) VALUES (:categoryId, :name, :price, :description, :status, :discount)";
        public static final String SELECT_ALL_PRODUCT = "SELECT * FROM products";

        public static final String SELECT_ALL_PRODUCT_OFFSET = "SELECT products.id,products.categoryId, products.name,products.price,products.description,products.status,products.discount, products.createdDate, images.id AS image_id, images.productId, images.url FROM products LEFT JOIN images ON products.id = images.productId LIMIT ? OFFSET ?";
        public static final String SELECT_PRODUCT_BY_ID = "SELECT * FROM products WHERE id = :id";
        public static final String SELECT_PRODUCT_BY_CATEGORY_ID = "SELECT * FROM products WHERE categoryId = :categoryId";
        public static final String SELECT_PRODUCT_BY_NAME = "SELECT * FROM products WHERE name = :name";
        public static final String UPDATE_PRODUCT = "UPDATE products SET categoryId = :categoryId, name = :name, price = :price, description = :description, status = :status, discount = :discount WHERE id = :id";
        public static final String DELETE_PRODUCT = "DELETE FROM products WHERE id = :id";
        public static final String DELETE = "DELETE FROM products WHERE categoryId = :categoryId";
        public static final String SELECT_PRODUCT_WITH_IMAGES = "SELECT products.id,products.categoryId, products.name,products.price,products.description,products.status,products.discount, products.createdDate, images.id AS image_id, images.productId, images.url " +
                "FROM products " +
                "LEFT JOIN images ON products.id = images.productId " +
                "WHERE products.id = :id";
        public static final String SELECT_PRODUCTS_NEWEST =
                "SELECT * FROM products ORDER BY createdDate DESC LIMIT :limit";

        public static final String SELECT_PRODUCTS_DISCOUNT = "SELECT * FROM products WHERE discount > 0 LIMIT :limit";
        public static final String SELECT_ALL_ATTRIBUTE = "SELECT products.id,products.categoryId, products.name,products.price,products.description,products.status,products.discount, products.createdDate, images.id AS image_id, images.productId, images.url" +
                "FROM products " +
                "LEFT JOIN images ON products.id = images.productId " +
                "WHERE products.id = :id";


        // Phân trang menu
        public static final String SELECT_PRODUCT_PAGE_PRICE_DESC = "SELECT * FROM products " +
                "WHERE (categoryId IS NULL OR categoryId = :categoryId OR :categoryId IS NULL) " +
                "AND LOWER(name) LIKE LOWER(CONCAT('%', :find, '%')) " +
                "AND price >= :from AND price <= :to " +
                "ORDER BY price DESC " +
                "LIMIT :limit OFFSET :offset";
        public static final String SELECT_PRODUCT_PAGE_PRICE_ASC = "SELECT * FROM products " +
                "WHERE (categoryId IS NULL OR categoryId = :categoryId OR :categoryId IS NULL) " +
                "AND LOWER(name) LIKE LOWER(CONCAT('%', :find, '%')) " +
                "AND price >= :from AND price <= :to " +
                "ORDER BY price ASC " +
                "LIMIT :limit OFFSET :offset";
        public static final String SELECT_PRODUCT_PAGE_NAME_ASC = "SELECT * FROM products " +
                "WHERE (categoryId IS NULL OR categoryId = :categoryId OR :categoryId IS NULL) " +
                "AND LOWER(name) LIKE LOWER(CONCAT('%', :find, '%')) " +
                "AND price >= :from AND price <= :to " +
                "ORDER BY LEFT(name, 1) ASC " +
                "LIMIT :limit OFFSET :offset";
        public static final String SELECT_PRODUCT_PAGE = "SELECT * FROM products " +
                "WHERE (categoryId IS NULL OR categoryId = :categoryId OR :categoryId IS NULL) " +
                "AND LOWER(name) LIKE LOWER(CONCAT('%', :find, '%')) " +
                "AND price >= :from AND price <= :to " +
                "LIMIT :limit OFFSET :offset";
        public static final String COUNT_PRODUCT = "SELECT count(*) FROM products";

        public static final String SELECT_PRODUCTID_BY_NAME = "SELECT id FROM products WHERE name = :name";

    }

    //CATEGORY
    public class CATEGORY {
        public static final String SELECT_FIND_BYID = "SELECT * FROM categories WHERE id = :id";

        public static final String SELECT_N_CATEGORY = "SELECT * FROM categories LIMIT :limit";
        public static final String SELECT_ALL_CATEGORY = "SELECT * FROM categories";

        public static final String SELECT_FIND_BYNAME = "SELECT * FROM categories WHERE name = :name";
        public static final String SAVE_CATEGORY = "INSERT INTO categories (name, status, image) VALUES (:name, :status, :image)";
        public static final String UPDATE_CATEGORY = "UPDATE categories SET name = :name, status = :status, image = :image WHERE id = :id";
        public static final String DELETE_CATEGORY = "DELETE FROM categories WHERE id = :id";

        public static final String SELECT_CATEGORY = "SELECT * FROM categories WHERE name = 'Cà phê' OR name = 'Nước ép' OR name = 'Bánh ngọt' OR name = 'Thức uống có cồn'";
    }


    //REVIEW
    public class REVIEW {
        public static final String INSERT_REVIEW = "INSERT INTO reviews (productId, userId, content, starRate) VALUES (:productId, :userId, :content, :starRate)";
        public static final String SELECT_REVIEW_BY_PRODUCT_ID = "SELECT * FROM reviews WHERE productId = :productId";
        public static final String SELECT_ALL_REVIEW = "SELECT * FROM reviews";
        public static final String DELETE_REVIEW = "DELETE FROM reviews WHERE id = :id";
        public static final String DELETE = "DELETE FROM reviews WHERE userId = :userId";
    }


    //AREA
    public class AREA {
        public static final String SELECT_ALL_AREA = "SELECT * FROM areas";

        public static final String SELECT_AREA_BY_ID = "SELECT * FROM areas WHERE id = :id";

    }


    //TABLE
    public class TABLE {


        public static final String SELECT_ALL_TABLE = "SELECT * FROM tables";

        public static final String SELECT_TABLE_FILTER = "SELECT T.tableNum, T.seatCount, T.location, T.image\n" +
                "FROM tables T\n" +
                "LEFT JOIN reservations R ON T.id = R.tableId\n" +
                "WHERE T.status = 1 AND T.location :location AND \n" +
                "T.seatCount >= :seatCount AND\n" +
                "(R.id ISNULL OR (R.endTime <= :endTime OR R.startTime >= :startTime));\n";

        public static final String SELECT_TABLE_PAGE =
                "SELECT DISTINCT t.* FROM tables t " +
                        "LEFT JOIN reservations r ON t.id = r.tableId " +
                        "WHERE " +
                        "(areaId IS NULL OR areaId = :areaId OR :areaId IS NULL) AND " +
                        "(r.id IS NULL OR r.endTime <= CURRENT_DATE) AND " +
                        "NOT EXISTS (" +
                        "SELECT 1 FROM reservations r2 " +
                        "WHERE r2.tableId = t.id AND " +
                        "(r2.startTime <= :endTime AND r2.endTime >= :startTime)" +
                        ") AND " +
                        "(r.id IS NULL OR (r.endTime <= :startTime OR r.startTime >= :endTime)) " +
                        "AND t.seatCount >= :count AND " +
                        "LOWER(t.location) LIKE LOWER(CONCAT('%', :find, '%')) " +
                        "ORDER BY t.tableNum " +
                        "LIMIT :limit OFFSET :offset";

        public static final String COUNT_TABLE = "SELECT count(*) FROM tables";
        public static final String SELECT_TABLE_BY_ID = "SELECT * FROM tables WHERE id = :id";
        public static final String SAVE_TABLE = "INSERT INTO tables (tableNum, areaId, seatCount, location, image, status) VALUES (:tableNum, :areaId, :seatCount, :location, :image, :status)";
        public static final String UPDATE_TABLE = "UPDATE tables SET tableNum = :tableNum, areaId = :areaId, seatCount = :seatCount, location = :location, image = :image, status = :status WHERE id = :id";
        public static final String DELETE_TABLE = "DELETE FROM tables WHERE id = :id";


    }

    //PRODUCT VARIANT
    public class PRODUCTVARIANT {
        public static final String SELECT_PRODUCT_VARIANT_BY_PRODUCT_ID = "SELECT * FROM product_variants WHERE productId = :productId";

        public static final String INSERT_PRODUCT_VARIANT = "INSERT INTO product_variants (productId, size, pricePlus) VALUES (:productId, :size, :pricePlus)";
        public static final String UPDATE_PRODUCT_VARIANT = "UPDATE product_variants SET pricePlus = :pricePlus WHERE productId = :productId AND size = :sizeChange";
        public static final String DELETE_PRODUCT_VARIANT = "DELETE FROM product_variants WHERE id = :id";
        public static final String DELETE = "DELETE FROM product_variants WHERE productId = :id";
    }


    //IMAGE
    public class IMAGE {
        public static final String INSERT_IMAGE = "INSERT INTO images (productId, url) VALUES (:productId, :url)";
        public static final String SELECT_IMAGE_BY_PRODUCT_ID = "SELECT * FROM images WHERE productId = :productId";

        public static final String SELECT_IMAGE_BY_ID = "SELECT * FROM images WHERE id = :id";
        public static final String UPDATE_IMAGE = "UPDATE images SET productId = :productId, url = :url WHERE id = :id";
        public static final String DELETE = "DELETE FROM images WHERE productId = :id";
    }


    //RESERVATION
    public class RESERVATION {
        public static final String SELECT_RESERVATION_BY_USER_ID = "SELECT * FROM reservations WHERE tableId = :tableId";
        public static final String SELECT_RESERVATION_BY_ID = "SELECT * FROM reservations WHERE id = :id";
        public static final String SELECT_RESERVATION_NEWEST_BY_USER_ID = "SELECT * FROM reservations WHERE userId = :userId ORDER BY createdDate DESC";
        public static final String SELECT_RESERVATION_LATEST_BY_USER_ID = "SELECT * FROM reservations WHERE userId = :userId ORDER BY createdDate ASC";

        public static final String SELECT_ALL_RESERVATION = "SELECT * FROM reservations";
        public static final String SELECT_ALL_RESERVATION_BY_STATISTICAL = "SELECT * FROM reservations WHERE status = 1";

        public static final String SAVE_RESERVATION = "INSERT INTO reservations (tableId, userId, contactName, contactPhone, contactEmail, startTime, endTime, status, paymentMethod, note, totalPrice, createdDate) VALUES (:tableId, :userId, :contactName, :contactPhone, :contactEmail, :startTime, :endTime, :status, :paymentMethod, :note, :totalPrice, :createdDate)";
        public static final String UPDATE_RESERVATION = "UPDATE reservations SET tableId = :tableId, userId = :userId, contactName = :contactName, contactPhone = :contactPhone, contactEmail = :contactEmail, startTime = :startTime, endTime = :endTime, status = :status, paymentMethod = :paymentMethod, note = :note, totalPrice = :totalPrice, createdDate = :createdDate WHERE id = :id";
        public static final String DELETE_RESERVATION = "DELETE FROM reservations WHERE id = :id";
        public static final String DELETE_BY_USERID = "DELETE FROM reservations WHERE userId = :userId";
        public static final String DELETE_BY_TABLEID = "DELETE FROM reservations WHERE tableId = :tableId";

        public static final String SAVE = "INSERT INTO reservations (tableId, userId, contactName, contactPhone, contactEmail, startTime, endTime, status, paymentMethod, note, totalPrice) VALUES (:tableId, :userId, :contactName, :contactPhone, :contactEmail, :startTime, :endTime, :status, :paymentMethod, :note, :totalPrice)";
        public static final String SELECT_RESERVATION_ID_BY_DETAILS = "SELECT id FROM reservations WHERE tableId = :tableId AND userId = :userId AND contactName = :contactName AND contactPhone = :contactPhone AND contactEmail = :contactEmail AND startTime = :startTime AND endTime = :endTime AND status = :status AND paymentMethod = :paymentMethod AND note = :note AND totalPrice = :totalPrice";

        public static final String COUNT = "SELECT count(*) FROM reservations";
        public static final String CANCEL = "UPDATE reservations SET status = 0 WHERE id = :id";
    }

    //RESERVATION PRODUCT
    public class RESERVATION_PRODUCT {
        public static final String SELECT_RESERVATION_PRODUCT_BY_RESERV_ID = "SELECT * FROM reservation_products WHERE reservId = :reservId";
        public static final String SAVE = "INSERT INTO reservation_products (productId, reservId, quantity, price, size) VALUES (:productId, :reservId, :quantity, :price, :size)";

        public static final String DELETE = "DELETE FROM reservation_products WHERE reservId = :reservId";
    }

    //VERIFY EMAIL
    public class VERIFY_EMAIL {

        public static final String INSERT_VERIFY_EMAIL = "INSERT INTO verifications (userId, code,type) VALUES (:userId, :code, :type)";
        public static final String SELECT_VERIFY_EMAIL_BY_CODE = "SELECT * FROM verifications WHERE code = :code AND type = :type";
        public static final String DELETE_VERIFY_EMAIL_BY_USER_ID_AND_TYPE = "DELETE FROM verifications WHERE userId = :userId AND type = :type";
        public static final String DELETE = "DELETE FROM verifications WHERE id = :id";

    }

    //Statistics
    public class STATISTICAL {
        public static final String findAll = "SELECT username, phone, email, COUNT(reservations.id) as orderAmount, SUM(totalPrice) as totalCost FROM users JOIN reservations ON users.id =reservations.userId GROUP BY username,phone,email";
    }

}
