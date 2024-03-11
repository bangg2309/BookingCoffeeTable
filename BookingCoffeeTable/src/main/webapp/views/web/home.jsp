<%@ page import="java.util.List" %>
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
    <title>Home</title>
    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="<c:url value="/views/template/assets/css/owl-carousel.css"/> ">
    <link rel="stylesheet" href="<c:url value="/views/template/assets/css/lightbox.css"/> ">
    <link rel="stylesheet" href="<c:url value="/views/template/assets/css/stylle.css"/> ">
    <link rel="stylesheet" href="<c:url value="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />"/>
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/css/mdb.min.css"/> "/>
    <!-- MDB PLUGINS -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/plugins/css/all.min.css"/> "/>
    <link rel="stylesheet" href="<c:url value="/views/template/custom/css/home.css"/> ">
    <link rel="stylesheet" href="<c:url value="/views/template/custom/css/contact.css"/> ">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/sweetalert2@11">

</head>
<body>

<!-- ***** Header Area Start ***** -->
<%@ include file="layout/header.jsp" %>
<!-- ***** Header Area End ***** -->

<!-- ***** Main Banner Area Start ***** -->
<div id="top" style="margin-top: 80px">
    <div class="container-fluid">
        <!-- Swiper -->
        <div class="swiper mySwiper">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <img src="<c:url value="/views/template/custom/image/home/background1.jpg"/>">
                    <div class="alpha">
                        <div class="slide_booking">
                            <div>
                                <span>COFFEE SHOP</span>
                                <a href="/table">ĐẶT BÀN NGAY</a>
                            </div>
                        </div>
                    </div>
                    <div class="beta">
                        <div class="">
                            <h5 class="text-uppercase mb-lg-5 mb-sm-0">Giờ mở cửa</h5>
                            <div>
                                <h6 class="mb-lg-4 mb-sm-0">Thứ hai - Thứ năm: 8h00 - 21h00</h6>
                                <h6 class="mb-lg-4 mb-sm-0">Thứ sáu - Thứ bảy: 8h00 - 1h00</h6>
                                <h6>Chủ nhật: 9h00 - 22h00</h6>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <img src="<c:url value="/views/template/custom/image/home/background2.jpg"/>">
                    <div class="alpha">
                        <div class="slide_booking">
                            <div>
                                <span>COFFEE SHOP</span>
                                <a href="/table">ĐẶT BÀN NGAY</a>
                            </div>
                        </div>
                    </div>
                    <div class="beta">
                        <div class="">
                            <h5 class="text-uppercase mb-lg-5 mb-sm-0">Giờ mở cửa</h5>
                            <div>
                                <h6 class="mb-lg-4 mb-sm-0">Thứ hai - Thứ năm: 8h00 - 21h00</h6>
                                <h6 class="mb-lg-4 mb-sm-0">Thứ sáu - Thứ bảy: 8h00 - 1h00</h6>
                                <h6>Chủ nhật: 9h00 - 22h00</h6>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="swiper-slide">
                    <img src="<c:url value="/views/template/custom/image/home/background3.jpg"/>">
                    <div class="alpha">
                        <div class="slide_booking">
                            <div>
                                <span>COFFEE SHOP</span>
                                <a href="/table">ĐẶT BÀN NGAY</a>
                            </div>
                        </div>
                    </div>
                    <div class="beta">
                        <div class="">
                            <h5 class="text-uppercase mb-lg-5 mb-sm-0">Giờ mở cửa</h5>
                            <div>
                                <h6 class="mb-lg-4 mb-sm-0">Thứ hai - Thứ năm: 8h00 - 21h00</h6>
                                <h6 class="mb-lg-4 mb-sm-0">Thứ sáu - Thứ bảy: 8h00 - 1h00</h6>
                                <h6>Chủ nhật: 9h00 - 22h00</h6>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
            <!--            <div class="swiper-button-next"></div>-->
            <!--            <div class="swiper-button-prev"></div>-->
            <div class="swiper-pagination" style="display: none"></div>
            <div class="autoplay-progress" style="display: none">
                <svg viewBox="0 0 48 48">
                    <circle cx="24" cy="24" r="20"></circle>
                </svg>
                <span></span>
            </div>
        </div>

    </div>
