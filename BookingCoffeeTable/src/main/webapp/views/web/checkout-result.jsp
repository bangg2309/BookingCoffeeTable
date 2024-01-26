<%@include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>

    <title>Kết quả thanh toán</title>

    <!-- Additional CSS Files -->

    <link rel="stylesheet" href="<c:url value="/views/template/assets/css/templatemo-klassy-cafe.css"/>">
    <!-- MDB ESSENTIAL -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/css/mdb.min.css"/>"/>
    <!-- MDB PLUGINS -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/plugins/css/all.min.css"/>"/>
    <!-- Custom css-->
    <link rel="stylesheet" href="<c:url value="/views/template/custom/css/checkout-result.css"/>">
</head>
<body>
<div class="main row">
    <div class="col-md-12 d-flex justify-content-center p-2">
        <a href="home.jsp" class="logo">
            <img src="<c:url value="/views/template/custom/image/drink/logo2.png"/>" style="width: 60px;"
                 align="klassy cafe html template">
        </a>
    </div>
    <div class="col-md-12 d-flex justify-content-center flex-column p-2 email">
        <h2>Kết quả thanh toán!</h2>
        <c:if test="${not empty checkoutSuccess}">
            <div class="col-md-12 p-4 content d-flex flex-column">
                <div data-mdb-alert-init class="alert" role="alert" data-mdb-color="success">
                    <i class="fas fa-check-circle me-3"></i>${checkoutSuccess}
                </div>
                <p class="mb-4">
                    Cảm ơn bạn đã sử dụng dịch vụ của chúng tôi. Chúc bạn sẽ có những giây phút thư giãn tuyệt vời tại
                    Coffee Shop
                </p>
                <div class="d-flex justify-content-center button mt-4 pb-4">
                    <a class="btn btn-primary  " href="/home"
                       style="color: white">Quay lại trang chủ <i class="fa-solid fa-rotate-left ml-1"></i></a>
                </div>
            </div>
        </c:if>

        <c:if test="${not empty checkoutError}">
            <div data-mdb-alert-init class="alert" role="alert" data-mdb-color="danger">
                <i class="fas fa-times-circle me-3"></i>${checkoutError}
            </div>
            <p class="mb-4">
                Trong quá trình thanh toán đã xảy ra lỗi, vui lòng thanh toán lại!
            </p>
            <div class="d-flex justify-content-center button mt-4 pb-4">
                <a class="btn btn-primary  " href="/cart"
                   style="color: white">Quay lại trang thanh toán <i class="fa-solid fa-rotate-left ml-1"></i></a>
            </div>
        </c:if>
    </div>
    <ul class="list-inline text-center list-unstyled">
        <li class="list-inline-item">
            <a class="p-2 fa-lg li-ic">
                <i class="fa-brands fa-twitter fa-xl"></i>
            </a>
        </li>
        <li class="list-inline-item">
            <a class="p-2 fa-lg li-ic">
                <i class="fa-brands fa-facebook fa-xl"></i>
            </a>
        </li>
        <li class="list-inline-item">
            <a class="p-2 fa-lg ins-ic">
                <i class="fa-brands fa-instagram fa-xl"></i>
            </a>
        </li>
    </ul>
    <h3 class="font-weight-bold pb-2 d-flex justify-content-center">Coffee Shop</h3>
</div>

<script type="text/javascript" src="<c:url value="/views/template/mdb/js/mdb.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/views/template/mdb/plugins/js/all.min.js"/>"></script>
<script src="<c:url value="/views/template/mdb/js/mdb.umd.min.js"/>"></script>
</body>
</html>