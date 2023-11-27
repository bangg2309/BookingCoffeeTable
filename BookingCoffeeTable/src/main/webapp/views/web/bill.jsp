<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>

    <title>Bill</title>

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="../template/assets/css/templatemo-klassy-cafe.css">
    <!-- MDB ESSENTIAL -->
    <link rel="stylesheet" href="../template/mdb/css/mdb.min.css"/>
    <!-- MDB PLUGINS -->
    <link rel="stylesheet" href="../template/mdb/plugins/css/all.min.css"/>
    <!-- Custom css-->
    <link rel="stylesheet" href="../template/custom/css/reservation.css">
    <link rel="stylesheet" href="../template/custom/css/bill.css">


</head>

<body>
<!-- ***** Header Area Start ***** -->
<header data-mdb-navbar-init class="navbar navbar-expand-lg navbar-light bg-body-tertiary fixed-top" style="box-shadow: rgba(0, 0, 0, 0.16) 0px 3px 6px, rgba(0, 0, 0, 0.23) 0px 3px 6px">
    <!-- Container wrapper -->
    <div class="container">
        <!-- Navbar brand -->
        <a class="navbar-brand me-2" href="https://mdbgo.com/">
            <img
                    src="../template/custom/image/drink/logo2.png"
                    height="50"
                    alt="MDB Logo"
                    loading="lazy"
                    style="margin-top: -1px;"
            />
        </a>

        <!-- Toggle button -->
        <button
                data-mdb-collapse-init
                class="navbar-toggler"
                type="button"
                data-mdb-target="#navbarButtonsExample"
                aria-controls="navbarButtonsExample"
                aria-expanded="false"
                aria-label="Toggle navigation"
        >
            <i class="fas fa-bars"></i>
        </button>

        <!-- Collapsible wrapper -->
        <div class="collapse navbar-collapse" id="navbarButtonsExample">
            <!-- Left links -->
            <ul class="nav navbar-nav me-auto mb-2 mb-lg-0">
                <li class="scroll-to-section home">
                    <a href="#">Trang chủ</a>
                </li>
                <li class="scroll-to-section">
                    <a  href="table.html">Bàn</a>
                </li>
                <li class="scroll-to-section">
                    <a  href="menu.html">Thực đơn</a>
                </li>
                <li class="scroll-to-section">
                    <a  href="about.html">Giới thiệu</a>
                </li>
                <li class="scroll-to-section">
                    <a  href="contactUS.html">Liên hệ</a>
                </li>
                <li class="scroll-to-section">
                    <a  href="post.html">Bài viết</a>
                </li>
            </ul>
            <!-- Left links -->

            <div class="login d-flex align-items-center">
                <li class="scroll-to-section">
                    <a href="reservation.html">Đặt bàn</a>
                </li>
                <li class="scroll-to-section login_content"><a href="login.jsp"><span class="user_icon"
                                                                                      style="padding-right: 10px"><i
                        class="fa fa-user"
                        aria-hidden="true"></i></span>Đăng nhập</a></li>

            </div>
        </div>
        <!-- Collapsible wrapper -->
    </div>
    <!-- Container wrapper -->
</header>
<!-- ***** Header Area End ***** -->

