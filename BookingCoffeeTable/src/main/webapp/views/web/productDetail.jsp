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
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
    <!-- Google Fonts Roboto -->
    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="../template/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../template/assets/css/templatemo-klassy-cafe.css">

    <!-- MDB ESSENTIAL -->
    <link rel="stylesheet" href="../template/mdb/css/mdb.min.css"/>
    <!-- MDB PLUGINS -->
    <link rel="stylesheet" href="../template/mdb/plugins/css/all.min.css"/>
    <!-- Custom styles -->
    <style></style>
    <link rel="stylesheet" href="../template/custom/css/productDetail.css">
</head>

<body>
<!-- Start your project here-->

<!-- Container for demo purpose -->

<!-- ***** Header Area Start ***** -->
<%@ include file="layout/header.jsp"%>
<!-- ***** Header Area End ***** -->

<!--Main layout-->
<main class="mb-6 main_content" style="margin-top: 100px">
    <div class="container">
        <!-- Section: Product details -->
        <section class="mb-9">
            <div class="row gx-lg-5">
                <div class="col-md-6 mb-4 mb-md-0 main_contain">
                    <!--Carousel Wrapper-->
                    <div class="ecommerce-gallery">
                        <div class="mb-1 lightbox">
                            <img
                                    src="../template/custom/image/drink/coffee/coffee1.jpg"
                                    alt="Table full of spices"
                                    class="ecommerce-gallery-main-img active w-100"
                            />
                        </div>
                        <div class="multi-carousel" data-mdb-breakpoint="false" data-mdb-items="3">
                            <div class="multi-carousel-inner">
                                <div class="multi-carousel-item active">
                                    <img
                                            src="../template/custom/image/drink/coffee/coffee1.jpg"
                                            data-mdb-img="../template/custom/image/drink/coffee/coffee1.jpg"
                                            alt="Table full of spices"
                                            class="active w-100"
                                    />
                                </div>
                                <div class="multi-carousel-item ">
                                    <img
                                            src="../template/custom/image/drink/coffee/coffee2.jpg"
                                            data-mdb-img="../template/custom/image/drink/coffee/coffee2.jpg"
                                            alt="Winter Landscape"
                                            class="w-100"
                                    />
                                </div>
                                <div class="multi-carousel-item">
                                    <img
                                            src="../template/custom/image/drink/coffee/coffee3.jpg"
                                            data-mdb-img="../template/custom/image/drink/coffee/coffee3.jpg"
                                            alt="View of the City in the Mountains"
                                            class="w-100"
                                    />
                                </div>
                                <div class="multi-carousel-item">
                                    <img
                                            src="../template/custom/image/drink/coffee/coffee4.jpg"
                                            data-mdb-img="../template/custom/image/drink/coffee/coffee4.jpg"
                                            alt="Place Royale Bruxelles"
                                            class="w-100"
                                    />
                                </div>
                            </div>
                            <button
                                    class="carousel-control-prev"
                                    tabindex="0"
                                    type="button"
                                    data-mdb-slide="prev"
                            >
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            </button>
                            <button
                                    class="carousel-control-next"
                                    tabindex="0"
                                    type="button"
                                    data-mdb-slide="next"
                            >
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            </button>
                        </div>
                    </div>
                    <!--/.Carousel Wrapper-->


                </div>
                <div class="col-md-6 mb-4 mb-md-0">
                    <!-- Details -->
                    <div>
                        <h1 class="fw-bold mb-3 h5">Cà phê sữa đá</h1>
                        <a href="" class="text-muted mb-3"
                        ><p class="mb-2 text-uppercase small">Cà phê</p></a
                        >

                        <div class="d-flex review_color">
                            <ul
                                    class="rating mb-3 me-2"
                                    data-mdb-toggle="rating"
                                    data-mdb-readonly="true"
                                    data-mdb-value="4"
                            >
                                <li>
                                    <i
                                            class="far fa-star color_far fa-sm ps-0"
                                            title="Bad"
                                    ></i>
                                </li>
                                <li>
                                    <i
                                            class="far fa-star color_far fa-sm"
                                            title="Poor"
                                    ></i>
                                </li>
                                <li>
                                    <i class="far fa-star color_far fa-sm" title="OK"></i>
                                </li>
                                <li>
                                    <i
                                            class="far fa-star color_far fa-sm"
                                            title="Good"
                                    ></i>
                                </li>
                                <li>
                                    <i
                                            class="far fa-star color_far fa-sm"
                                            title="Excellent"
                                    ></i>
                                </li>
                            </ul>
                            <a href=""><strong class="me-2">4/5</strong>(2 reviews)</a>
                        </div>

                        <h5 class="mb-3">
                            <s class="text-muted me-2 small align-middle">$119</s
                            ><span class="align-middle">$101</span>
                        </h5>


                        <form action="">
                            <div class="row">
                                <!-- Quantity -->
                                <div class="col-md-6 mb-4">
                                    <div class="form-outline">
                                        <input
                                                type="number"
                                                id="typeNumber"
                                                class="form-control"
                                                value="1"
                                                min="1"
                                        />
                                        <label class="form-label" for="typeNumber"
                                        >Số lượng</label
                                        >
                                    </div>
                                </div>
                                <!-- Size -->
                                <div class="col-md-6 mb-4">
                                    <select class="select">
                                        <option value="1">S</option>
                                        <option value="2">M</option>
                                        <option value="3">L</option>

                                    </select>
                                    <label class="form-label select-label">Size</label>
                                </div>
                            </div>
                            <button
                                    type="button"
                                    class="btn btn-primary btn-rounded me-2 color_btn"
                            >
                                <i class="fas fa-cart-plus me-2"></i>Thêm vào bàn
                            </button>
                        </form>
                        <hr class="my-5"/>
                        <p class="text-muted">
                            Cà phê Đắk Lắk nguyên chất được pha phin truyền thống kết hợp với sữa đặc tạo nên hương vị
                            đậm đà, hài hòa giữa vị ngọt đầu lưỡi và vị đắng thanh thoát nơi hậu vị.
                        </p>

                    </div>
                    <!-- Details -->
                </div>
            </div>
            <!-- Gallery -->


        </section>
        <!-- Section: Product details -->

        <!-- Section: Reviews -->
        <section class="text-center">
            <p class="my-4"><strong>2 lượt đánh giá <em>Cà phê sữa đá</em></strong></p>

            <div class="row">
                <div class="col-md-7 mb-4">
                    <!-- Single review -->
                    <div class="shadow-4 p-4 rounded-5 mb-5">
                        <p class="mb-3 fw-bold">Hửu Tính</p>

                        <ul
                                class="rating mb-3 d-flex justify-content-center"
                                data-mdb-toggle="rating"
                                data-mdb-readonly="true"
                                data-mdb-value="3"
                        >
                            <li>
                                <i class="far fa-star color_far fa-sm"></i>
                            </li>
                            <li>
                                <i class="far fa-star color_far fa-sm"></i>
                            </li>
                            <li>
                                <i class="far fa-star color_far fa-sm"></i>
                            </li>
                            <li>
                                <i class="far fa-star color_far fa-sm"></i>
                            </li>
                            <li>
                                <i class="far fa-star color_far fa-sm"></i>
                            </li>
                        </ul>

                        <p class="mb-0">
                            <i class="fas fa-quote-left pe-2"></i>Cà phê sữa ở đây có một hương vị đặc trưng và độ đậm
                            đà phù hợp với sở thích của tôi. Sự kết hợp giữa cà phê Arabica và sữa đặc đường tạo nên một
                            lớp cà phê đặc sệt với hương thơm đặc trưng và vị béo ngậy.

                            Tuy nhiên, tôi cảm thấy đôi khi hơi ngọt quá mức, làm mất đi chút hương đắng tự nhiên của cà
                            phê. Cũng nhưng, tùy vào khẩu vị cá nhân, một số người có thể sẽ thích sự ngọt ngào này.

                            Không gian quán cà phê thoải mái và trang trí sáng tạo, tạo điểm nhấn cho trải nghiệm thưởng
                            thức cà phê. Dịch vụ nhanh chóng và thân thiện. Tuy nhiên, giá cả có vẻ hơi cao so với một
                            số quán khác trong khu vực.

                            Tổng cảm nhận, nếu bạn là người yêu thích cà phê ngọt ngào, đây có thể là lựa chọn phù hợp.
                            Tôi sẽ quay lại để thử các loại cà phê khác và trải nghiệm thêm không gian ấm cúng của quán.
                        </p>
                    </div>
                    <!-- Single review -->

                    <!-- Single review -->
                    <div class="shadow-4 p-4 rounded-5 mb-5">
                        <p class="mb-3 fw-bold">Thịnh Công Tử</p>

                        <ul
                                class="rating mb-3 d-flex justify-content-center"
                                data-mdb-toggle="rating"
                                data-mdb-readonly="true"
                                data-mdb-value="3"
                        >
                            <li>
                                <i class="far fa-star color_far fa-sm"></i>
                            </li>
                            <li>
                                <i class="far fa-star color_far fa-sm"></i>
                            </li>
                            <li>
                                <i class="far fa-star color_far fa-sm"></i>
                            </li>
                            <li>
                                <i class="far fa-star color_far fa-sm"></i>
                            </li>
                            <li>
                                <i class="far fa-star color_far fa-sm"></i>
                            </li>
                        </ul>

                        <p class="mb-0">
                            <i class="fas fa-quote-left pe-2"></i>Cà phê sữa đá ở đây rất ngon, đậm đà. Nhưng quán khá
                            ít nhân viên nữ.
                        </p>
                    </div>
                    <!-- Single review -->
                </div>

                <div class="col-md-5 mb-4">
                    <form>
                        <p>Đánh giá</p>

                        <ul
                                class="rating d-flex justify-content-center mb-4"
                                data-mdb-toggle="rating"
                                data-mdb-value="3"
                        >
                            <li>
                                <i class="far fa-star color_far fa-sm" title="Bad"></i>
                            </li>
                            <li>
                                <i class="far fa-star color_far fa-sm" title="Poor"></i>
                            </li>
                            <li>
                                <i class="far fa-star color_far fa-sm" title="OK"></i>
                            </li>
                            <li>
                                <i class="far fa-star color_far fa-sm" title="Good"></i>
                            </li>
                            <li>
                                <i
                                        class="far fa-star color_far fa-sm"
                                        title="Excellent"
                                ></i>
                            </li>
                        </ul>

                        <!-- Textarea -->
                        <div class="form-outline mb-4">
              <textarea
                      class="form-control"
                      id="textAreaExample"
                      rows="4"
              ></textarea>
                            <label class="form-label" for="textAreaExample"
                            >Your review</label
                            >
                        </div>

                        <!-- Submit button -->
                        <button type="submit" class="btn btn-primary mb-4 color_btn">
                            Submit
                        </button>
                    </form>
                </div>
            </div>
        </section>
        <!-- Section: Reviews -->
    </div>
</main>
<!--Main layout-->


<!-- ***** Footer Start ***** -->
<%@ include file="layout/footer.jsp"%>
<!-- ***** Footer End ***** -->



<!-- MDB ESSENTIAL -->
<script type="text/javascript" src="../template/mdb/js/mdb.min.js"></script>
<!-- MDB PLUGINS -->
<script type="text/javascript" src="../template/mdb/plugins/js/all.min.js"></script>
<script src="../template/mdb/js/mdb.umd.min.js"></script>
<!-- Custom scripts -->


</body>


</html>
