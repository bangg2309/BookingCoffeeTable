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

                    <img src="/views/template/custom/image/home/background1.jpg">
                    <div class="alpha">
                        <div class="slide_booking">
                            <div>
                                <span>COFFEE SHOP</span>
                                <a href="table.jsp">ĐẶT BÀN NGAY</a>
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
                    <img src="../template/custom/image/home/background2.jpg">
                    <div class="alpha">
                        <div class="slide_booking">
                            <div>
                                <span>COFFEE SHOP</span>
                                <a href="table.jsp">ĐẶT BÀN NGAY</a>
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
                    <img src="../template/custom/image/home/background3.jpg">
                    <div class="alpha">
                        <div class="slide_booking">
                            <div>
                                <span>COFFEE SHOP</span>
                                <a href="table.jsp">ĐẶT BÀN NGAY</a>
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
                        href="https://www.highlandscoffee.com.vn/vn/nguon-goc.html"><img
                        src="https://www.highlandscoffee.com.vn/vnt_upload/about/ABOUT-CAREER3.jpg" alt="NGUỒN GỐC"></a>
                </div>
                <div class="captionWrap">
                    <div class="wrapper">
                        <div class="caption">
                            <div class="tend lazy-start fadeInUp" data-eff="fadeInUp" data-delay="0.3"
                                 style="animation-delay: 0.3s;"><a
                                    href="https://www.highlandscoffee.com.vn/vn/nguon-goc.html">NGUỒN GỐC</a></div>
                            <div class="des lazy-start fadeInUp" data-eff="fadeInUp" data-delay="0.5"
                                 style="animation-delay: 0.5s;"><p><span style="font-size:18px;">CÂU CHUYỆN NÀY LÀ CỦA CHÚNG MÌNH</span>
                            </p>

                                <p><span style="font-family:Roboto,sans-serif;"><span style="font-size:16px;"><span
                                        style="line-height:115%"><span style="line-height:115%">Highlands Coffee® được thành lập vào năm 1999, bắt nguồn từ tình yêu dành cho đất Việt cùng với cà phê và cộng đồng nơi đây.&nbsp;</span></span></span></span><span
                                        style="font-family:Roboto,sans-serif;"><span style="font-size:16px;">Ngay từ những ngày đầu tiên, mục tiêu của chúng mình là có thể phục vụ và góp phần phát triển cộng đồng bằng cách siết chặt thêm sự kết nối và sự gắn bó giữa người với người.</span></span>
                                </p></div>
                            <div class="link lazy-start fadeInUp" data-eff="fadeInUp" data-delay="0.7"
                                 style="animation-delay: 0.7s;"><a
                                    href="https://www.highlandscoffee.com.vn/vn/nguon-goc.html"><span>Xem chi tiết</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="about bg2">
                <div class="img lazy-start fadeIn" data-eff="fadeIn" data-delay="0.3" style="animation-delay: 0.3s;"><a
                        href="https://www.highlandscoffee.com.vn/vn/dich-vu.html"><img
                        src="https://www.highlandscoffee.com.vn/vnt_upload/about/Highlands_4577_R3_-_Copy.jpg"
                        alt="DỊCH VỤ"></a></div>
                <div class="captionWrap">
                    <div class="wrapper">
                        <div class="caption">
                            <div class="tend w lazy-start fadeInUp" data-eff="fadeInUp" data-delay="0.3"
                                 style="animation-delay: 0.3s;"><a
                                    href="https://www.highlandscoffee.com.vn/vn/dich-vu.html">DỊCH VỤ</a></div>
                            <div class="des w lazy-start fadeInUp" data-eff="fadeInUp" data-delay="0.5"
                                 style="animation-delay: 0.5s;"><p>DỊCH VỤ NÀY LÀ CỦA CHÚNG MÌNH</p>

                                <p><span style="font-size:16px;"><span style="font-family:Roboto,sans-serif;"><span
                                        style="line-height:115%"><span style="line-height:115%"><span
                                        style="color:#4f2c1c">Highlands Coffee® là không gian của chúng mình nên mọi thứ ở đây đều vì sự thoải mái của chúng mình.&nbsp;</span></span></span><span
                                        style="color:#4f2c1c">Đừng giữ trong lòng, hãy chia sẻ với chúng mình điều bạn mong muốn để cùng nhau giúp Highlands Coffee® trở nên tuyệt vời hơn. </span></span></span>
                                </p></div>
                            <div class="link w lazy-start fadeInUp" data-eff="fadeInUp" data-delay="0.7"
                                 style="animation-delay: 0.7s;"><a
                                    href="https://www.highlandscoffee.com.vn/vn/dich-vu.html"><span>Xem chi tiết</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="about bg3">
                <div class="img lazy-start fadeIn" data-eff="fadeIn" data-delay="0.3" style="animation-delay: 0.3s;"><a
                        href="https://www.highlandscoffee.com.vn/vn/nghe-nghiep.html"><img
                        src="https://www.highlandscoffee.com.vn/vnt_upload/about/Highlands_5557_R3_-_Copy.jpg"
                        alt="NGHỀ NGHIỆP"></a></div>
                <div class="captionWrap">
                    <div class="wrapper">
                        <div class="caption">
                            <div class="tend w lazy-start fadeInUp" data-eff="fadeInUp" data-delay="0.3"
                                 style="animation-delay: 0.3s;"><a
                                    href="https://www.highlandscoffee.com.vn/vn/nghe-nghiep.html">NGHỀ NGHIỆP</a></div>
                            <div class="des w lazy-start fadeInUp" data-eff="fadeInUp" data-delay="0.5"
                                 style="animation-delay: 0.5s;"><p>CƠ HỘI NÀY LÀ CỦA CHÚNG MÌNH</p>

                                <p><span style="font-family:Roboto,sans-serif;"><span style="font-size:16px;"><span
                                        style="line-height:115%"><span style="line-height:115%"><span
                                        style="color:#4f2c1c">Là điểm hội tụ của cộng đồng, Highlands Coffee® luôn tìm kiếm những thành viên mới với mong muốn không ngừng hoàn thiện một không gian dành cho tất cả mọi người.&nbsp;</span></span></span></span></span><span
                                        style="font-family:Roboto,sans-serif;"><span style="font-size:16px;"><span
                                        style="color:#4f2c1c">Chúng mình luôn chào đón bạn trở thành một phần của Highlands Coffee® để cùng nhau siết chặt thêm những kết nối và sự gắn bó giữa người với người.</span></span></span>
                                </p></div>
                            <div class="link w lazy-start fadeInUp" data-eff="fadeInUp" data-delay="0.7"
                                 style="animation-delay: 0.7s;"><a
                                    href="https://www.highlandscoffee.com.vn/vn/nghe-nghiep.html"><span>Xem chi tiết</span></a>
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
                    <h1>Bán chạy nhất</h1>

                </div>

            </div>
        </div>
        <div class="menu-item-carousel best_seller">
            <div class="col-lg-12">
                <div class="owl-menu-item owl-carousel">
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
                                <img


                                        src="../template/custom/image/menu/coffee_cream.jpg"


                                        class="w-100"
                                        alt=""/>

                                <a href="#!">
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
                  >Best seller</span
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
                                <p class="fw-bold mb-2">Cà phê kem</p>
                                <ul
                                        class="rating mb-2"
                                        data-mdb-toggle="rating"
                                        data-mdb-readonly="true"
                                        data-mdb-value="4"
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
                                    <s class="text-muted me-2 small align-middle">35.000đ</s
                                    ><span class="align-middle">20.000đ</span>
                                </h5>
                                <button
                                        type="button"
                                        class="btn btn-primary btn-rounded w-100 color_btn"
                                >
                                    <i class="fas fa-cart-plus me-2"></i>Thêm vào bàn
                                </button>
                            </div>
                            <!-- Product content -->
                        </div>
                    </div>
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
                                <img
                                        src="../template/custom/image/menu/dalgona.jpg"
                                        class="w-100"
                                        alt=""
                                />
                                <a href="#!">
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
                  >Best seller</span
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
                                <p class="fw-bold mb-2">Cà phê bọt biển</p>
                                <ul
                                        class="rating mb-2"
                                        data-mdb-toggle="rating"
                                        data-mdb-readonly="true"
                                        data-mdb-value="5"
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
                                    <span class="align-middle">20.000đ</span>
                                </h5>
                                <button
                                        type="button"
                                        class="btn btn-primary btn-rounded w-100 color_btn"
                                >
                                    <i class="fas fa-cart-plus me-2"></i>Thêm vào bàn
                                </button>
                            </div>
                            <!-- Product content -->
                        </div>
                    </div>
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
                                <img


                                        src="../template/custom/image/menu/lemon.jpg"


                                        class="w-100"
                                        alt=""/>

                                <a href="#!">
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
                  >Best seller</span
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
                                <p class="fw-bold mb-2">Nước chanh</p>
                                <ul
                                        class="rating mb-2"
                                        data-mdb-toggle="rating"
                                        data-mdb-readonly="true"
                                        data-mdb-value="4"
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
                                    <s class="text-muted me-2 small align-middle">20.000đ</s
                                    ><span class="align-middle">15.000đ</span>
                                </h5>
                                <button
                                        type="button"
                                        class="btn btn-primary btn-rounded w-100 color_btn"
                                >
                                    <i class="fas fa-cart-plus me-2"></i>Thêm vào bàn
                                </button>
                            </div>
                            <!-- Product content -->
                        </div>
                    </div>
                    <div class="item">
                        <div>
                            <!-- Product image -->
                            <div
                                    class="bg-image ripple
                      shadow-4-soft
                      rounded-6
                      mb-4
                      overflow-hidden
                      d-block
                      "
                                    data-ripple-color="light"
                            >
                                <img
                                        src="../template/custom/image/menu/vodka.jpg"
                                        class="w-100"
                                        alt=""
                                />
                                <a href="#!">
                                    <div class="mask">
                                        <div
                                                class="
                            d-flex
                            justify-content-start
                            align-items-end
                            h-100
                            p-3
                            "
                                        ><span class="badge badge-danger rounded-pill me-2"
                                        >Best seller</span
                                        ></div>
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
                                <p class="fw-bold mb-2">Vodka</p>
                                <ul
                                        class="rating mb-2"
                                        data-mdb-toggle="rating"
                                        data-mdb-readonly="true"
                                        data-mdb-value="4"
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
                                    <span class="align-middle">20.000đ</span>
                                </h5>

                                <button
                                        type="button"
                                        class="btn btn-primary btn-rounded w-100 color_btn"
                                >
                                    <i class="fas fa-cart-plus me-2"></i>Thêm vào bàn
                                </button>
                            </div>
                            <!-- Product content -->
                        </div>
                    </div>
                    <div class="item">
                        <div>
                            <!-- Product image -->
                            <div
                                    class="bg-image ripple
                      shadow-4-soft
                      rounded-6
                      mb-4
                      overflow-hidden
                      d-block
                      "
                                    data-ripple-color="light"
                            >
                                <img
                                        src="../template/custom/image/menu/strawberry.jpg"
                                        class="w-100"
                                        alt=""
                                />
                                <a href="#!">
                                    <div class="mask">
                                        <div
                                                class="
                            d-flex
                            justify-content-start
                            align-items-end
                            h-100
                            p-3
                            "
                                        ><span class="badge badge-danger rounded-pill me-2"
                                        >Best seller</span
                                        ></div>
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
                                <p class="fw-bold mb-2">Sinh tố dâu</p>
                                <ul
                                        class="rating mb-2"
                                        data-mdb-toggle="rating"
                                        data-mdb-readonly="true"
                                        data-mdb-value="4"
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
                                    <span class="align-middle">59.000đ</span>
                                </h5>

                                <button
                                        type="button"
                                        class="btn btn-primary btn-rounded w-100 color_btn"
                                >
                                    <i class="fas fa-cart-plus me-2"></i>Thêm vào bàn
                                </button>
                            </div>
                            <!-- Product content -->
                        </div>
                    </div>
                    <div class="item">
                        <div>
                            <!-- Product image -->
                            <div
                                    class="bg-image ripple
                      shadow-4-soft
                      rounded-6
                      mb-4
                      overflow-hidden
                      d-block
                      "
                                    data-ripple-color="light"
                            >
                                <img
                                        src="../template/custom/image/menu/cream_vanila.jpg"
                                        class="w-100"
                                        alt=""
                                />
                                <a href="#!">
                                    <div class="mask">
                                        <div
                                                class="
                            d-flex
                            justify-content-start
                            align-items-end
                            h-100
                            p-3
                            "
                                        ><span class="badge badge-danger rounded-pill"
                                        >Best seller</span
                                        ></div>
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
                                <p class="fw-bold mb-2">Chocalate đá xay</p>
                                <ul
                                        class="rating mb-2"
                                        data-mdb-toggle="rating"
                                        data-mdb-readonly="true"
                                        data-mdb-value="4"
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
                                    <span class="align-middle">49.000đ</span>
                                </h5>

                                <button
                                        type="button"
                                        class="btn btn-primary btn-rounded w-100 color_btn"
                                >
                                    <i class="fas fa-cart-plus me-2"></i>Thêm vào bàn
                                </button>
                            </div>
                            <!-- Product content -->
                        </div>
                    </div>
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
                <div class="col-md-3 col-sm-3 col-xs-6">
                    <!-- Product card -->
                    <div>
                        <!-- Product image -->
                        <div
                                class="
                      bg-image ripple
                      shadow-4-soft
                      rounded-6
                      mb-4
                      overflow-hidden
                      d-block content-farm
                      "
                                data-ripple-color="light"
                        >
                            <img


                                    src="../template/custom/image/home/fruit.jpg"


                                    class="w-100"
                                    alt=""/>
                            <div class="desc-farm">
                                <div>
                                <span>
                                    TRÀ TRÁI CÂY
                                </span>
                                    <a href="#">KHÁM PHÁ</a>
                                </div>
                            </div>


                        </div>

                    </div>
                    <!-- Product card -->

                </div>
                <div class="col-md-3 col-sm-3 col-xs-6">
                    <!-- Product card -->
                    <div>
                        <!-- Product image -->
                        <div
                                class="
                      bg-image ripple
                      shadow-4-soft
                      rounded-6
                      mb-4
                      overflow-hidden
                      d-block content-farm
                      "
                                data-ripple-color="light"
                        >
                            <img


                                    src="../template/custom/image/home/wine.jpg"


                                    class="w-100"
                                    alt=""/>
                            <div class="desc-farm">
                                <div>
                                <span>
                                    RƯỢU
                                </span>
                                    <a href="#">KHÁM PHÁ</a>
                                </div>
                            </div>

                        </div>

                    </div>
                    <!-- Product card -->

                </div>
                <div class="col-md-3 col-sm-3 col-xs-6">
                    <!-- Product card -->
                    <div>
                        <!-- Product image -->
                        <div
                                class="
                      bg-image ripple
                      shadow-4-soft
                      rounded-6
                      mb-4
                      overflow-hidden
                      d-block content-farm
                      "
                                data-ripple-color="light"
                        >
                            <img


                                    src="../template/custom/image/home/coffee.jpg"


                                    class="w-100"
                                    alt=""/>
                            <div class="desc-farm">
                                <div>
                                <span>
                                    CÀ PHÊ
                                </span>
                                    <a href="#">KHÁM PHÁ</a>
                                </div>
                            </div>

                        </div>

                    </div>
                    <!-- Product card -->

                </div>
                <div class="col-md-3 col-sm-3 col-xs-6">
                    <!-- Product card -->
                    <div>
                        <!-- Product image -->
                        <div
                                class="
                      bg-image ripple
                      shadow-4-soft
                      rounded-6
                      mb-4
                      overflow-hidden
                      d-block content-farm
                      "
                                data-ripple-color="light"
                        >
                            <img


                                    src="../template/custom/image/home/cookie.jpg"


                                    class="w-100"
                                    alt=""/>
                            <div class="desc-farm">
                                <div>
                                <span>
                                    BÁNH NGỌT
                                </span>
                                    <a href="#">KHÁM PHÁ</a>
                                </div>
                            </div>

                        </div>

                    </div>
                    <!-- Product card -->

                </div>
            </div>
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
                                <img


                                        src="../template/custom/image/menu/coffee_cream.jpg"


                                        class="w-100"
                                        alt=""/>

                                <a href="#!">
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

                <span class="badge badge-success rounded-pill me-2"
                >New</span
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
                                <p class="fw-bold mb-2">Cà phê kem</p>
                                <ul
                                        class="rating mb-2"
                                        data-mdb-toggle="rating"
                                        data-mdb-readonly="true"
                                        data-mdb-value="4"
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
                                    <s class="text-muted me-2 small align-middle">35.000đ</s
                                    ><span class="align-middle">20.000đ</span>
                                </h5>
                                <button
                                        type="button"
                                        class="btn btn-primary btn-rounded w-100 color_btn"
                                >
                                    <i class="fas fa-cart-plus me-2"></i>Thêm vào bàn
                                </button>
                            </div>
                            <!-- Product content -->
                        </div>
                    </div>
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
                                <img
                                        src="../template/custom/image/menu/dalgona.jpg"
                                        class="w-100"
                                        alt=""
                                />
                                <a href="#!">
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

                  <span class="badge badge-success rounded-pill me-2"
                  >New</span
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
                                <p class="fw-bold mb-2">Cà phê bọt biển</p>
                                <ul
                                        class="rating mb-2"
                                        data-mdb-toggle="rating"
                                        data-mdb-readonly="true"
                                        data-mdb-value="5"
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
                                    <span class="align-middle">20.000đ</span>
                                </h5>
                                <button
                                        type="button"
                                        class="btn btn-primary btn-rounded w-100 color_btn"
                                >
                                    <i class="fas fa-cart-plus me-2"></i>Thêm vào bàn
                                </button>
                            </div>
                            <!-- Product content -->
                        </div>
                    </div>
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
                                <img


                                        src="../template/custom/image/menu/lemon.jpg"


                                        class="w-100"
                                        alt=""/>

                                <a href="#!">
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

                  <span class="badge badge-success rounded-pill me-2"
                  >New</span

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
                                <p class="fw-bold mb-2">Nước chanh</p>
                                <ul
                                        class="rating mb-2"
                                        data-mdb-toggle="rating"
                                        data-mdb-readonly="true"
                                        data-mdb-value="4"
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
                                    <s class="text-muted me-2 small align-middle">20.000đ</s
                                    ><span class="align-middle">15.000đ</span>
                                </h5>
                                <button
                                        type="button"
                                        class="btn btn-primary btn-rounded w-100 color_btn"
                                >
                                    <i class="fas fa-cart-plus me-2"></i>Thêm vào bàn
                                </button>
                            </div>
                            <!-- Product content -->
                        </div>
                    </div>
                    <div class="item">
                        <div>
                            <!-- Product image -->
                            <div
                                    class="bg-image ripple
                      shadow-4-soft
                      rounded-6
                      mb-4
                      overflow-hidden
                      d-block
                      "
                                    data-ripple-color="light"
                            >
                                <img
                                        src="../template/custom/image/menu/cookie_cream.jpg"
                                        class="w-100"
                                        alt=""
                                />
                                <a href="#!">
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
                                            <span class="badge badge-success rounded-pill me-2"
                                            >New</span
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
                                <p class="fw-bold mb-2">Sinh tố bánh quy</p>
                                <ul
                                        class="rating mb-2"
                                        data-mdb-toggle="rating"
                                        data-mdb-readonly="true"
                                        data-mdb-value="4"
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
                                    <span class="align-middle">20.000đ</span>
                                </h5>

                                <button
                                        type="button"
                                        class="btn btn-primary btn-rounded w-100 color_btn"
                                >
                                    <i class="fas fa-cart-plus me-2"></i>Thêm vào bàn
                                </button>
                            </div>
                            <!-- Product content -->
                        </div>
                    </div>
                    <div class="item">
                        <div>
                            <!-- Product image -->
                            <div
                                    class="bg-image ripple
                      shadow-4-soft
                      rounded-6
                      mb-4
                      overflow-hidden
                      d-block
                      "
                                    data-ripple-color="light"
                            >
                                <img
                                        src="../template/custom/image/menu/strawberry.jpg"
                                        class="w-100"
                                        alt=""
                                />
                                <a href="#!">
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
                                            <span class="badge badge-success rounded-pill me-2"
                                            >New</span
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
                                <p class="fw-bold mb-2">Sinh tố dâu</p>
                                <ul
                                        class="rating mb-2"
                                        data-mdb-toggle="rating"
                                        data-mdb-readonly="true"
                                        data-mdb-value="4"
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
                                    <span class="align-middle">59.000đ</span>
                                </h5>

                                <button
                                        type="button"
                                        class="btn btn-primary btn-rounded w-100 color_btn"
                                >
                                    <i class="fas fa-cart-plus me-2"></i>Thêm vào bàn
                                </button>
                            </div>
                            <!-- Product content -->
                        </div>
                    </div>
                    <div class="item">
                        <div>
                            <!-- Product image -->
                            <div
                                    class="bg-image ripple
                      shadow-4-soft
                      rounded-6
                      mb-4
                      overflow-hidden
                      d-block
                      "
                                    data-ripple-color="light"
                            >
                                <img
                                        src="../template/custom/image/menu/cream_vanila.jpg"
                                        class="w-100"
                                        alt=""
                                />
                                <a href="#!">
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
                                            <span class="badge badge-success rounded-pill me-2"
                                            >New</span
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
                                <p class="fw-bold mb-2">Chocalate đá xay</p>
                                <ul
                                        class="rating mb-2"
                                        data-mdb-toggle="rating"
                                        data-mdb-readonly="true"
                                        data-mdb-value="4"
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
                                    <span class="align-middle">49.000đ</span>
                                </h5>

                                <button
                                        type="button"
                                        class="btn btn-primary btn-rounded w-100 color_btn"
                                >
                                    <i class="fas fa-cart-plus me-2"></i>Thêm vào bàn
                                </button>

                            </div>
                            <!-- Product content -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ***** Menu Area Ends ***** -->