</div>


<!-- ***** Main Banner Area End ***** -->

<!-- ***** About Area Starts ***** -->
<section class="section" id="about">
    <div class="vnt-container">
        <div id="vnt-content">


            <div class="about bg1">
                <div class="img lazy-start fadeIn" data-eff="fadeIn" data-delay="0.3" style="animation-delay: 0.3s;"><a
                        href="/about"><img
                        src="https://www.highlandscoffee.com.vn/vnt_upload/about/ABOUT-CAREER3.jpg" alt="NGUỒN GỐC"></a>
                </div>
                <div class="captionWrap">
                    <div class="wrapper">
                        <div class="caption">
                            <div class="tend lazy-start fadeInUp" data-eff="fadeInUp" data-delay="0.3"
                                 style="animation-delay: 0.3s;"><a
                                    href="/about">NGUỒN GỐC</a></div>
                            <div class="des lazy-start fadeInUp" data-eff="fadeInUp" data-delay="0.5"
                                 style="animation-delay: 0.5s;"><p><span style="font-size:18px;">CÂU CHUYỆN NÀY LÀ CỦA CHÚNG MÌNH</span>
                            </p>

                                <p><span style="font-family:Roboto,sans-serif;"><span style="font-size:16px;"><span
                                        style="line-height:115%"><span style="line-height:115%">Coffee Shop được thành lập vào năm 1999, bắt nguồn từ tình yêu dành cho đất Việt cùng với cà phê và cộng đồng nơi đây.&nbsp;</span></span></span></span><span
                                        style="font-family:Roboto,sans-serif;"><span style="font-size:16px;">Ngay từ những ngày đầu tiên, mục tiêu của chúng mình là có thể phục vụ và góp phần phát triển cộng đồng bằng cách siết chặt thêm sự kết nối và sự gắn bó giữa người với người.</span></span>
                                </p></div>
                            <div class="link lazy-start fadeInUp" data-eff="fadeInUp" data-delay="0.7"
                                 style="animation-delay: 0.7s;"><a
                                    href="/about"><span>Xem chi tiết</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="about bg2">
                <div class="img lazy-start fadeIn" data-eff="fadeIn" data-delay="0.3" style="animation-delay: 0.3s;"><a
                        href="/about"><img
                        src="https://www.highlandscoffee.com.vn/vnt_upload/about/Highlands_4577_R3_-_Copy.jpg"
                        alt="DỊCH VỤ"></a></div>
                <div class="captionWrap">
                    <div class="wrapper">
                        <div class="caption">
                            <div class="tend w lazy-start fadeInUp" data-eff="fadeInUp" data-delay="0.3"
                                 style="animation-delay: 0.3s;"><a
                                    href="/about">DỊCH VỤ</a></div>
                            <div class="des w lazy-start fadeInUp" data-eff="fadeInUp" data-delay="0.5"
                                 style="animation-delay: 0.5s; color: red"><p style="color: red">DỊCH VỤ NÀY LÀ CỦA
                                CHÚNG MÌNH</p>

                                <p><span style="font-size:16px;"><span style="font-family:Roboto,sans-serif;"><span
                                        style="line-height:115%"><span style="line-height:115%"><span
                                        style="color:#4f2c1c">Coffee Shop là không gian của chúng mình nên mọi thứ ở đây đều vì sự thoải mái của chúng mình.&nbsp;</span></span></span><span
                                        style="color:#4f2c1c">Đừng giữ trong lòng, hãy chia sẻ với chúng mình điều bạn mong muốn để cùng nhau giúp Coffee Shop trở nên tuyệt vời hơn. </span></span></span>
                                </p></div>
                            <div class="link w lazy-start fadeInUp" data-eff="fadeInUp" data-delay="0.7"
                                 style="animation-delay: 0.7s;"><a
                                    href="/about"><span>Xem chi tiết</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="about bg3">
                <div class="img lazy-start fadeIn" data-eff="fadeIn" data-delay="0.3" style="animation-delay: 0.3s;"><a
                        href="/about"><img
                        src="https://www.highlandscoffee.com.vn/vnt_upload/about/Highlands_5557_R3_-_Copy.jpg"
                        alt="NGHỀ NGHIỆP"></a></div>
                <div class="captionWrap">
                    <div class="wrapper">
                        <div class="caption">
                            <div class="tend w lazy-start fadeInUp" data-eff="fadeInUp" data-delay="0.3"
                                 style="animation-delay: 0.3s;"><a
                                    href="/about">NGHỀ NGHIỆP</a></div>
                            <div class="des w lazy-start fadeInUp" data-eff="fadeInUp" data-delay="0.5"
                                 style="animation-delay: 0.5s; "><p style="color: red">CƠ HỘI NÀY LÀ CỦA CHÚNG MÌNH</p>

                                <p><span style="font-family:Roboto,sans-serif;"><span style="font-size:16px;"><span
                                        style="line-height:115%"><span style="line-height:115%"><span
                                        style="color:#4f2c1c">Là điểm hội tụ của cộng đồng, Coffee Shop luôn tìm kiếm những thành viên mới với mong muốn không ngừng hoàn thiện một không gian dành cho tất cả mọi người.&nbsp;</span></span></span></span></span><span
                                        style="font-family:Roboto,sans-serif;"><span style="font-size:16px;"><span
                                        style="color:#4f2c1c">Chúng mình luôn chào đón bạn trở thành một phần của Coffee Shop để cùng nhau siết chặt thêm những kết nối và sự gắn bó giữa người với người.</span></span></span>
                                </p></div>
                            <div class="link w lazy-start fadeInUp" data-eff="fadeInUp" data-delay="0.7"
                                 style="animation-delay: 0.7s;"><a
                                    href="/about"><span>Xem chi tiết</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>
