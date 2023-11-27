<%@include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <title>Material Design for Bootstrap</title>
    <!-- MDB icon -->
    <link rel="icon" href="img/mdb-favicon.ico" type="image/x-icon"/>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
    <!-- Google Fonts Roboto -->

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
    <!-- Custom styles -->

    <link rel="stylesheet" href="../template/custom/css/userProfile.css">
    <link rel="stylesheet" href="../template/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css">

</head>
<body>
<!-- ***** Header Area Start ***** -->
<%@ include file="layout/header.jsp" %>
<!-- ***** Header Area End ***** -->
<div class="main-content" style="margin-top: 80px">
    <div class="container">
        <div class="view-account">
            <section class="module">
                <div class="module-inner">
                    <div class="side-bar ">
                        <div class="user-info">
                            <img class="img-profile img-circle img-responsive center-block"
                                 src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="">
                            <ul class="meta list list-unstyled">
                                <li class="name" style="font-weight: bold; font-size: 20px">Nguyễn Hửu Tính
                                </li>
                                <li class="email"><a href="#">huutinh2412@gmail.com</a></li>
                            </ul>
                        </div>
                        <nav class="side-menu">
                            <ul class="nav">
                                <li class="active"><a href="#"><span class="fa fa-user"></span> Thông tin</a></li>
                                <li><a href="changePassword.jsp"><span class="fa fa-cog"></span> Thay đổi mật khẩu</a>
                                </li>
                                <li><a href="historyBooking.jsp"><span class="fa fa-clock-o"></span> Lịch Sử</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="content-panel">
                        <form class="form-horizontal">
                            <fieldset class="fieldset">
                                <h3 class="fieldset-title">Thông Tin Cá Nhân</h3>
                                <div class="form-group avatar row">
                                    <figure class="figure col-md-2 col-sm-3 col-xs-12">
                                        <img class="img-rounded img-responsive"
                                             src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="">
                                    </figure>
                                    <div class="form-inline col-md-10 col-sm-9 col-xs-12">
                                        <input type="file" class="file-uploader pull-left">
                                        <button type="submit" class="btn btn-sm btn-default-alt pull-left">Cập Nhật Hình
                                            Ảnh
                                        </button>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2 col-sm-3 col-xs-12 control-label">Tên Đăng Nhập</label>
                                    <div class="col-md-10 col-sm-9 col-xs-12">
                                        <input type="text" class="form-control" value="huutinh" disabled>
                                    </div>
                                </div>


                            </fieldset>
                            <fieldset class="fieldset">
                                <h3 class="fieldset-title">Contact Info</h3>
                                <div class="form-group row">
                                    <label class="col-md-2 col-sm-3 col-xs-12 control-label">Họ Và Tên</label>
                                    <div class="col-md-10 col-sm-9 col-xs-12">
                                        <input type="text" class="form-control" value="Sanders">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2  col-sm-3 col-xs-12 control-label">Email</label>
                                    <div class="col-md-10 col-sm-9 col-xs-12">
                                        <input type="email" class="form-control" value="Rebecca@website.com">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2  col-sm-3 col-xs-12 control-label">Số Điện Thoại</label>
                                    <div class="col-md-10 col-sm-9 col-xs-12">
                                        <input type="number" class="form-control" value="SpeedyBecky">
                                    </div>
                                </div>
                            </fieldset>
                            <hr>
                            <div class="form-group row">
                                <div class="col-md-10 col-sm-9 col-xs-12 col-md-push-2 col-sm-push-3 col-xs-push-0">
                                    <input class="btn text-white" style="background-color: #bf9369" type="submit"
                                           value="Update Profile" style="background-color: #bf9369; color: white">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
<!-- ***** Footer Start ***** -->
<%@ include file="layout/footer.jsp" %>
<!-- ***** Footer End ***** -->

<!-- jQuery -->
<script src="../template/assets/js/jquery-2.1.0.min.js"></script>


<!-- Global Init -->

<!-- MDB PLUGINS -->
<script type="text/javascript" src="../template/mdb/js/mdb.min.js"></script>
<script type="text/javascript" src="../template/mdb/plugins/js/all.min.js"></script>
<script src="../template/mdb/js/mdb.umd.min.js"></script>
</body>
</html>