<section class="section mb-5" id="new">
    <div class="same-title">
        <i>Có gì mới</i>
        <h2>Bài viết mới</h2>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-sm-4 col-xs-6 articelItem">
                <div class="stArticleLoop">
                    <div class="box-latest-news">
                        <a href="" class="thumb-img">
                            <div class="mask-plus">
                                <div class="shape"></div>
                            </div>
                            <img src="../template/custom/image/home/new/2.jpg" alt="">
                        </a>
                        <div class="content-ln">
                            <span>07/09/2023</span>
                            <a href="">
                                <h3>Trung thu tết đoàn viên</h3>
                            </a>
                            <a href="">
                                "Xem thêm "
                                <i class="fa fa-long-arrow-right"></i>
                            </a>

                        </div>
                    </div>

                </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-6 articelItem">
                <div class="stArticleLoop">
                    <div class="box-latest-news">
                        <a href="" class="thumb-img">
                            <div class="mask-plus">
                                <div class="shape"></div>
                            </div>
                            <img src="../template/custom/image/home/new/1.jpg" alt="">
                        </a>
                        <div class="content-ln">
                            <span>07/09/2023</span>
                            <a href="">
                                <h3>Trung thu tết đoàn viên</h3>
                            </a>
                            <a href="">
                                "Xem thêm "
                                <i class="fa fa-long-arrow-right"></i>
                            </a>

                        </div>
                    </div>

                </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-6 articelItem">
                <div class="stArticleLoop">
                    <div class="box-latest-news">
                        <a href="" class="thumb-img">
                            <div class="mask-plus">
                                <div class="shape"></div>
                            </div>
                            <img src="../template/custom/image/home/new/3.jpg" alt="">
                        </a>
                        <div class="content-ln">
                            <span>07/09/2023</span>
                            <a href="">
                                <h3>Trung thu tết đoàn viên</h3>
                            </a>
                            <a href="">
                                "Xem thêm "
                                <i class="fa fa-long-arrow-right"></i>
                            </a>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>