</section>
<!-- ***** About Area Ends ***** -->

<!-- ***** Menu Area Starts ***** -->
<section class="section" id="menu">
    <div class="container text_menu_contain mb-5">
        <div class="row">
            <div class="col-lg">
                <div class="section-heading ">
                    <h1>Đang giảm giá</h1>

                </div>

            </div>
        </div>
        <div class="menu-item-carousel best_seller">
            <div class="col-lg-12">
                <div class="owl-menu-item owl-carousel">
                    <c:forEach items="${discountProducts}" var="discountProduct">
                        <div class="item">
                            <div>
                                <!-- Product image -->
                                <div
                                        class="
                      bg-image ripple
                      shadow-4-soft
                      rounded-6
                      mb-4
                      overflow-hidden
                      d-block
                      "
                                        data-ripple-color="light"
                                >
                                    <img src="<c:url value='${discountProduct.images[0].url}'/>" class=" w-100" alt=""/>

                                    <a href="/product-detail?id=${discountProduct.id}">
                                        <div class="mask">
                                            <div
                                                    class="
                            d-flex
                            justify-content-start
                            align-items-end
                            h-100
                            p-3
                            "
                                            >
                  <span class="badge badge-danger rounded-pill me-2"
                  >${discountProduct.discount}%</span
                  >
                                            </div>
                                        </div>
                                        <div class="hover-overlay">
                                            <div
                                                    class="mask"
                                                    style="background-color: hsla(0, 0%, 98.4%, 0.15)"
                                            ></div>
                                        </div>
                                    </a>
                                </div>

                                <!-- Product content -->
                                <div class="px-3 text-reset d-block">
                                    <p class="fw-bold mb-2">${discountProduct.name}</p>
                                    <ul
                                            class="rating mb-2"
                                            data-mdb-toggle="rating"
                                            data-mdb-readonly="true"
                                            data-mdb-value="${discountProduct.averageRating}"
                                    >
                                        <li>
                                            <i
                                                    class="far fa-star fa-sm color_far ps-0"
                                                    title="Bad"
                                            ></i>
                                        </li>
                                        <li>
                                            <i
                                                    class="far fa-star fa-sm color_far"
                                                    title="Poor"
                                            ></i>
                                        </li>
                                        <li>
                                            <i
                                                    class="far fa-star fa-sm color_far"
                                                    title="OK"
                                            ></i>
                                        </li>
                                        <li>
                                            <i
                                                    class="far fa-star fa-sm color_far"
                                                    title="Good"
                                            ></i>
                                        </li>
                                        <li>
                                            <i
                                                    class="far fa-star fa-sm color_far"
                                                    title="Excellent"
                                            ></i>
                                        </li>
                                    </ul>
                                    <h5 class="mb-3">
                                        <s class="text-muted me-2 small align-middle"><fmt:formatNumber
                                                value="${discountProduct.price}" type="currency"
                                                currencyCode="VND"/> </s
                                        ><span class="align-middle"> <fmt:formatNumber
                                            value="${discountProduct.salePrice}" type="currency"
                                            currencyCode="VND"/></span>
                                    </h5>
                                    <button type="button"
                                            onclick="addToCart('${discountProduct.id}', '${discountProduct.size}','1')"
                                            class="btn btn-primary btn-rounded w-100 color_btn">
                                        <i class="fas fa-cart-plus me-2"></i>Thêm vào bàn
                                    </button>
                                </div>
                                <!-- Product content -->
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
    <div class="farm-cate-v3">
        <div class="same-title white">
            <h2 class="text_favorite text-white">
                Danh mục yêu thích
            </h2>
        </div>
        <div class="container container_menu">
            <div class="row menu_contain_alpha">
                <jsp:useBean id="categories" scope="request" type="java.util.List"/>
                <c:forEach items="${categories}" var="category">
                    <div class="col-md-3 col-sm-3 col-xs-6">
                        <div>
                            <div class="bg-image ripple shadow-4-soft rounded-6 mb-4 overflow-hidden d-block content-farm"
                                 data-ripple-color="light">
                                <img src="<c:url value='${category.image}'/>" class="w-100"
                                     alt=""/>
                                <div class="desc-farm">
                                    <div>
                            <span>
                                    ${category.name}
                            </span>
                                        <a href="/menu?category-value=${category.id}"> KHÁM PHÁ </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>

        <div class="container text_menu_contain">
            <div class="row">
                <div class="col-lg">
                    <div class="section-heading ">
                        <h1>Mới ra mắt</h1>
                    </div>

                </div>
            </div>
            <div class="menu-item-carousel">
                <div class="col-lg-12">
                    <div class="owl-menu-item owl-carousel">
                        <c:forEach items="${newProducts}" var="product">
                            <div class="item">
                                <div>
                                    <!-- Product image -->
                                    <div class="bg-image ripple shadow-4-soft rounded-6 mb-4 overflow-hidden d-block"
                                         data-ripple-color="light">
                                        <img src="<c:url value='${product.images[0].url}'/>" class=" w-100" alt=""/>
                                        <a href="/product-detail?id=${product.id}">
                                            <div class="mask">
                                                <div class=" d-flex justify-content-start align-items-end h-100 p-3">
                                                    <span class="badge badge-success rounded-pill me-2">New</span>
                                                </div>
                                            </div>
                                            <div class="hover-overlay">
                                                <div class="mask"
                                                     style="background-color: hsla(0, 0%, 98.4%, 0.15)"></div>
                                            </div>
                                        </a>
                                    </div>
                                    <!-- Product content -->
                                    <div class="px-3 text-reset d-block">
                                        <p class="fw-bold mb-2">${product.name}</p>
                                        <ul class="rating mb-2" data-mdb-toggle="rating" data-mdb-readonly="true"
                                            data-mdb-value="${product.averageRating}">
                                            <li>
                                                <i class="far fa-star fa-sm color_far ps-0" title="Bad"></i>
                                            </li>
                                            <li>
                                                <i class="far fa-star fa-sm color_far" title="Poor"></i>
                                            </li>
                                            <li>
                                                <i class="far fa-star fa-sm color_far" title="OK"></i>
                                            </li>
                                            <li>
                                                <i class="far fa-star fa-sm color_far" title="Good"></i>
                                            </li>
                                            <li>
                                                <i class="far fa-star fa-sm color_far" title="Excellent"></i>
                                            </li>
                                        </ul>
                                        <c:choose>
                                            <c:when test="${product.discount != 0}">
                                                <h5 class="mb-3">
                                                    <s class="text-muted me-2 small align-middle"><fmt:formatNumber
                                                            value="${product.price}" type="currency"
                                                            currencyCode="VND"/> </s
                                                    ><span
                                                        class="align-middle"><fmt:formatNumber
                                                        value="${product.salePrice}" type="currency"
                                                        currencyCode="VND"/></span>
                                                </h5>
                                            </c:when>
                                            <c:otherwise>
                                                <h5 class="mb-3">
                                                    <span class="align-middle"><fmt:formatNumber
                                                            value="${product.price}" type="currency"
                                                            currencyCode="VND"/></span>
                                                </h5>
                                            </c:otherwise>
                                        </c:choose>
                                        <button type="button"
                                                onclick="addToCart('${product.id}', '${product.size}','1')"
                                                class="btn btn-primary btn-rounded w-100 color_btn">
                                            <i class="fas fa-cart-plus me-2"></i>Thêm vào bàn
                                        </button>
                                    </div>
                                    <!-- Product content -->
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ***** Menu Area Ends ***** -->

