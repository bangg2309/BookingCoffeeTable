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
<%@ include file="layout/header.jsp"%>
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
                        <a class="btn btn-danger btn-rounded w-50 mt-2" href="table.jsp"
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


                        <a class="btn btn-primary btn-rounded w-100" href="reservation.jsp"
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

<!-- ***** Footer Start ***** -->
<%@ include file="layout/footer.jsp"%>
<!-- ***** Footer End ***** -->

<!-- jQuery -->
<script src="../template/assets/js/jquery-2.1.0.min.js"></script>

<script type="text/javascript" src="../template/mdb/js/mdb.min.js"></script>
<!-- MDB PLUGINS -->
<script type="text/javascript" src="../template/mdb/plugins/js/all.min.js"></script>
<script src="../template/mdb/js/mdb.umd.min.js"></script>
<script src="../template/custom/js/bill.js"></script>
</body>
</html>