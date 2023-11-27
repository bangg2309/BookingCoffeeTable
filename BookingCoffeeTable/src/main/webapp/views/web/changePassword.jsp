<%@include file="/common/taglib.jsp"%>
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

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="../template/assets/css/templatemo-klassy-cafe.css">
    <!-- MDB ESSENTIAL -->
    <link rel="stylesheet" href="../template/mdb/css/mdb.min.css"/>
    <!-- MDB PLUGINS -->
    <link rel="stylesheet" href="../template/mdb/plugins/css/all.min.css"/>
    <!-- Custom styles -->
    <link rel="stylesheet" href="../template/custom/css/userProfile.css">
    <link rel="stylesheet" href="../template/custom/css/changePassword.css">

</head>
<body>
<!-- ***** Header Area Start ***** -->
<%@ include file="layout/header.jsp"%>
<!-- ***** Header Area End ***** -->

<div class="main-content">
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
                                <li><a href="userProfile.jsp"><span class="fa fa-user"></span> Thông tin</a></li>
                                <li class="active"><a href="#"><span class="fa fa-cog"></span> Thay Đổi Mật Khẩu</a>
                                </li>
                                <li><a href="historyBooking.jsp"><span class="fa fa-clock-o"></span> Lịch Sử</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="content-panel">
                        <form class="form-horizontal">
                            <fieldset class="fieldset">
                                <h3 class="fieldset-title">Thay Đổi Mật Khẩu</h3>
                                <div class="form-group row">
                                    <label class="col-md-3 col-sm-3 col-xs-12 control-label">Mật Khẩu Hiện Tại</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <input type="password" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 col-sm-3 col-xs-12 control-label">Mật Khẩu Mới</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <input type="password" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 col-sm-3 col-xs-12 control-label">Nhập Lại Mật Khẩu</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <input type="password" class="form-control">
                                    </div>
                                </div>
                            </fieldset>
                            <hr>
                            <div class="form-group row">
                                <div class="col-md-10 col-sm-9 col-xs-12 col-md-push-2 col-sm-push-3 col-xs-push-0">
                                    <input class="btn " type="submit" value="Cập Nhật Mật Khẩu"
                                           style="background-color: #bf9369; color: white">
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
<%@ include file="layout/footer.jsp"%>
<!-- ***** Footer End ***** -->


<!-- Global Init -->
<script src="../template/mdb/js/mdb.umd.min.js"></script>
</body>
</html>