<main class="mb-6" style="padding-top: 20px; margin-top: 80px">
    <div class="container ">
        <!-- Section: Cart -->
        <section class="">
            <div class="row gx-lg-5">
                <div class="col-lg-8 mb-4 mb-md-0 ">
                    <!-- Section: Product list -->
                    <section class="mb-5 product_list" data-mdb-perfect-scrollbar="true" data-mdb-suppress-scroll-x="true"
                             style="position: sticky; height: 600px">
                        <div class="row border-bottom mb-4 product_item">
                            <div class="col-md-3 mb-4 mb-md-0 mt-2">
                                <div
                                        class="
                            bg-image
                            ripple
                            rounded-5
                            mb-4
                            overflow-hidden
                            d-block
                            "
                                        data-ripple-color="light"
                                >
                                    <img
                                            src="../template/custom/image/menu/coffee_cream.jpg"
                                            class="w-100"
                                            alt=""
                                    />
                                    <a href="#!">
                                        <div class="hover-overlay">
                                            <div
                                                    class="mask"
                                                    style="background-color: hsla(0, 0%, 98.4%, 0.2)"
                                            ></div>
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="col-md-4 mb-4 mb-md-0">
                                <p class="fw-bold">Cà phê kem</p>
                                <div class="row">
                                    <div class="form-outline mb-4 col-md-4 mr-2" style="width: 80px">
                                        <input
                                                type="number"
                                                id="1"
                                                class="form-control quantity"
                                                value="1"
                                                min="1"
                                                onchange="calculatePrice()"

                                        />
                                        <label class="form-label" for="1"
                                        >Số Lượng</label
                                        >
                                    </div>
                                    <div class=" mb-4 col-md-4" style="width: 110px" >
                                        <select class="select size" onchange="calculatePrice()" >
                                            <option value="1" >S</option>
                                            <option value="2 " selected>M</option>
                                            <option value="3">L</option>
                                        </select>
                                        <label class="form-label select-label">Size</label>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-5 mb-4 mb-md-0">


                                <h5 class="mb-2">
                                    <s class="text-muted me-2 small align-middle price">190.000 đ</s
                                    ><span class="align-middle totalPrice">100.000 đ</span>
                                </h5>
                                <p class="text-danger"><small>Khuyến mãi 15%</small></p>
                                <p class="mb-4">
                                    <a href="" class="text-muted pe-3"
                                    ><small
                                    ><i class="fas fa-trash me-2"></i>Xóa</small
                                    ></a
                                    >
                                </p>
                            </div>
                        </div>
                        <div class="row border-bottom mb-4 product_item">
                            <div class="col-md-3 mb-4 mb-md-0 mt-2">
                                <div
                                        class="
                            bg-image
                            ripple
                            rounded-5
                            mb-4
                            overflow-hidden
                            d-block
                            "
                                        data-ripple-color="light"
                                >
                                    <img
                                            src="../template/custom/image/menu/cherry.jpg"
                                            class="w-100"
                                            alt=""
                                    />
                                    <a href="#!">
                                        <div class="hover-overlay">
                                            <div
                                                    class="mask"
                                                    style="background-color: hsla(0, 0%, 98.4%, 0.2)"
                                            ></div>
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="col-md-4 mb-4 mb-md-0">
                                <p class="fw-bold">Nước ép Cherry</p>
                                <div class="row">
                                    <div class="form-outline mb-4 col-md-4 mr-2" style="width: 80px">
                                        <input
                                                type="number"
                                                id="2"
                                                class="form-control quantity"
                                                value="1"
                                                min="1"
                                                onchange="calculatePrice()"

                                        />
                                        <label class="form-label" for="2"
                                        >Số Lượng</label
                                        >
                                    </div>
                                    <div class=" mb-4 col-md-4" style="width: 110px" >
                                        <select class="select size" onchange="calculatePrice()" >
                                            <option value="1" >S</option>
                                            <option value="2 " selected>M</option>
                                            <option value="3">L</option>
                                        </select>
                                        <label class="form-label select-label">Size</label>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-5 mb-4 mb-md-0">


                                <h5 class="mb-2">
                                    <s class="text-muted me-2 small align-middle">190.000 đ</s
                                    ><span class="align-middle totalPrice">100.000 đ</span>
                                </h5>
                                <p class="text-danger"><small>Khuyến mãi 15%</small></p>
                                <p class="mb-4">
                                    <a href="" class="text-muted pe-3"
                                    ><small
                                    ><i class="fas fa-trash me-2"></i>Xóa</small
                                    ></a
                                    >
                                </p>
                            </div>
                        </div>
                        <div class="row border-bottom mb-4 product_item">
                            <div class="col-md-3 mb-4 mb-md-0 mt-2">
                                <div
                                        class="
                            bg-image
                            ripple
                            rounded-5
                            mb-4
                            overflow-hidden
                            d-block
                            "
                                        data-ripple-color="light"
                                >
                                    <img
                                            src="../template/custom/image/menu/atiso.jpg"
                                            class="w-100"
                                            alt=""
                                    />
                                    <a href="#!">
                                        <div class="hover-overlay">
                                            <div
                                                    class="mask"
                                                    style="background-color: hsla(0, 0%, 98.4%, 0.2)"
                                            ></div>
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="col-md-4 mb-4 mb-md-0">
                                <p class="fw-bold">Atiso</p>
                                <div class="row">
                                    <div class="form-outline mb-4 col-md-4 mr-2" style="width: 80px">
                                        <input
                                                type="number"
                                                id=""
                                                class="form-control quantity"
                                                value="1"
                                                min="1"
                                                onchange="calculatePrice()"

                                        />
                                        <label class="form-label" for="typeNumber"
                                        >Số Lượng</label
                                        >
                                    </div>
                                    <div class=" mb-4 col-md-4" style="width: 110px">
                                        <select class="select size" onchange="calculatePrice()" >
                                            <option value="1" >S</option>
                                            <option value="2 " selected>M</option>
                                            <option value="3">L</option>
                                        </select>
                                        <label class="form-label select-label">Size</label>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-5 mb-4 mb-md-0">


                                <h5 class="mb-2">
                                    <s class="text-muted me-2 small align-middle">190.000 đ</s
                                    ><span class="align-middle totalPrice">90.000 đ</span>
                                </h5>
                                <p class="text-danger"><small>Khuyến mãi 15%</small></p>
                                <p class="mb-4">
                                    <a href="" class="text-muted pe-3"
                                    ><small
                                    ><i class="fas fa-trash me-2"></i>Xóa</small
                                    ></a
                                    >
                                </p>
                            </div>
                        </div>
                        <div class="row border-bottom mb-4 product_item">
                            <div class="col-md-3 mb-4 mb-md-0 mt-2">
                                <div
                                        class="
                            bg-image
                            ripple
                            rounded-5
                            mb-4
                            overflow-hidden
                            d-block
                            "
                                        data-ripple-color="light"
                                >
                                    <img
                                            src="../template/custom/image/menu/blueberry.jpg"
                                            class="w-100"
                                            alt=""
                                    />
                                    <a href="#!">
                                        <div class="hover-overlay">
                                            <div
                                                    class="mask"
                                                    style="background-color: hsla(0, 0%, 98.4%, 0.2)"
                                            ></div>
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="col-md-4 mb-4 mb-md-0">
                                <p class="fw-bold">Sinh tố Việt Quất</p>
                                <div class="row">
                                    <div class="form-outline mb-4 col-md-4 mr-2" style="width: 80px">
                                        <input
                                                type="number"
                                                id="typeNumber"
                                                class="form-control quantity"
                                                value="1"
                                                min="1"
                                                onchange="calculatePrice()"

                                        />
                                        <label class="form-label" for="typeNumber"
                                        >Số Lượng</label
                                        >
                                    </div>
                                    <div class=" mb-4 col-md-4" style="width: 110px">
                                        <select class="select size" onchange="calculatePrice()" >
                                            <option value="1" >S</option>
                                            <option value="2 " selected>M</option>
                                            <option value="3">L</option>
                                        </select>
                                        <label class="form-label select-label">Size</label>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-5 mb-4 mb-md-0">


                                <h5 class="mb-2">
                                    <s class="text-muted me-2 small align-middle">190.000 đ</s
                                    ><span class="align-middle totalPrice">90.000 đ</span>
                                </h5>
                                <p class="text-danger"><small>Khuyến mãi 15%</small></p>
                                <p class="mb-4">
                                    <a href="" class="text-muted pe-3"
                                    ><small
                                    ><i class="fas fa-trash me-2"></i>Xóa</small
                                    ></a
                                    >
                                </p>
                            </div>
                        </div>
                        <div class="row border-bottom mb-4 product_item">
                            <div class="col-md-3 mb-4 mb-md-0 mt-2">
                                <div
                                        class="
                            bg-image
                            ripple
                            rounded-5
                            mb-4
                            overflow-hidden
                            d-block
                            "
                                        data-ripple-color="light"
                                >
                                    <img
                                            src="../template/custom/image/menu/champagne.jpg"
                                            class="w-100"
                                            alt=""
                                    />
                                    <a href="#!">
                                        <div class="hover-overlay">
                                            <div
                                                    class="mask"
                                                    style="background-color: hsla(0, 0%, 98.4%, 0.2)"
                                            ></div>
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="col-md-4 mb-4 mb-md-0">
                                <p class="fw-bold">Champagne</p>
                                <div class="row">
                                    <div class="form-outline mb-4 col-md-4 mr-2" style="width: 80px">
                                        <input
                                                type="number"
                                                id="typeNumber"
                                                class="form-control quantity"
                                                value="1"
                                                min="1"
                                                onchange="calculatePrice()"

                                        />
                                        <label class="form-label" for="typeNumber"
                                        >Số Lượng</label
                                        >
                                    </div>
                                    <div class=" mb-4 col-md-4" style="width: 110px">
                                        <select class="select size" onchange="calculatePrice()" >
                                            <option value="1" >S</option>
                                            <option value="2 " selected>M</option>
                                            <option value="3">L</option>
                                        </select>
                                        <label class="form-label select-label">Size</label>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-5 mb-4 mb-md-0">


                                <h5 class="mb-2">
                                    <s class="text-muted me-2 small align-middle">190.000 đ</s
                                    ><span class="align-middle totalPrice">90.000 đ</span>
                                </h5>
                                <p class="text-danger"><small>Khuyến mãi 15%</small></p>
                                <p class="mb-4">
                                    <a href="" class="text-muted pe-3"
                                    ><small
                                    ><i class="fas fa-trash me-2"></i>Xóa</small
                                    ></a
                                    >
                                </p>
                            </div>
                        </div>
                    </section>
                    <!-- Section: Product list -->

                    <!-- Section: Details -->
                    <section class="">
                        <div>
                            <h5 class="mb-4">
                                Chúng tôi đồng ý thanh toán</h5>
                            <img
                                    class="mr-2"
                                    width="45px"
                                    src="https://mdbootstrap.com/wp-content/plugins/woocommerce-gateway-stripe/assets/images/visa.svg"
                                    alt="Visa"
                            />
                            <img
                                    class="mr-2"
                                    width="45px"
                                    src="https://mdbootstrap.com/wp-content/plugins/woocommerce-gateway-stripe/assets/images/mastercard.svg"
                                    alt="Mastercard"
                            />
                            <img
                                    class="mr-2"
                                    width="45px"
                                    src="https://mdbootstrap.com/wp-content/plugins/woocommerce/includes/gateways/paypal/assets/images/paypal.png"
                                    alt="PayPal acceptance mark"
                            />
                        </div>
                    </section>
                    <!-- Section: Details -->
                </div>

                <div class="col-lg-4 mb-4 mb-md-0">
                    <!-- Section: Summary -->
                    <section class="shadow-4 p-4 rounded-5 ">
                        <h5 class="mb-2">
                            Thông tin về bàn của bạn</h5>

                        <div class="d-flex justify-content-between ">
                            <div>
                                <span>Số bàn: </span>
                                <span>101</span>
                            </div>
                        </div>
                        <div class="d-flex justify-content-between ">
                            <div>
                                <span>Số ghế: </span>
                                <span>10</span>
                            </div>
                        </div>
                        <div class="d-flex justify-content-between">
                            <div>
                                <span>Vị trí: </span>
                                <span>Cửa sổ</span>
                            </div>
                        </div>
                        <div class="d-flex justify-content-between">
                            <div>
                                <span>Khu vực: </span>
                                <span>Tầng 1</span>
                            </div>
                        </div>
                        <div class="d-flex justify-content-between">
                            <span>Thời gian: </span>
                            <span>6/9/2023 8:30 AM - 10:00 AM</span>
                        </div>
                        <a class="btn btn-danger btn-rounded w-50 mt-2" href="table.html"
                           style="color: whitesmoke">Thay đổi bàn</a>


                        <hr class="my-4"/>
                        <h5 class="mb-2">
                            Hóa đơn của bạn</h5>

                        <div class="d-flex justify-content-between mb-3">
                            <span>Tiền tại thời </span>
                            <span id="tien-tam-thoi">1.000.000 đ</span>
                        </div>
                        <div class="d-flex justify-content-between">
                            <span>Khuyến mãi: </span>
                            <span>0 đ</span>
                        </div>
                        <hr class="my-4"/>
                        <div class="d-flex justify-content-between fw-bold mb-5">
                            <span> Tổng số tiền (bao gồm VAT)</span>
                            <span class="tong-tien">1.000.000 đ</span>
                        </div>


                        <a class="btn btn-primary btn-rounded w-100" href="../web/reservation.html"
                           style="color: white">Thanh toán</a>

                    </section>
                    <!-- Section: Summary -->

                    <!-- Section: Summary -->
