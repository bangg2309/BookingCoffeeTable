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

    <title>Đăng Nhập</title>


    <!-- MDB ESSENTIAL -->
    <!-- MDB ESSENTIAL -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/css/mdb.min.css"/>"/>
    <!-- MDB PLUGINS -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/plugins/css/all.min.css"/>"/>

    <!-- Custom css-->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css"
          integrity="sha256-3sPp8BkKUE7QyPSl6VfBByBroQbKxKG7tsusY2mhbVY=" crossorigin="anonymous"/>
    <link rel="stylesheet" href="<c:url value="/views/template/custom/css/login/main.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/views/template/custom/css/home.css"/> ">

</head>

<body>
<!-- ***** Header Area Start ***** -->
<%@include file="layout/header.jsp" %>
<!-- ***** Header Area End ***** -->

<!--Main layout-->
<div class="main-login limiter shadow mb-5 bg-white rounded">
    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100 row">
                <form action="/login" method="post" class="login100-form validate-form">
					<span class="login100-form-title p-b-43 mb-4">
						Đăng Nhập
					</span>
                    <c:if test="${error != null}">
                        <div class="alert" role="alert" data-mdb-color="danger" data-mdb-alert-init>
                            <i class="fas fa-times-circle me-3"></i>
                                ${error}
                        </div>
                    </c:if>
                    <c:if test="${registerSession != null} }">
                        <div class="alert" role="alert" data-mdb-color="success" data-mdb-alert-init>
                            <i class="fas fa-check me-3"></i>
                                ${registerSession}
                        </div>
                    </c:if>
                    <c:if test="${message != null}">
                        <div class="alert" role="alert" data-mdb-color="warning" data-mdb-alert-init>
                            <i class="fas fa-exclamation-triangle me-3"></i>
                                ${message}
                        </div>
                    </c:if>
                    <div class="wrap-input100 validate-input" data-validate="Cần nhập tên đăng nhập">
                        <input class="input100" type="text" name="username">
                        <span class="focus-input100"></span>
                        <span class="label-input100">Tên đăng nhập</span>
                    </div>


                    <div class="wrap-input100 validate-input" data-validate="Cần có mật khẩu">
                        <input class="input100" type="password" name="password">
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
                            <a href="/forget-password" class="txt1 ">
                                Quên mật khẩu?
                            </a>
                        </div>
                    </div>
                    <div class="">
                        <button type="submit" class="login100-form-btn">
                            Đăng Nhập
                        </button>
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
                            <a href="https://accounts.google.com/o/oauth2/auth?scope=profile%20email&redirect_uri=http://localhost:8080/login-google&response_type=code
    &client_id=37788005886-d97gv9runl8duup9ko6kohklp2s32u3a.apps.googleusercontent.com&approval_prompt=force"
                               class="login100-form-btn"><i class="fa-brands fa-google fa-2xl mr-2"></i>
                                Google
                            </a>
                        </div>
                    </div>
                    <div class="text-center p-t-46 p-b-20 mt-4">
						<span class="txt2">
							Bạn chưa có tài khoản?
						</span>
                    </div>
                    <div class="mt-2">

                        <a href="/register" class="login100-form-btn">
                            Đăng Ký
                        </a>
                    </div>
                </form>


                <div class="login100-more" style="background-image: url('<c:url
                        value="/views/template/custom/image/login/coffee shop (1).png"/>')" ;>

                </div>
            </div>
        </div>
    </div>
</div>
<!--Main layout-->

<!-- ***** Footer Start ***** -->

<%@ include file="layout/footer.jsp" %>
<!-- ***** Footer End ***** -->

<!-- jQuery -->
<script src="<c:url value="/views/template/assets/js/jquery-2.1.0.min.js"/>"></script>
<!---->

<!-- Plugins -->

<!-- Global Init -->

<script type="text/javascript" src="<c:url value="/views/template/mdb/js/mdb.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/views/template/mdb/plugins/js/all.min.js"/>"></script>
<script src="<c:url value="/views/template/custom/js/login.js"/>"></script>
<script src="<c:url value="/views/template/mdb/js/mdb.umd.min.js"/>"></script>

<script src="<c:url value="/views/template/custom/js/login.js"/>"></script>

</body>
</html>