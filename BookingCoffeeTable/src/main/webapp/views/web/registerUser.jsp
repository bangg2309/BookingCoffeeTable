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

    <title>Đăng Ký</title>

    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="../template/assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../template/assets/css/font-awesome.css">
    <link rel="stylesheet" href="../template/assets/css/templatemo-klassy-cafe.css">
    <link rel="stylesheet" href="../template/assets/css/owl-carousel.css">
    <link rel="stylesheet" href="../template/assets/css/lightbox.css">
    <link rel="stylesheet" href="../template/assets/css/stylle.css">

    <!-- MDB ESSENTIAL -->
    <link rel="stylesheet" href="../template/mdb/css/mdb.min.css"/>
    <!-- MDB PLUGINS -->
    <link rel="stylesheet" href="../template/mdb/plugins/css/all.min.css"/>

    <!-- Custom css-->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css"
          integrity="sha256-3sPp8BkKUE7QyPSl6VfBByBroQbKxKG7tsusY2mhbVY=" crossorigin="anonymous"/>
    <link rel="stylesheet" href="../template/custom/css/login/main.css">
    <link rel="stylesheet" href="../template/custom/css/registerUser.css">


</head>

<body>
<!-- ***** Header Area Start ***** -->
<%@ include file="layout/header.jsp"%>
<!-- ***** Header Area End ***** -->


<!--Main layout-->
<div class="main-login limiter shadow  mb-5 bg-white rounded" style="margin-top: 80px">
    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100 row">
                <form class="login100-form validate-form">
					<span class="login100-form-title p-b-43 mb-4">
						Đăng Ký
					</span>
                    <div class="wrap-input100 validate-input" data-validate="Cần nhập tên đăng nhập">
                        <input class="input100" type="text" name="name">
                        <span class="focus-input100"></span>
                        <span class="label-input100">Tên đăng nhập</span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Cần nhập số điện thoại người đăng ký">
                        <input class="input100" type="text" name="phone">
                        <span class="focus-input100"></span>
                        <span class="label-input100">Số điện thoại</span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Cần có email hợp lệ: ex@abc.xyz">
                        <input class="input100" type="text" name="email">
                        <span class="focus-input100"></span>
                        <span class="label-input100">Email</span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Cần có mật khẩu">
                        <input class="input100" type="password" name="pass">
                        <span class="focus-input100"></span>
                        <span class="label-input100">Mật khẩu</span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Cần có mật khẩu">
                        <input class="input100" type="password" name="pass">
                        <span class="focus-input100"></span>
                        <span class="label-input100">Nhập lại mật khẩu</span>
                    </div>

                        <div class="">
                            <a href="emailVerify.jsp" class="login100-form-btn mt-4">
                                Đăng Ký
                            </a>
                        </div>
                </form>

                <div class="login100-more" style="background-image: url('../template/custom/image/registerUser/coffee shop (2).png');">
                </div>
            </div>
        </div>
    </div>
</div>
<!--Main layout-->

<!-- ***** Footer Start ***** -->
<%@ include file="layout/footer.jsp"%>
<!-- ***** Footer End ***** -->

<!-- jQuery -->
<script src="../template/assets/js/jquery-2.1.0.min.js"></script>


<script type="text/javascript" src="../template/mdb/js/mdb.min.js"></script>
<!-- MDB PLUGINS -->
<script type="text/javascript" src="../template/mdb/plugins/js/all.min.js"></script>
<script src="../template/mdb/js/mdb.umd.min.js"></script>


<!--===============================================================================================-->
<script src="../template/custom/js/login.js"></script>
</body>
</html>