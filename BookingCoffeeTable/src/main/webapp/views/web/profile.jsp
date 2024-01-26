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

    <!-- MDB ESSENTIAL -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/css/mdb.min.css"/>"/>
    <!-- MDB PLUGINS -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/plugins/css/all.min.css"/>"/>
    <!-- Custom styles -->
    <link rel="stylesheet" href="<c:url value="/views/template/custom/css/userProfile.css"/>">
    <link rel="stylesheet" href="<c:url value="/views/template/custom/css/home.css"/>">
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
                            <c:if test="${userSession.avatar != null}">
                                 src="${userSession.avatar}"
                            </c:if>
                            <c:if test="${userSession.avatar == null}">
                                 src="<c:url value="/views/template/custom/image/avatar/default.svg"/>"
                            </c:if>
                                 alt="Avatar">
                            <ul class="meta list list-unstyled">
                                <li class="fullname"
                                    style="font-weight: bold; font-size: 20px">${userSession.fullname}</li>
                                </li>
                                <li class="email"><a href="#">${userSession.email}</a></li>
                            </ul>
                        </div>
                        <nav class="side-menu">
                            <ul class="nav">
                                <li class="active"><a href="#"><span class="fa fa-user"></span> Thông tin</a></li>
                                <li><a href="/change-password"><span class="fa fa-cog"></span> Thay đổi mật khẩu</a>
                                </li>
                                <li><a href="/history-booking"><span class="fa fa-clock-o"></span> Lịch Sử</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="content-panel">
                        <form class="form-horizontal" method="post" action="/profile">
                            <fieldset class="fieldset">
                                <h3 class="fieldset-title">Thông Tin Cá Nhân</h3>
                                <div class="form-group avatar row">
                                    <%--                                    <figure class="figure col-md-2 col-sm-3 col-xs-12">--%>
                                    <%--                                        <img class="img-rounded img-responsive"--%>
                                    <%--                                        <c:if test="${userSession.avatar != null}">--%>
                                    <%--                                             src="${userSession.avatar}"--%>
                                    <%--                                        </c:if>--%>
                                    <%--                                        <c:if test="${userSession.avatar == null}">--%>
                                    <%--                                             src="<c:url value="/views/template/custom/image/avatar/default.svg"/>"--%>
                                    <%--                                        </c:if>--%>
                                    <%--                                             alt="Avatar" id="imgProfile">--%>
                                    <%--                                    </figure>--%>
                                    <%--                                    <div class="form-inline col-md-10 col-sm-9 col-xs-12">--%>
                                    <%--                                        <input type="file" class="file-uploader pull-left">--%>
                                    <%--                                        <button type="submit" class="btn btn-sm btn-default-alt pull-left">Cập Nhật Hình--%>
                                    <%--                                            Ảnh--%>
                                    <%--                                        </button>--%>
                                    <%--                                    </div>--%>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2 col-sm-3 col-xs-12 control-label">Tên Đăng Nhập</label>
                                    <div class="col-md-10 col-sm-9 col-xs-12">
                                        <input type="text" class="form-control" value="${userSession.username}"
                                               disabled>
                                    </div>
                                </div>


                            </fieldset>
                            <fieldset class="fieldset">
                                <h3 class="fieldset-title">Contact Info</h3>
                                <div class="form-group row">
                                    <label class="col-md-2 col-sm-3 col-xs-12 control-label">Họ Và Tên</label>
                                    <div class="col-md-10 col-sm-9 col-xs-12">
                                        <input type="text" class="form-control" name="fullname"
                                               value="${userSession.fullname}">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2  col-sm-3 col-xs-12 control-label">Email</label>
                                    <div class="col-md-10 col-sm-9 col-xs-12">
                                        <input type="email" class="form-control" name="email"
                                               value="${userSession.email}">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2  col-sm-3 col-xs-12 control-label">Số Điện Thoại</label>
                                    <div class="col-md-10 col-sm-9 col-xs-12">
                                        <input type="number" class="form-control" name="phone"
                                               value="${userSession.phone}">
                                    </div>
                                </div>
                            </fieldset>
                            <hr>
                            <div class="form-group row">
                                <div class="col-md-10 col-sm-9 col-xs-12 col-md-push-2 col-sm-push-3 col-xs-push-0">
                                    <button class="btn text-white" style="background-color: #bf9369" type="submit">
                                        <span style="background-color: #bf9369; color: white">Cập nhật thông tin </span>
                                    </button>
                                </div>
                            </div>
                            <input type="hidden" name="userId" value="${userSession.id}">
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
<script src="<c:url value="/views/template/assets/js/jquery-2.1.0.min.js"/>"></script>


<!-- Global Init -->

<!-- MDB PLUGINS -->
<script type="text/javascript" src="<c:url value="/views/template/mdb/js/mdb.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/views/template/mdb/plugins/js/all.min.js"/>"></script>
<script src="<c:url value="/views/template/mdb/js/mdb.umd.min.js"/>"></script>

</body>
</html>