<section class="section mb-5 mt-5" id="new">
    <div class="same-title">
        <i>Có gì mới</i>
        <h2>Bài viết mới</h2>
    </div>
    <div class="container">
        <div class="row">
            <c:forEach items="${posts}" var="post">
                <div class="col-md-4 col-sm-4 col-xs-6 articelItem">
                    <div class="stArticleLoop">
                        <div class="box-latest-news">
                            <a href="/post?id=${post.id}" class="thumb-img">
                                <div class="mask-plus">
                                    <div class="shape"></div>
                                </div>
                                <img src="<c:url value='${post.thumbnail}'/>" alt="">
                            </a>
                            <div class="content-ln">
                                <span>${post.createdDate}</span>
                                <a href="">
                                    <h3>${post.title}</h3>
                                </a>
                                <a href="">
                                    "Xem thêm "
                                    <i class="fa fa-long-arrow-right"></i>
                                </a>

                            </div>
                        </div>

                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>

<main class="main">

    <div class="container-fluid mb-1">

        <!-- Grid row -->
        <div class="row" style="margin-top: -140px;">

            <!-- Grid column -->
            <div class="col-md-12">

                <div class="card pb-5">

                    <div class="card-body">

                        <div class="container">

                            <!-- Section: Contact v.3 -->
                            <section class="contact-section my-5">

                                <!-- Form with header -->
                                <div class="card">

                                    <!-- Grid row -->
                                    <div class="row">

                                        <!-- Grid column -->
                                        <div class="col-lg-6">

                                            <form action="/contact" method="post">
                                                <div class="card-body form">

                                                    <!-- Header -->
                                                    <h3 class="mt-4 mb-2"><i class="fas fa-envelope pr-2"></i>Gửi phản
                                                        ánh
                                                        cho chúng tôi:</h3>

                                                    <!-- Grid row -->
                                                    <div class="row">
                                                        <!-- Grid column -->
                                                        <div class="col-md-6">

                                                            <div class="md-form mb-0 form-outline" data-mdb-input-init>
                                                                <input type="text" name="fullname" id="fullname"
                                                                       class="form-control" required/>
                                                                <label class="form-label" for="fullname">Họ và
                                                                    Tên</label>
                                                            </div>

                                                        </div>
                                                        <!-- Grid column -->

                                                        <!-- Grid column -->
                                                        <div class="col-md-6">

                                                            <div class="md-form mb-0 form-outline" data-mdb-input-init>
                                                                <input type="email" name="email" id="email"
                                                                       class="form-control" required/>
                                                                <label class="form-label" for="email">Email</label>
                                                            </div>

                                                        </div>
                                                        <!-- Grid column -->

                                                    </div>
                                                    <!-- Grid row -->

                                                    <!-- Grid row -->
                                                    <div class="row">

                                                        <!-- Grid column -->
                                                        <div class="col-md-6">

                                                            <div class="md-form mb-0 form-outline" data-mdb-input-init>
                                                                <input type="number" name="phone" id="phone"
                                                                       class="form-control" required/>
                                                                <label class="form-label" for="phone">Số điện
                                                                    thoại</label>
                                                            </div>

                                                        </div>
                                                        <!-- Grid column -->

                                                        <!-- Grid column -->
                                                        <div class="col-md-6">

                                                            <div class="md-form mb-0 form-outline" data-mdb-input-init>
                                                                <input type="text" name="subject" id="subject"
                                                                       class="form-control" required/>
                                                                <label class="form-label" for="subject">Chủ đề</label>
                                                            </div>

                                                        </div>
                                                        <!-- Grid column -->

                                                    </div>
                                                    <!-- Grid row -->

                                                    <!-- Grid row -->
                                                    <div class="row">

                                                        <!-- Grid column -->
                                                        <div class="col-md-12">

                                                            <div class="md-form mb-0 form-outline" data-mdb-input-init>

                                                            <textarea class="form-control" name="content" id="content"
                                                                      rows="4" required></textarea>
                                                                <label class="form-label"
                                                                       for="content">Nội dung góp ý</label>

                                                            </div>
                                                            <button class="icon" id="submitButton" type="submit">
                                                                <a class="btn-floating btn-lg blue">
                                                                    <i class="far fa-paper-plane"></i>
                                                                </a>
                                                            </button>

                                                        </div>
                                                        <!-- Grid column -->

                                                    </div>
                                                    <!-- Grid row -->

                                                </div>
                                            </form>

                                        </div>
                                        <!-- Grid column -->

                                        <!-- Grid column -->
                                        <div class="col-lg-5">

                                            <div class="card-body contact text-center h-100 white-text">

                                                <h3 class="my-4 pb-2">Thông Tin Liên Hệ</h3>

                                                <ul class="text-lg-left list-unstyled ">

                                                    <li>

                                                        <p><i class="fas fa-map-marker-alt pr-2 mb-4"></i>Trường Đại học
                                                            Nông Lâm Tp.Hồ Chí Minh</p>

                                                    </li>

                                                    <li>

                                                        <p><i class="fas fa-phone pr-2 mb-4"></i>0394 707 535</p>

                                                    </li>

                                                    <li>

                                                        <p><i class="fas fa-envelope pr-2"></i>coffeshop@gmail.com</p>

                                                    </li>

                                                </ul>

                                                <hr class="hr-light my-4">

                                                <ul class="list-inline text-center list-unstyled">

                                                    <li class="list-inline-item">

                                                        <a class="p-2 fa-lg tw-ic">

                                                            <i class="fab fa-twitter"></i>

                                                        </a>

                                                    </li>

                                                    <li class="list-inline-item">

                                                        <a class="p-2 fa-lg li-ic">

                                                            <i class="fab fa-linkedin-in"> </i>

                                                        </a>

                                                    </li>

                                                    <li class="list-inline-item">

                                                        <a class="p-2 fa-lg ins-ic">

                                                            <i class="fab fa-instagram"> </i>

                                                        </a>

                                                    </li>

                                                </ul>

                                            </div>

                                        </div>
                                        <!-- Grid column -->

                                    </div>
                                    <!-- Grid row -->

                                </div>
                                <!-- Form with header -->

                            </section>
                            <!-- Section: Contact v.3 -->

                        </div>

                    </div>

                </div>

            </div>
            <!-- Grid column -->

        </div>
        <!-- Grid row -->
        <div class="container my-5">


            <!-- Section: Block Content -->
            <section class="mb-4">

                <style>
                    .map-container {
                        overflow: hidden;
                        position: relative;
                        height: 0;
                    }

                    .map-container iframe {
                        left: 0;
                        top: 0;
                        height: 100%;
                        width: 100%;
                        position: absolute;
                    }
                </style>

                <div class="card">

                    <div class="row my-md-5 py-md-4 p-3">
                        <div class="col-md-10 mx-auto">

                            <!-- Google Maps -->
                            <div id="map-within-card" class="map-container" style="height: 400px">
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.214525515917!2d106.7891867732655!3d10.87128165744054!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175276398969f7b%3A0x9672b7efd0893fc4!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBOw7RuZyBMw6JtIFRQLiBI4buTIENow60gTWluaA!5e0!3m2!1svi!2s!4v1698891133586!5m2!1svi!2s"
                                        width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                                        referrerpolicy="no-referrer-when-downgrade"></iframe>
                            </div>
                            <!-- Google Maps -->

                        </div>
                    </div>

                </div>

            </section>
            <!-- Section: Block Content -->


        </div>

    </div>

