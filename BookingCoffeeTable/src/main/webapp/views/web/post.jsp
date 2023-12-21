<%@include file="/common/taglib.jsp" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" type="text/css" href="<c:url value="/views/template/assets/css/bootstrap.min.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/views/template/assets/css/font-awesome.css"/>">
    <link rel="stylesheet" href="<c:url value="/views/template/assets/css/templatemo-klassy-cafe.css"/>">
    <link rel="stylesheet" href="<c:url value="/views/template/assets/css/owl-carousel.css"/>">
    <link rel="stylesheet" href="<c:url value="/views/template/assets/css/lightbox.css"/>">
    <link rel="stylesheet" href="<c:url value="/views/template/assets/css/stylle.css"/>">

    <!-- MDB ESSENTIAL -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/css/mdb.min.css"/>"/>
    <!-- MDB PLUGINS -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/plugins/css/all.min.css"/>"/>

    <!-- Custom css-->
    <link rel="stylesheet" href="<c:url value="/views/template/custom/css/menu.css"/>">
    <link rel="stylesheet" href="<c:url value="/views/template/custom/css/post.css"/>">


</head>

<body>
<!-- ***** Header Area Start ***** -->
<%@ include file="layout/header.jsp" %>
<!-- ***** Header Area End ***** -->


<div class="mainContent-theme">
    <div id="article-layout" class="article-layout">
            <div class="banner-blog-header" style="margin-top: 70px">
                <img src="<c:url value="${post.coverImage}" />" alt="Tin tức">
            </div>
            <div class=" wrapper-row pd-page">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-8 col-md-9 col-sm-12 col-xs-12 pull-right">
                            <div class="content-page">
                                <div class="article-content">
                                    <div class="box-article-heading clearfix">
                                        <h1 class="sb-title-article">${post.shortDescription}</h1>
                                        <ul class="article-info-more">
                                            <li>
                                                Người viết: ${post.createdBy} lúc
                                                <time pubdate datetime="2023-09-07">${post.createdDate}</time>
                                            </li>
                                            <li>
                                                <i class="fa fa-file"></i>
                                                <a href="home.jsp">Tin tức</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="article-pages"> ${post.description} </div>
                                </div>
                                <div class="post-navigation">
                                    <div class="right">
                                        <a href="/post?id=${post.id + 1}">Bài sau →</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-3 col-sm-12 col-xs-12 pull-left">
                            <div class="sidebar-blog">
                                <div class="news-latest clearfix">
                                    <div class="sidebarblog-title title_block">
                                        <h2>
                                            Bài viết mới nhất
                                        </h2>

                                    </div>

                                    <ul class="list-news-latest layered">
                                        <c:forEach items="${postAll}" var="postAll">
                                            <li class="item-article clearfix abc">
                                                <div class="post-image">
                                                    <a href="home.jsp">
                                                        <img src="<c:url value="${postAll.thumbnail}"/>"
                                                             alt="CHÍNH THỨC RA MẮT: PHẦN QUÀ TIẾP THEO CỦA CHƯƠNG TRÌNH TÍCH ĐIỂM ĐỔI QUÀ TẠI CHUK TEA & COFFEE">
                                                    </a>
                                                </div>
                                                <div class="post-content">
                                                    <h3>
                                                        <a href="home.jsp">${postAll.shortDescription}</a>
                                                    </h3>
                                                    <span class="author">
                                                <a href="home.jsp">${postAll.createdBy}</a>
                                            </span>
                                                    <span class="date">${postAll.createdDate}</span>

                                                </div>
                                            </li>
                                        </c:forEach>
                                        <li class="d-none d-lg-flex justify-content-center">
                                            <nav aria-label="...">
                                                <ul class="pagination pagination-circle mb-0">
                                                    <li class="page-item">
                                                        <a
                                                                class="page-link"
                                                                href="#"
                                                                tabindex="-1"
                                                                aria-disabled="true"
                                                        >Trước</a
                                                        >
                                                    </li>
                                                    <li class="page-item">
                                                        <a class="page-link" href="#">1</a>
                                                    </li>
                                                    <li class="page-item active" aria-current="page">
                                                        <a class="page-link" href="#"
                                                        >2 <span class="sr-only">(current)</span></a
                                                        >
                                                    </li>
                                                    <li class="page-item">
                                                        <a class="page-link" href="#">3</a>
                                                    </li>
                                                    <li class="page-item">
                                                        <a class="page-link" href="#">Tiếp theo</a>
                                                    </li>
                                                </ul>
                                            </nav>
                                        </li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
</div>

<!-- ***** Main Banner Area Start ***** -->

<!-- ***** Main Banner Area End ***** -->

<!-- ***** Footer Start ***** -->
<!-- ***** Footer Start ***** -->
<%@ include file="layout/footer.jsp" %>
<!-- ***** Footer End ***** -->
<!-- jQuery -->
<script src="<c:url value="/views/template/assets/js/jquery-2.1.0.min.js"/>"></script>


<script type="text/javascript" src="<c:url value="/views/template/mdb/js/mdb.min.js"/>"></script>
<!-- MDB PLUGINS -->
<script type="text/javascript" src="<c:url value="/views/template/mdb/plugins/js/all.min.js"/>"></script>
<script src="<c:url value="/views/template/mdb/js/mdb.umd.min.js"/>"></script>
<script>

</script>
</body>
</html>