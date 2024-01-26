<%@include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>

    <title>Menu</title>

    <!-- Additional CSS Files -->
    <%--    <link rel="stylesheet" href="<c:url value="/views/template/assets/css/owl-carousel.css"/>">--%>

    <!-- MDB ESSENTIAL -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/css/mdb.min.css"/>"/>
    <!-- MDB PLUGINS -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/plugins/css/all.min.css"/>"/>

    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/sweetalert2@11">

    <!-- Custom css-->
    <link rel="stylesheet" href="<c:url value="/views/template/custom/css/menu.css"/>">
</head>

<body>

<!-- ***** Header Area Start ***** -->
<%@ include file="layout/header.jsp" %>
<!-- ***** Header Area End ***** -->


<div class="main_content" style="margin-top: 80px">

    <!--Main layout-->
    <main class="mb-6 mt-2">
        <div class="container">
            <div class="row gx-lg-5">
                <div class="col-lg-3 d-none d-lg-block mt-2">
                    <!-- Section: Filters -->
                    <section class="">
                        <!-- Section: Search -->
                        <section class="mb-5">
                            <div class="d-flex">
                                <input
                                        id="search-text" ;
                                        type="search"
                                        class="form-control rounded me-1"
                                        placeholder="Search"
                                        aria-label="Search"
                                        aria-describedby="search-addon"
                                />
                                <a
                                        href="#!"
                                        role="button"
                                        class="
                        btn btn-link btn-floating
                        text-reset
                        overflow-visible
                        "
                                >
                                    <i class="fas fa-search"></i>
                                </a>
                            </div>
                        </section>
                        <!-- Section: Search -->

                        <!-- Section: Categories -->
                        <section class="mb-5">
                            <a href="#!" class="font-weight-bold text-reset category-link" data-category-value="0"
                               style="font-size: larger">Danh mục</a>

                            <div class="text-muted small text-uppercase">
                                <c:forEach var="category" items="${categories}" varStatus="loop">
                                    <p class="mt-3">
                                        <a href="#!" class="text-reset category-link"
                                           data-category-value="${loop.index + 1}" style="text-transform: uppercase">
                                                ${category.name}
                                        </a>
                                    </p>
                                </c:forEach>
                            </div>
                        </section>

                        <!-- Section: Categories -->


                        <!-- Section: Avg. Customer Review -->
                        <section class="mb-5">
                            <h5 class="fw-bold mb-4">Đánh giá</h5>

                            <a href="#!" class="d-flex align-items-center mb-3">
                                <ul
                                        class="rating me-2"
                                        data-mdb-toggle="rating"
                                        data-mdb-readonly="true"
                                        data-mdb-value="4"
                                >
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                </ul>
                                <small class="text-muted">& Lớn hơn</small>
                            </a>

                            <a href="#!" class="d-flex align-items-center mb-3">
                                <ul
                                        class="rating me-2"
                                        data-mdb-toggle="rating"
                                        data-mdb-readonly="true"
                                        data-mdb-value="3"
                                >
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                </ul>
                                <small class="text-muted">& Lớn hơn</small>
                            </a>

                            <a href="#!" class="d-flex align-items-center mb-3">
                                <ul
                                        class="rating me-2"
                                        data-mdb-toggle="rating"
                                        data-mdb-readonly="true"
                                        data-mdb-value="2"
                                >
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                </ul>
                                <small class="text-muted">& Lớn hơn</small>
                            </a>

                            <a href="#!" class="d-flex align-items-center mb-3">
                                <ul
                                        class="rating me-2"
                                        data-mdb-toggle="rating"
                                        data-mdb-readonly="true"
                                        data-mdb-value="1"
                                >
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                </ul>
                                <small class="text-muted">& Lớn hơn</small>
                            </a>
                        </section>
                        <!-- Section: Avg. Customer Review -->

                        <!-- Section: Price - radio -->
                        <section class="mb-5">
                            <h5 class="fw-bold mb-4">Giá</h5>

                            <div class="form-check mb-3">
                                <input
                                        class="form-check-input"
                                        type="radio"
                                        name="radioForm"
                                        id="radioCondition1"

                                />
                                <label class="form-check-label" for="radioCondition1">
                                    Dưới 25.000đ
                                </label>
                            </div>

                            <div class="form-check mb-3">
                                <input
                                        class="form-check-input"
                                        type="radio"
                                        name="radioForm"
                                        id="radioCondition2"
                                />
                                <label class="form-check-label" for="radioCondition2">
                                    25.000đ - 50.000đ
                                </label>
                            </div>

                            <div class="form-check mb-3">
                                <input
                                        class="form-check-input"
                                        type="radio"
                                        name="radioForm"
                                        id="radioCondition3"
                                />
                                <label class="form-check-label" for="radioCondition2">
                                    50.000đ - 100.000đ
                                </label>
                            </div>

                            <div class="form-check mb-3">
                                <input
                                        class="form-check-input"
                                        type="radio"
                                        name="radioForm"
                                        id="radioCondition4"
                                />
                                <label class="form-check-label" for="radioCondition2">
                                    100.000đ - 200.000đ
                                </label>
                            </div>


                        </section>
                        <!-- Section:  Price - radio -->

                    </section>
                    <!-- Section: Filters -->
                </div>

                <div class="col-lg-9">
                    <!--Section: Sorting-->
                    <section class="mb-6">
                        <div class="row d-flex justify-content-between">
                            <div class="col-4 col-lg-3 text-center text-lg-start mt-2">
                                <button
                                        class="btn btn-link btn-floating text-reset btn-lg active"
                                >
                                    <i class="fas fa-th-list fa-lg"></i>
                                </button>
                                <!--                                <button class="btn btn-link btn-floating text-reset btn-lg">-->
                                <!--                                    <i class="fas fa-th-large fa-lg"></i>-->
                                <!--                                </button>-->
                            </div>

                            <div class="col-8 col-lg-6 d-flex justify-content-end mt-2">
                                <select data-mdb-select-init id="sort-by">
                                    <option value="0">Mặc định</option>
                                    <option value="1">Tên</option>
                                    <option value="2">Giá cao nhất</option>
                                    <option value="3">Giá thấp nhất</option>
                                </select>
                                <label class="form-label select-label" id="apply">Sắp xếp</label>
                            </div>


                        </div>
                    </section>
                    <!--Section: Sorting-->

                    <!-- Section: Products -->
                    <section class="mb-8">
                        <div class="row gx-xl-5 justify-content-center yourContainer">

                        </div>
                        <ul class="pagination" id="pagination"></ul>
                        <input type="hidden" value="" id="page" name="page">
                        <input type="hidden" value="" id="maxPageItem" name="maxPageItem">
                    </section>
                </div>
            </div>
        </div>
    </main>
    <!--Main layout-->

