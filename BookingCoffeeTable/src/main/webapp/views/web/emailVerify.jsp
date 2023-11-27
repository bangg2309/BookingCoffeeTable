<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>

    <title>Xác Nhận Gmail</title>

    <!-- Additional CSS Files -->

    <link rel="stylesheet" href="../template/assets/css/templatemo-klassy-cafe.css">
    <!-- MDB ESSENTIAL -->
    <link rel="stylesheet" href="../template/mdb/css/mdb.min.css"/>
    <!-- MDB PLUGINS -->
    <link rel="stylesheet" href="../template/mdb/plugins/css/all.min.css"/>
    <!-- Custom css-->
    <link rel="stylesheet" href="../template/custom/css/emailVerify.css">
</head>
<body>
<div class="main row">
    <div class="col-md-12 d-flex justify-content-center p-2">
        <a href="home.jsp" class="logo">
            <img src="../template/custom/image/drink/logo2.png" style="width: 60px;"
                 align="klassy cafe html template">
        </a>
    </div>
    <div class="col-md-12 d-flex justify-content-center p-2 email">
        <i class="fa fa-envelope fa-3x p-3 rounded-circle"  aria-hidden="true"></i>
    </div>
    <div class="col-md-12 p-4 content">
        <h2>Email Xác Thực</h2>
        <p class="mb-4">Xin Chào TinhNguyen <br>
            Bạn sắp bắt đầu trải nghiệm CoffeeShop. Chỉ cần nhấp vào liên kết bên dưới để xác minh địa chỉ email của bạn và
            bắt đầu. Liên kết sẽ hết hạn sau 48 giờ.
        </p>
        <div class="d-flex justify-content-center button mt-4 pb-4">
            <a class="btn btn-primary  " href="userProfile.jsp"
               style="color: white">Xác nhận gmail của tôi</a>
        </div>

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

</body>
</html>