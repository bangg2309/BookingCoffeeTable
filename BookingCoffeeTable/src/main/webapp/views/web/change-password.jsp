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

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="<c:url value="/views/template/assets/css/templatemo-klassy-cafe.css"/>">
    <!-- MDB ESSENTIAL -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/css/mdb.min.css"/>"/>
    <!-- MDB PLUGINS -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/plugins/css/all.min.css"/>"/>
    <!-- Custom styles -->
    <link rel="stylesheet" href="<c:url value="/views/template/custom/css/userProfile.css"/>">
    <link rel="stylesheet" href="<c:url value="/views/template/custom/css/changePassword.css"/>">

</head>
<body>
<!-- ***** Header Area Start ***** -->
<%@ include file="layout/header.jsp" %>
<!-- ***** Header Area End ***** -->

<div class="main-content">
    <div class="container">
        <div class="view-account">
            <section class="module">
                <div class="module-inner">
                    <div class="side-bar ">
                        <div class="user-info">
                            <img class="img-profile img-circle img-responsive center-block"
                            <c:if test="${userSession.avatar != null}">
                                 src="${userSession.avatar}"
                            </c:if>
                            <c:if test="${userSession.avatar == null}">
                                 src="<c:url value="/views/template/custom/image/avatar/default.svg"/>"
                            </c:if>
                                 alt="Avatar">
                            <ul class="meta list list-unstyled">
                                <li class="name" style="font-weight: bold; font-size: 20px">${userSession.fullname}
                                </li>
                                <li class="email"><a href="#">${userSession.email}</a></li>
                            </ul>
                        </div>
                        <nav class="side-menu">
                            <ul class="nav">
                                <li><a href="/profile"><span class="fa fa-user"></span> Thông tin</a></li>
                                <li class="active"><a href="#"><span class="fa fa-cog"></span> Thay Đổi Mật Khẩu</a>
                                </li>
                                <li><a href="/history-booking"><span class="fa fa-clock-o"></span> Lịch Sử</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="content-panel">
                        <form class="form-horizontal" method="post" action="/change-password">
                            <fieldset class="fieldset">
                                <h3 class="fieldset-title">Thay Đổi Mật Khẩu</h3>
                                <c:if test="${messageError != null}">
                                    <div class="alert alert-danger" role="alert">
                                            ${messageError}
                                    </div>
                                </c:if>
                                <c:if test="${messageSuccess != null} }">
                                    <div class="alert" role="alert" data-mdb-color="success" data-mdb-alert-init>
                                        <i class="fas fa-check me-3"></i>
                                            ${messageSuccess}
                                    </div>
                                </c:if>
                                <div class="form-group row">
                                    <label class="col-md-3 col-sm-3 col-xs-12 control-label">Mật Khẩu Hiện Tại</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <input type="password" class="form-control" name="oldPassword">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 col-sm-3 col-xs-12 control-label">Mật Khẩu Mới</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <input type="password" class="form-control" name="newPassword">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 col-sm-3 col-xs-12 control-label">Nhập Lại Mật Khẩu</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <input type="password" class="form-control" name="confirmPassword">
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
<%@ include file="layout/footer.jsp" %>
<!-- ***** Footer End ***** -->


<!-- Global Init -->
<script src="<c:url value="/views/template/mdb/js/mdb.umd.min.js"/>"></script>
</body>
</html>