</div>
<!-- ***** Main Banner Area Start ***** -->

<!-- ***** Main Banner Area End ***** -->

<!-- ***** Footer Start ***** -->
<%@ include file="layout/footer.jsp" %>
<!-- ***** Footer End ***** -->

<!-- jQuery -->
<script src="${pageContext.request.contextPath}/views/template/assets/js/jquery-2.1.0.min.js"></script>
<script src="${pageContext.request.contextPath}/views/template/mdb/js/mdb.min.js"></script>
<script src="${pageContext.request.contextPath}/views/template/mdb/plugins/js/all.min.js"></script>


<script src="<c:url value="/views/template/mdb/js/mdb.umd.min.js"/>"></script>

<script src="<c:url value="/views/template/paging/jquery.twbsPagination.min.js"/>"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<!---->
<script type="text/javascript">
    let totalPages = ${totalPage};
    let currentPage = 1;
    let count = $('#filterPeople').val();
    let categoryValue = ${category-value};
    let find = "";
    let orderBy = "";
    const limit = 9;
    let ratingValue = 0;
    var firstPrice = 0;
    var secondPrice = 1000000;
    $(document).ready(function () {
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: totalPages,
            visiblePages: 5,
            startPage: currentPage,
            onPageClick: function (event, page) {
                if (currentPage != page) {
                    currentPage = page;
                    ajaxRun(categoryValue, find, orderBy, ratingValue, firstPrice, secondPrice);
                }
            }
        });
    });

    // Đặt sự kiện click cho các liên kết danh mục
    var categoryLinks = document.querySelectorAll('.category-link');
    categoryLinks.forEach(function (link) {
        link.addEventListener('click', function (event) {
            event.preventDefault();

            // Lấy giá trị danh mục từ thuộc tính data-category-value
            categoryValue = this.getAttribute('data-category-value');

            // Hiển thị giá trị trong console (có thể thay đổi thành việc xử lý giá trị theo yêu cầu của bạn)
            console.log("Selected category value: " + categoryValue);
            ajaxRun(categoryValue, find, orderBy, ratingValue, firstPrice, secondPrice);
        });
    });

    $("#search-text").on('keyup', function () {
        currentPage = 1; // Đặt lại currentPage về 1 khi có sự kiện tìm kiếm
        find = $(this).val();
        console.log(find);
        // Gọi hàm update của twbsPagination để cập nhật giá trị currentPage
        window.pagObj.twbsPagination('destroy'); // Hủy bỏ phân trang hiện tại
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: totalPages,
            visiblePages: 5,
            startPage: currentPage,
            onPageClick: function (event, page) {
                if (currentPage != page) {
                    currentPage = page;
                    ajaxRun(categoryValue, find, orderBy, ratingValue, firstPrice, secondPrice);
                }
            }
        });
        ajaxRun(categoryValue, find, orderBy, ratingValue, firstPrice, secondPrice);
    });

    $('#sort-by').change(function () {
        // Lấy giá trị được chọn
        var selectedValue = $(this).val();

        // Gọi hàm xử lý hoặc thực hiện các công việc khác tùy thuộc vào giá trị được chọn
        handleSortSelection(selectedValue);
    });

    // Hàm xử lý với giá trị được chọn
    function handleSortSelection(selectedValue) {

        switch (selectedValue) {

            case '0':
                // Xử lý khi chọn "Mặc định"
                currentPage = 1
                console.log('Chọn mặc định');
                orderBy = ""
                window.pagObj.twbsPagination('destroy'); // Hủy bỏ phân trang hiện tại
                window.pagObj = $('#pagination').twbsPagination({
                    totalPages: totalPages,
                    visiblePages: 5,
                    startPage: currentPage,
                    onPageClick: function (event, page) {
                        if (currentPage != page) {
                            currentPage = page;
                            ajaxRun(categoryValue, find, orderBy, ratingValue, firstPrice, secondPrice);
                        }
                    }
                });
                ajaxRun(categoryValue, find, orderBy, ratingValue, firstPrice, secondPrice);
                break;
            case '1':
                // Xử lý khi chọn "Tên"
                currentPage = 1
                console.log('Chọn theo tên');
                orderBy = "name_DESC"
                window.pagObj.twbsPagination('destroy'); // Hủy bỏ phân trang hiện tại
                window.pagObj = $('#pagination').twbsPagination({
                    totalPages: totalPages,
                    visiblePages: 5,
                    startPage: currentPage,
                    onPageClick: function (event, page) {
                        if (currentPage != page) {
                            currentPage = page;
                            ajaxRun(categoryValue, find, orderBy, ratingValue, firstPrice, secondPrice);
                        }
                    }
                });
                ajaxRun(categoryValue, find, orderBy, ratingValue, firstPrice, secondPrice);
                break;
            case '2':
                // Xử lý khi chọn "Giá cao nhất"
                currentPage = 1;
                console.log('Chọn theo giá cao nhất');
                orderBy = "price_DESC"
                window.pagObj.twbsPagination('destroy'); // Hủy bỏ phân trang hiện tại
                window.pagObj = $('#pagination').twbsPagination({
                    totalPages: totalPages,
                    visiblePages: 5,
                    startPage: currentPage,
                    onPageClick: function (event, page) {
                        if (currentPage != page) {
                            currentPage = page;
                            ajaxRun(categoryValue, find, orderBy, ratingValue, firstPrice, secondPrice);
                        }
                    }
                });
                ajaxRun(categoryValue, find, orderBy, ratingValue, firstPrice, secondPrice);
                break;
            case '3':
                // Xử lý khi chọn "Giá thấp nhất"
                currentPage = 1;
                console.log('Chọn theo giá thấp nhất');
                orderBy = "price_ASC"
                window.pagObj.twbsPagination('destroy'); // Hủy bỏ phân trang hiện tại
                window.pagObj = $('#pagination').twbsPagination({
                    totalPages: totalPages,
                    visiblePages: 5,
                    startPage: currentPage,
                    onPageClick: function (event, page) {
                        if (currentPage != page) {
                            currentPage = page;
                            ajaxRun(categoryValue, find, orderBy, ratingValue, firstPrice, secondPrice);
                        }
                    }
                });
                ajaxRun(categoryValue, find, orderBy, ratingValue, firstPrice, secondPrice);
                break;
            default:
                // Xử lý mặc định hoặc các giá trị khác nếu cần
                break;
        }
    }

    $(document).ready(function () {
        // Attach click event to each star
        $('.rating li').on('click', function () {
            // Get the value from the data-mdb-value attribute
            ratingValue = $(this).closest('ul').data('mdb-value');

            // Log or use the rating value as needed
            console.log(ratingValue);
            ajaxRun(categoryValue, find, orderBy, ratingValue, firstPrice, secondPrice);
            // Add your logic here to do something with the rating value
        });
    });

    $(document).ready(function () {
        // Attach change event to radio buttons
        $('input[name="radioForm"]').on('change', function () {
            // Get the value of the selected radio button
            var selectedValue = $('input[name="radioForm"]:checked').next('label').text().trim();

            // Extract the numbers from the selected value using regex
            var priceRange = selectedValue.match(/\d+/g); // Match all sequences of digits

            // Now 'priceRange' will hold an array of numbers found in the string
            console.log('Prices:', priceRange);

            // You can further process 'priceRange' as needed (e.g., access individual values by index)
            if (priceRange && priceRange.length >= 2) {
                var result = priceRange[0];


                if (priceRange[2] == null) {
                    priceRange[2] = result;
                    priceRange[0] = 0;
                    secondPrice = parseInt(priceRange[2] + "000");
                }
                firstPrice = parseInt(priceRange[0] + "000"); // Convert the string to an integer
                secondPrice = parseInt(priceRange[2] + "000"); // Convert the string to an integer

                console.log('First Price:', firstPrice);
                console.log('Second Price:', secondPrice);
                ajaxRun(categoryValue, find, orderBy, ratingValue, firstPrice, secondPrice);
                // Further processing with the extracted prices
            }
        });
    });


    function ajaxRun(categoryValue, find, orderBy, ratingValue, firstPrice, secondPrice) {
        $.ajax({
            type: "POST",
            url: "/menus?page-index=" + currentPage + "&per-page=" + limit + "&categoryValue=" + categoryValue + "&find=" + find + "&orderBy=" + orderBy + "&ratingValue=" + ratingValue + "&firstPrice=" + firstPrice + "&secondPrice=" + secondPrice,
            dataType: 'json',
            contentType: "application/json; charset=utf-8",
            success: function (json) {
                let data = "";
                let obj = json;
                for (let i = 0; i < obj.length; i++) {
                    let val = obj[i];
                    // onclick="return theFunction();"
                    data += '<div class="col-lg-4 col-6 mb-4">' +
                        '<!-- Product card -->' +
                        '<div>' +
                        '<!-- Product image -->' +
                        '<div ' +
                        'class="' +
                        'bg-image ripple ' +
                        'shadow-4-soft ' +
                        'rounded-6 ' +
                        'mb-4 ' +
                        'overflow-hidden ' +
                        'd-block ' +
                        '" ' +
                        'data-ripple-color="light" ' +
                        '>' +
                        '<img src="' + val.images[0].url + '" class="w-100" alt=""/>' +
                        '<a href="/product-detail?id=' + val.id + '">' +
                        '<div class="mask">' +
                        '<div ' +
                        'class="' +
                        'd-flex ' +
                        'justify-content-start ' +
                        'align-items-end ' +
                        'h-100 ' +
                        'p-3 ' +
                        '" ' +
                        '>' + generateDiscountBadge(val.discount, val.createdDate) +
                        '</div>' +
                        '</div>' +
                        '<div class="hover-overlay">' +
                        '<div ' +
                        'class="mask" ' +
                        'style="' +
                        'background-color: hsla(0, 0%, 98.4%, 0.15)' +
                        '"' +
                        '></div>' +
                        '</div>' +
                        '</a>' +
                        '</div>' +
                        '<!-- Product content -->' +
                        '<div class="px-3 text-reset d-block">' +
                        '<p class="fw-bold mb-2">' + val.name + '</p>' +
                        '<ul ' +
                        'class="rating mb-2" ' +
                        'data-mdb-toggle="rating" ' +
                        'data-mdb-readonly="true" ' +
                        'data-mdb-value="' + val.averageRating + '" ' +
                        '>' +
                        '<li>' +
                        '<i ' +
                        'class="far fa-star fa-sm color_far ps-0" ' +
                        'title="Bad" ' +
                        '></i>' +
                        '</li>' +
                        '<li>' +
                        '<i ' +
                        'class="far fa-star fa-sm color_far" ' +
                        'title="Poor" ' +
                        '></i>' +
                        '</li>' +
                        '<li>' +
                        '<i ' +
                        'class="far fa-star fa-sm color_far" ' +
                        'title="OK" ' +
                        '></i>' +
                        '</li>' +
                        '<li>' +
                        '<i ' +
                        'class="far fa-star fa-sm color_far" ' +
                        'title="Good" ' +
                        '></i>' +
                        '</li>' +
                        '<li>' +
                        '<i ' +
                        'class="far fa-star fa-sm color_far" ' +
                        'title="Excellent" ' +
                        '></i>' +
                        '</li>' +
                        '</ul>' +
                        '<h5 class="mb-3">' + generatePriceElement(val.price, val.discount) + '</h5>' +
                        '<button ' +
                        'type="button" ' +
                        'class="btn btn-primary btn-rounded w-100 color_btn" ' +
                        'onclick="addToCart(' + val.id + ',\'' + val.size + '\',' + 1 + ')"' +
                        '>' +
                        '<i class="fas fa-cart-plus me-2"></i>Thêm vào bàn' +
                        '</button>' +
                        '</div>' +
                        '<!-- Product content -->' +
                        '</div>' +
                        '<!-- Product card -->' +
                        '</div>';

                }

                $(".yourContainer").html(data);
                reloadJsFile("${pageContext.request.contextPath}/views/template/mdb/js/mdb.min.js");
            },
            error: function (xhr, status, error) {
                console.log(status, error);
            }
        });
    };

    ajaxRun(categoryValue, find, orderBy, ratingValue, firstPrice, secondPrice);

    function isNewProduct(createTimestamp) {
        // Lấy timestamp hiện tại
        var currentTimestamp = Date.now();

        // Tính số miligiây trong 10 ngày
        var tenDaysInMilliseconds = 1000 * 24 * 60 * 60 * 1000;

        // So sánh timestamp tạo với timestamp hiện tại và xem liệu nó có nằm trong 10 ngày không
        return currentTimestamp - createTimestamp < tenDaysInMilliseconds;
    }


    function generateDiscountBadge(discount, createdDate) {
        // Chuyển đổi createdDate thành timestamp

        var createTimestamp = new Date(createdDate).getTime();
        var discountBadge = '';
        if (discount !== 0) {
            discountBadge = '<span ' +
                'class="' +
                'badge badge-danger ' +
                'rounded-pill ' +
                'me-2 ' +
                '" ' +
                '>' + '-' + discount + '%' + '</span>';

            // Nếu sản phẩm mới, thêm cục "New" vào

        }
        if (isNewProduct(createTimestamp)) {
            discountBadge += '<span ' +
                'class="' +
                'badge badge-success ' +
                'rounded-pill ' +
                'me-2 ' +
                '">' +
                'New' +
                '</span>';
        }
        return discountBadge;


    }

    function generatePriceElement(price, discount) {
        let priceElement = '';
        if (discount > 0) {
            priceElement = '<s class="text-muted me-2 small align-middle">' + formatCurrency(price) + '</s> ' + formatCurrency(price - price * discount / 100);
        } else {
            priceElement = formatCurrency(price);
        }
        return priceElement;
    }


    function formatCurrency(amount) {
        var formatter = new Intl.NumberFormat('vi-VN', {
            style: 'currency',
            currency: 'VND'
        });

        var formattedMoney = formatter.format(amount);

        // Xóa khoảng trắng và ký hiệu tiền tệ để có chuỗi số nguyên
        var integerPart = formattedMoney.replace(/\s|₫/g, '');

        // Thêm ký hiệu "đ" vào sau số tiền
        return integerPart + 'đ';
    }


    function reloadJsFile(src) {
        // Remove the existing script tag
        $('script[src="' + src + '"]').remove();

        // Create a new script element
        var script = document.createElement('script');
        script.type = 'text/javascript';
        script.src = src;

        // Append the new script element to the document head
        document.head.appendChild(script);
    }

    function addToCart(id, size, quantity) {
        $.ajax({
            url: '/add-cart?id=' + id + '&size=' + size + '&quantity=' + quantity,
            type: 'GET',
            success: function (data) {
                Swal.fire({
                    position: "center",
                    icon: "success",
                    title: "Thêm sản phẩm thành công!",
                    fontsize: 20,
                    showConfirmButton: false,
                    width: 300,
                    height: 50,
                    timer: 1000
                });
            },
            error: function (data) {
                Swal.fire({
                    position: "center",
                    icon: "error",
                    title: "Thêm sản phẩm thất bại!",
                    fontsize: 20,
                    showConfirmButton: false,
                    width: 300,
                    height: 50,
                    timer: 1000
                });
            }
        });
    }
</script>

<!-- Plugins -->

<!-- Global Init -->


</body>

</html>