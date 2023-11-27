
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

    <title>Đăng Nhập</title>

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

</head>

<body>
<!-- ***** Header Area Start ***** -->
<%@include file="layout/header.jsp"%>
<!-- ***** Header Area End ***** -->

<!--Main layout-->
<div class="main-login limiter shadow mb-5 bg-white rounded">
    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100 row">
                <form class="login100-form validate-form">
					<span class="login100-form-title p-b-43 mb-4">
						Đăng Nhập
					</span>
                    <div class="wrap-input100 validate-input" data-validate="Cần nhập tên đăng nhập">
                        <input class="input100" type="text" name="name">
                        <span class="focus-input100"></span>
                        <span class="label-input100">Tên đăng nhập</span>
                    </div>


                    <div class="wrap-input100 validate-input" data-validate="Cần có mật khẩu">
                        <input class="input100" type="password" name="pass">
                        <span class="focus-input100"></span>
                        <span class="label-input100">Mật khẩu</span>
                    </div>
                    <div class="d-flex justify-content-between align-content-center pl-4 pr-4 mb-2">
                        <div class="contact100-form-checkbox">
                            <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                            <label class="label-checkbox100" for="ckb1">
                                Remember me
                            </label>
                        </div>
                        <div class="">
                            <a href="passwordRetrievalUS.jsp" class="txt1 ">
                                Quên mật khẩu?
                            </a>
                        </div>
                    </div>
                        <div class="">
                            <a href="userProfile.jsp" class="login100-form-btn">
                                Đăng Nhập
                            </a>
                        </div>

                    <div class="text-center p-t-46 p-b-20 mt-4">
						<span class="txt2">
							Hoặc đăng nhập bằng
						</span>
                    </div>
                    <div class="row d-flex justify-content-center mt-2">
                        <div class="col-md-6">
                            <button class="login100-form-btn"><i class="fa-brands fa-facebook fa-2xl mr-2"></i>
                                Facebook
                            </button>
                        </div>
                        <div class="col-md-6">
                            <button class="login100-form-btn"><i class="fa-brands fa-google fa-2xl mr-2"></i>
                                Google
                            </button>
                        </div>
                    </div>
                    <div class="text-center p-t-46 p-b-20 mt-4">
						<span class="txt2">
							Bạn chưa có tài khoản?
						</span>
                    </div>
                    <div class="mt-2">
                        <a href="registerUser.jsp" class="login100-form-btn">
                            Đăng Ký
                        </a>
                    </div>
                </form>

                <div class="login100-more" style="background-image: url('../template/custom/image/login/coffee shop (1).png');">
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