</main>

<!-- ***** Footer Start ***** -->
<%@ include file="layout/footer.jsp" %>
<!-- ***** Footer End ***** -->

<!-- jQuery -->
<script src="<c:url value="/views/template/assets/js/jquery-2.1.0.min.js"/> "></script>
<!---->
<!-- Bootstrap -->
<script src="<c:url value="/views/template/assets/js/popper.js"/> "></script>
<script src="<c:url value="/views/template/assets/js/bootstrap.min.js"/> "></script>

<!-- Swiper JS -->
<script src="<c:url value="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"/> "></script>


<!-- Plugins -->
<script src="<c:url value="/views/template/assets/js/owl-carousel.js"/> "></script>
<script src="<c:url value="/views/template/assets/js/datepicker.js"/> "></script>
<script src="<c:url value="/views/template/assets/js/slick.js"/> "></script>
<script src="<c:url value="/views/template/assets/js/isotope.js"/> "></script>

<!-- Global Init -->
<script src="<c:url value="/views/template/assets/js/custom.js"/> "></script>
<script>
    const progressCircle = document.querySelector(".autoplay-progress svg");
    const progressContent = document.querySelector(".autoplay-progress span");
    var swiper = new Swiper(".mySwiper", {
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false
        },
        pagination: {
            el: ".swiper-pagination",
            clickable: true
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev"
        },
        on: {
            autoplayTimeLeft(s, time, progress) {
                progressCircle.style.setProperty("--progress", 1 - progress);
                progressContent.textContent = `${Math.ceil(time / 1000)}s`;
            }
        }
    });
</script>

<script src="<c:url value="/views/template/assets/js/jquery-2.1.0.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/views/template/mdb/js/mdb.min.js"/> "></script>
<script type="text/javascript" src="<c:url value="/views/template/mdb/plugins/js/all.min.js"/> "></script>
<script src="<c:url value="/views/template/mdb/js/mdb.umd.min.js"/>"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
    function addToCart(id, size, quantity) {
        $.ajax({
            url: '/add-cart?id=' + id + '&size=' + size + '&quantity=' + quantity,
            type: 'GET',
            success: function (data) {
                Swal.fire({
                    position: "center",
                    icon: "success",
                    title: "Thêm sản phẩm thành công!",
                    fontsize: 20,
                    showConfirmButton: false,
                    width: 300,
                    height: 50,
                    timer: 1000
                });
            },
            error: function (data) {
                Swal.fire({
                    position: "center",
                    icon: "error",
                    title: "Thêm sản phẩm thất bại!",
                    fontsize: 20,
                    showConfirmButton: false,
                    width: 300,
                    height: 50,
                    timer: 1000
                });
            }
        });
    }
</script>

</body>
</html>