<!--                    <section class="shadow-4 p-4 rounded-5">-->
<!--                        <h5 class="mb-4">Áp dụng mã khuyến mãi</h5>-->

<!--                        <div class="d-flex align-items-center">-->
<!--                            <input-->
<!--                                    type="text"-->
<!--                                    class="form-control rounded me-1"-->
<!--                                    placeholder="Mã khuyến mại"-->
<!--                            />-->
<!--                            <button-->
<!--                                    type="button"-->
<!--                                    class="btn btn-link btn-rounded overflow-visible"-->
<!--                            >-->
<!--                                Áp dụng-->
<!--                            </button>-->
<!--                        </div>-->
<!--                    </section>-->
                    <!-- Section: Summary -->
                </div>
            </div>
        </section>
        <!-- Section: Cart -->
    </div>
</main>


<!-- ***** Main Banner Area Start ***** -->

<!-- ***** Main Banner Area End ***** -->

<!-- ***** Footer Start ***** -->
<footer class="text-white text-center text-lg-start" style="background-color: #7E644B;">
    <!-- Grid container -->
    <div class="container p-4">
        <!--Grid row-->
        <div class="row">
            <!--Grid column-->
            <div class="col-lg-3 col-md-12 mb-4 mb-md-0">
                <h5 class="text-uppercase mb-4 ">Về chúng tôi</h5>

                <div>
                    <img src="../template/custom/image/drink/logo2.png" style="width: 60px;" class="mb-4" alt="">

                    <p class="text-white">
                        Coffee Shop, là điểm hẹn lý tưởng cho những buổi gặp gỡ, những cuộc trò chuyện và những khoảnh
                        khắc
                        thư giãn.
                    </p>

                    <p class="text-white">
                        Chúng tôi mong được phục vụ và làm hài lòng bạn, mỗi khi bạn đặt bàn tại đây.
                    </p>
                </div>

                <div class="mt-4">
                    <!-- Facebook -->
                    <a type="button" class="btn btn-floating btn-light btn-lg"><i class="fab fa-facebook-f"></i></a>
                    <!-- Dribbble -->
                    <a type="button" class="btn btn-floating btn-light btn-lg"><i class="fab fa-dribbble"></i></a>
                    <!-- Twitter -->
                    <a type="button" class="btn btn-floating btn-light btn-lg"><i class="fab fa-twitter"></i></a>
                    <!-- Google + -->
                    <a type="button" class="btn btn-floating btn-light btn-lg"><i class="fab fa-google-plus-g"></i></a>
                    <!-- Linkedin -->
                </div>
            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                <h5 class="text-uppercase mb-4">Tính năng nổi bật</h5>

                <ul class="fa-ul" style="margin-left: 1.65em;">
                    <li class="mb-3">
                        <span class="ms-2">Trang chủ</span>
                    </li>
                    <li class="mb-3">
                        <span class="ms-2">Khám phá thực đơn</span>
                    </li>
                    <li class="mb-3">
                        <span class="ms-2">Xem danh sách bàn</span>
                    </li>
                    <li class="mb-3">
                        <span class="ms-2">Đặt bàn ngay</span>
                    </li>

                </ul>
            </div>
            <!--Grid column-->
            <!--Grid column-->
            <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                <h5 class="text-uppercase mb-4 pb-1">Liên hệ</h5>

                <ul class="fa-ul" style="margin-left: 1.65em;">
                    <li class="mb-3">
                        <span class="fa-li"><i class="fas fa-home"></i></span><span
                            class="ms-2">Trường ĐH Nông Lâm TP.HCM</span>
                    </li>
                    <li class="mb-3">
                        <span class="fa-li"><i class="fas fa-envelope"></i></span><span
                            class="ms-2">info@example.com</span>
                    </li>
                    <li class="mb-3">
                        <span class="fa-li"><i class="fas fa-phone"></i></span><span class="ms-2">+ 01 234 567 88</span>
                    </li>
                    <li class="mb-3">
                        <span class="fa-li"><i class="fas fa-print"></i></span><span class="ms-2">+ 01 234 567 89</span>
                    </li>
                </ul>
            </div>
            <!--Grid column-->
            <!--Grid column-->
            <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                <h5 class="text-uppercase mb-4">Giờ mở cửa</h5>

                <table class="table  text-white">
                    <tbody class="font-weight-normal">
                    <tr>
                        <td>Thứ 2 - Thứ 6:</td>
                        <td>6h00 - 22h30</td>
                    </tr>
                    <tr>
                        <td>Thứ 7 - Chủ nhật:</td>
                        <td>6h00 - 23h00</td>
                    </tr>

                    </tbody>
                </table>
                <tr>
                    <a href="http://online.gov.vn/" target="_blank" rel="nofollow noreferrer">
                        <img src="https://file.hstatic.net/1000300454/file/logo_bct_019590229b4c4dfda690236b67f7aff4.png"
                             alt="Bộ Công Thương">
                    </a>
                </tr>
            </div>
            <!--Grid column-->
        </div>
        <!--Grid row-->
    </div>
    <!-- Grid container -->

</footer>

<!-- jQuery -->
<script src="../template/assets/js/jquery-2.1.0.min.js"></script>

<script type="text/javascript" src="../template/mdb/js/mdb.min.js"></script>
<!-- MDB PLUGINS -->
<script type="text/javascript" src="../template/mdb/plugins/js/all.min.js"></script>
<script src="../template/mdb/js/mdb.umd.min.js"></script>
<script src="../template/custom/js/bill.js"></script>
</body>
</html>