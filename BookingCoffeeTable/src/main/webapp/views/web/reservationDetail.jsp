<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>

    <title>Chi tiết đơn đặt bàn</title>

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

    <!-- Custom css-->
    <link rel="stylesheet" href="../template/custom/css/reservation.css">


</head>

<body>
<!-- ***** Header Area Start ***** -->
<%@ include file="layout/header.jsp"%>
<!-- ***** Header Area End ***** -->

<main class="mb-6" style="padding-top: 20px; margin-top: 800px">
    <div class="container ">
        <!-- Section: Cart -->
        <section class="">
            <div class="row gx-lg-5">
                <div class="col-lg-8 mb-4 mb-md-0 ">
                    <!-- Section: Product list -->
                    <section class="mb-5" data-mdb-perfect-scrollbar="true" data-mdb-suppress-scroll-x="true"
                             style="position: sticky; height: 600px">
                        <div class="row border-bottom mb-4">
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
                                                id="typeNumber"
                                                class="form-control"
                                                value="1"
                                                min="1" disabled style="background-color: white"

                                        />
                                        <label class="form-label" for="typeNumber"
                                        >Số Lượng</label
                                        >
                                    </div>
                                    <div class="form-outline mb-4 col-md-4 mr-2" style="width: 80px">
                                        <input
                                                type="text"
                                                id="typeNumber"
                                                class="form-control"
                                                value="M"
                                                min="1" disabled style="background-color: white"

                                        />
                                        <label class="form-label" for="typeNumber"
                                        >Size</label
                                        >
                                    </div>

                                </div>
                            </div>

                            <div class="col-md-5 mb-4 mb-md-0">


                                <h5 class="mb-2">
                                    <s class="text-muted me-2 small align-middle">190.000 đ</s
                                    ><span class="align-middle">90.000 đ</span>
                                </h5>
                                <p class="text-danger"><small>Khuyến mãi 15%</small></p>
                               
                            </div>
                        </div>
                        <div class="row border-bottom mb-4">
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
                                                id="typeNumber"
                                                class="form-control"
                                                value="1"
                                                min="1" disabled style="background-color: white"

                                        />
                                        <label class="form-label" for="typeNumber"
                                        >Số Lượng</label
                                        >
                                    </div>
                                    <div class="form-outline mb-4 col-md-4 mr-2" style="width: 80px">
                                        <input
                                                type="text"
                                                id="typeNumber"
                                                class="form-control"
                                                value="M"
                                                min="1" disabled style="background-color: white"

                                        />
                                        <label class="form-label" for="typeNumber"
                                        >Size</label
                                        >
                                    </div>

                                </div>
                            </div>

                            <div class="col-md-5 mb-4 mb-md-0">


                                <h5 class="mb-2">
                                    <s class="text-muted me-2 small align-middle">190.000 đ</s
                                    ><span class="align-middle">90.000 đ</span>
                                </h5>
                                <p class="text-danger"><small>Khuyến mãi 15%</small></p>
                               
                            </div>
                        </div>
                        <div class="row border-bottom mb-4">
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
                                <p class="fw-bold">Sinh tố atiso</p>
                                <div class="row">
                                    <div class="form-outline mb-4 col-md-4 mr-2" style="width: 80px">
                                        <input
                                                type="number"
                                                id="typeNumber"
                                                class="form-control"
                                                value="1"
                                                min="1" disabled style="background-color: white"

                                        />
                                        <label class="form-label" for="typeNumber"
                                        >Số Lượng</label
                                        >
                                    </div>
                                    <div class="form-outline mb-4 col-md-4 mr-2" style="width: 80px">
                                        <input
                                                type="text"
                                                id="typeNumber"
                                                class="form-control"
                                                value="M"
                                                min="1" disabled style="background-color: white"

                                        />
                                        <label class="form-label" for="typeNumber"
                                        >Size</label
                                        >
                                    </div>

                                </div>
                            </div>

                            <div class="col-md-5 mb-4 mb-md-0">


                                <h5 class="mb-2">
                                    <s class="text-muted me-2 small align-middle">190.000 đ</s
                                    ><span class="align-middle">90.000 đ</span>
                                </h5>
                                <p class="text-danger"><small>Khuyến mãi 15%</small></p>
                               
                            </div>
                        </div>
                    </section>
                    <!-- Section: Product list -->

                    <!-- Section: Details -->
                    <!-- Section: Details -->
                </div>

                <div class="col-lg-4 mb-4 mb-md-0">
                    <!-- Section: Summary -->
                    <section class="shadow-4 p-4 rounded-5 ">
                        <h5 class="mb-2">
                            Thông tin về đơn đặt bàn của bạn</h5>
                        <div class="d-flex justify-content-between mb-2">
                            <div>
                                <span>Người đặt: </span>
                                <span>Đỗ Công Thịnh</span>
                            </div>

                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <div>
                                <span>Email : </span>
                                <span>21130187@st.hcmuaf.edu.vn</span>
                            </div>

                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <div>
                                <span>Số điện thoại: </span>
                                <span>0769644603    </span>
                            </div>

                        </div>

                        <div class="d-flex justify-content-between mb-2">
                            <div>
                                <span>Ghi chú: </span>
                                <span>Tiệc sinh nhật</span>
                            </div>

                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <div>
                                <span>Phương thức thanh toán: </span>
                                <span>Momo</span>
                            </div>

                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <div>
                                <span>Ngày đặt: </span>
                                <span>04-09-2023 8:30 AM</span>
                            </div>

                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <div>
                                <span>Số bàn: </span>
                                <span>101</span>
                            </div>

                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <div>
                                <span>Số ghế: </span>
                                <span>10</span>
                            </div>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <div>
                                <span>Vị trí: </span>
                                <span>Cửa sổ</span>
                            </div>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <div>
                                <span>Khu vực: </span>
                                <span>Tầng 1</span>
                            </div>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <span>Thời gian: </span>
                            <span>06-09-2023 8:30 AM - 10:00 AM</span>
                        </div>


                        <hr class="my-4"/>
                        <h5 class="mb-2">
                            Hóa đơn của bạn</h5>

                        <div class="d-flex justify-content-between mb-3">
                            <span>Tiền tạm thời </span>
                            <span>1.000.000 đ</span>
                        </div>
                        <div class="d-flex justify-content-between">
                            <span>Khuyến mãi: </span>
                            <span>0 đ</span>
                        </div>
                        <hr class="my-4"/>
                        <div class="d-flex justify-content-between fw-bold mb-5">
                            <span> Tổng số tiền (bao gồm VAT)</span>
                            <span>1.000.000 đ</span>
                        </div>
                        <div class="d-flex justify-content-betweemb-5">
                            <a class="btn btn-danger btn-rounded w-100 mr-4" href="reservation.jsp"
                               style="color: white">Hủy đơn</a>
                            <a class="btn btn-success btn-rounded w-100" href="reservation.jsp"
                               style="color: white">Liên hệ</a>
                        </div>
                    </section>
                </div>
            </div>
        </section>
        <!-- Section: Cart -->
    </div>
</main>


<!-- ***** Main Banner Area Start ***** -->

<!-- ***** Main Banner Area End ***** -->

<!-- ***** Footer Start ***** -->
<%@ include file="layout/footer.jsp"%>
<!-- ***** Footer End ***** -->

<!-- jQuery -->
<script src="../template/assets/js/jquery-2.1.0.min.js"></script>



<script type="text/javascript" src="../template/mdb/js/mdb.min.js"></script>
<!-- MDB PLUGINS -->
<script type="text/javascript" src="../template/mdb/plugins/js/all.min.js"></script>
<script src="../template/mdb/js/mdb.umd.min.js"></script>
</body>
</html>