<div class="section" id="contact_Us">
    <div class="hidden-sn white-skin animated">
        <div class="container my-5">


            <!--Section: Content-->
            <section class="contact-section dark-grey-text mb-5">

                <style>
                    .contact-section .form .btn-floating {
                        left: 3px;
                    }
                </style>

                <!-- Form with header -->
                <div class="card">

                    <!-- Grid row -->
                    <div class="row">

                        <!-- Grid column -->
                        <div class="col-lg-7">
                            <form>
                                <div class="card-body form">

                                    <!-- Header -->
                                    <h3 class="font-weight-bold dark-grey-text" style="font-size: 15px"><i
                                            class="fa-solid fa-envelope fa-xl pr-2 mr-1"></i>Gửi phản ánh cho chúng tôi:
                                    </h3>

                                    <!-- Grid row -->
                                    <div class="row mt-3">

                                        <!-- Grid column -->
                                        <div class="col-md-6">
                                            <div class="wrap-input100 validate-input"
                                                 data-validate="Cần nhập tên đăng nhập">
                                                <input class="input100" type="text" name="name">
                                                <span class="focus-input100"></span>
                                                <span class="label-input100">Họ và Tên</span>
                                            </div>

                                        </div>
                                        <!-- Grid column -->

                                        <!-- Grid column -->
                                        <div class="col-md-6">
                                            <div class="wrap-input100 validate-input"
                                                 data-validate="Cần nhập tên đăng nhập">
                                                <input class="input100" type="text" name="email">
                                                <span class="focus-input100"></span>
                                                <span class="label-input100">Email</span>
                                            </div>
                                        </div>
                                        <!-- Grid column -->

                                    </div>
                                    <!-- Grid row -->

                                    <!-- Grid row -->
                                    <div class="row">

                                        <!-- Grid column -->
                                        <div class="col-md-6">
                                            <div class="wrap-input100 validate-input"
                                                 data-validate="Cần nhập tên đăng nhập">
                                                <input class="input100" type="text" name="name">
                                                <span class="focus-input100"></span>
                                                <span class="label-input100">Số điện thoại</span>
                                            </div>
                                        </div>
                                        <!-- Grid column -->

                                        <!-- Grid column -->
                                        <div class="col-md-6">
                                            <div class="wrap-input100 validate-input"
                                                 data-validate="Cần nhập tên đăng nhập">
                                                <input class="input100" type="text" name="name">
                                                <span class="focus-input100"></span>
                                                <span class="label-input100">Chủ đề</span>
                                            </div>
                                        </div>
                                        <!-- Grid column -->

                                    </div>
                                    <!-- Grid row -->

                                    <!-- Grid row -->
                                    <div class="row">

                                        <!-- Grid column -->
                                        <div class="col-md-12">
                                            <div class="md-form mb-0">
                                                <div class="text-input100 validate-input"
                                                     data-validate="Cần nhập tên đăng nhập">
                                                    <textarea class="input100 mt-2" type="text"
                                                              name="textarea"> </textarea>
                                                    <span class="focus-input100"></span>
                                                    <span class="label-input100">Nội dung góp ý</span>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Grid column -->

                                    </div>
                                    <div class="col-md-12 d-flex justify-content-end  pr-5 ">
                                        <button type="submit" class="send bg-info p-4 rounded-circle">
                                            <i class="fa-sharp fa-regular fa-paper-plane fa-2xl "></i>
                                        </button>
                                    </div>
                                    <!-- Grid row -->

                                </div>
                            </form>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-lg-5 ">

                            <div class="card-body contact text-center h-100 ">

                                <h3 class="font-weight-bold my-4 pb-2">Thông Tin Liên Hệ</h3>
                                <ul class="text-lg-left">
                                    <li class="d-flex justify-content-center">
                                        <p><i class="fas fa-map-marker-alt pr-2"></i>Trường Đại học Nông Lâm Tp.Hồ Chí
                                            Minh
                                        </p>
                                    </li>
                                    <li class="d-flex justify-content-center">
                                        <p><i class="fas fa-phone pr-2"></i>0394707535</p>
                                    </li>
                                    <li class="d-flex justify-content-center">
                                        <p><i class="fas fa-envelope pr-2"></i>coffeshop@gmail.com</p>
                                    </li>
                                </ul>
                                <hr class="hr-light my-4">
                                <ul class="list-inline text-center list-unstyled">
                                    <li class="list-inline-item">
                                        <a class="p-2 fa-lg li-ic">
                                            <i class="fa-brands fa-twitter fa-xl"></i>
                                        </a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a class="p-2 fa-lg li-ic">
                                            <i class="fa-brands fa-facebook fa-xl"></i>
                                        </a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a class="p-2 fa-lg ins-ic">
                                            <i class="fa-brands fa-instagram fa-xl"></i>
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
            <!--Section: Content-->


        </div>
    </div>
</div>

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

<script src="<c:url value="/views/template/assets/js/jquery-2.1.0.min.js"/> "></script>
<script type="text/javascript" src="<c:url value="/views/template/mdb/js/mdb.min.js"/> "></script>
<script type="text/javascript" src="<c:url value="/views/template/mdb/plugins/js/all.min.js"/> "></script>

</body>
</html>