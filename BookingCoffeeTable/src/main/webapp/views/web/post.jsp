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

    <title>Menu</title>

    <!-- Additional CSS Files -->


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
        <div class=" banner-blog-header">
            <img src="<c:url value="/views/template/custom/image/post/background.jpg" />" alt="Tin tức">
        </div>
        <!--    <div class="breadcrumb-shop">-->
        <!--      <div class="container-fluid">-->
        <!--        <div class="row">-->
        <!--          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 pd5 blog-breadcrumb ">-->
        <!--            -->
        <!--          </div>-->
        <!--        </div>-->
        <!--      </div>-->
        <!--    </div>-->
        <div class=" wrapper-row pd-page">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 pull-right">
                        <div class="content-page">

                            <div class="article-content">
                                <div class="box-article-heading clearfix">
                                    <h1 class="sb-title-article" style="text-transform: uppercase">${post.title}</h1>
                                    <ul class="article-info-more">
                                        <li>
                                            Người viết: ${post.createdBy}
                                            <time pubdate datetime="2023-09-07">${post.createdDate}</time>
                                        </li>
                                        <li>
                                            <i class="fa fa-file"></i>
                                            <a href="home.jsp">Tin tức</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="article-pages">
                                    ${post.shortDescription}
                                    <div>
                                        ${post.description}

                                    </div>
                                </div>
                                <div class="post-navigation">
                                    <div class="right">
                                        <a href="/post?id=${post.id + 1}">Bài sau →</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 pull-left">
                        <div class="sidebar-blog">
                            <div class="news-latest clearfix">
                                <div class="sidebarblog-title title_block">
                                    <h2>
                                        Bài viết mới nhất
                                        <!--                    <span class="fa fa-angle-down"></span>-->
                                    </h2>

                                </div>
                                <ul class="list-news-latest layered" id="yourContainer">

                                </ul>
                                <ul class="pagination" id="pagination"></ul>
                                <input type="hidden" value="" id="page" name="page">
                                <input type="hidden" value="" id="maxPageItem" name="maxPageItem">
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
<script src="<c:url value="/views/template/paging/jquery.twbsPagination.min.js"/>"></script>
<script type="text/javascript">

    let totalPages = ${totalPage};
    let currentPage = 1;
    const limit = 3;
    $(function () {
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: totalPages,
            visiblePages: 2,
            startPage: currentPage,
            onPageClick: function (event, page) {
                if (currentPage != page) {
                    currentPage = page;
                    ajaxRun();
                }
            }
        });
    });

    function ajaxRun() {
        $.ajax({
            type: "Post",
            url: "/posts?page-index=" + currentPage + "&per-page=" + limit,
            ContentType: 'json',
            headers: {Accept: "application/json;charset=utf-8"},
            success: function (json) {
                let data = "";
                let obj = json;
                for (let i = 0; i < obj.length; i++) {
                    let val = obj[i];
                    // onclick="return theFunction();"
                    data += "<li class='item-article clearfix abc'>"
                        + "<div class='post-image'>"
                        + "<a href='/post?id=" + val.id + "'>"
                        + "<img src='" + val.thumbnail + "' class='w-100' alt=''/>"
                        + "</a>"
                        + "</div>"
                        + "<div class='post-content'>"
                        + "<h3><a href='/post?id=" + val.id + "'>" + val.title + "</a></h3>"
                        + "<span class='author'><a href='home.jsp'>" + val.createdBy + ' ' + "</a></span>"
                        + "<span class='date'>" + val.createdDate + "</span>"
                        + "</div>"
                        + "</li>";


                }
                $("#yourContainer").html(data);
            }
        });
    }

    ajaxRun();
</script>


<script type="text/javascript" src="<c:url value="/views/template/mdb/js/mdb.min.js"/>"></script>
<!-- MDB PLUGINS -->
<script type="text/javascript" src="<c:url value="/views/template/mdb/plugins/js/all.min.js"/>"></script>
<script src="<c:url value="/views/template/mdb/js/mdb.umd.min.js"/>"></script>
<script>

</script>
</body>
</html>