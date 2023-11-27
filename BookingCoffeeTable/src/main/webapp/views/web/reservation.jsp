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

    <title>Menu</title>

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

<div class="main_content" style="margin-top: 80px">
    <section class="h-100 bg-dark">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col">
                    <div class="card card-registration my-4">
                        <div class="row g-0">
                            <div class="col-xl-6 d-none d-xl-block justify-content-center p-2">
                                <img src="../template/custom/image/reservation/coffee%20shop%20(1).png"
                                     alt="Sample photo" class="img-fluid"
                                     style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
                            </div>
                            <div class="col-xl-6">
                                <div class="card-body p-md-5 text-black">
                                    <h3 class="mb-5 text-uppercase">Thông tin đặt bàn</h3>

                                    <div class="row">
                                        <div class="col-md-12 mb-4">
                                            <div class="form-outline">
                                                <input type="text" id="name" class="form-control form-control-lg" />
                                                <label class="form-label" for="name">Họ Và Tên Người Đặt</label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6 mb-4">
                                            <div class="form-outline">
                                                <input type="text" id="phone" class="form-control form-control-lg" />
                                                <label class="form-label" for="phone">Số Điện Thoại</label>
                                            </div>
                                        </div>
                                        <div class="col-md-6 mb-4">
                                            <div class="form-outline">
                                                <input type="text" id="email" class="form-control form-control-lg" />
                                                <label class="form-label" for="email">Email</label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-outline mb-4">
                                        <input type="text" id="note" class="form-control form-control-lg" />
                                        <label class="form-label" for="note">Ghi Chú</label>
                                    </div>

                                    <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">

                                        <h6 class="mb-0 me-4">Phương Thức Thanh Toán: </h6>

                                        <select id="singleSelection" class="select">
                                            <option value="1">Visa</option>
                                            <option value="2">Mater Card</option>
                                            <option value="3">Momo</option>
                                            <option value="3">Tiền Mặt</option>
                                        </select>

                                    </div>

                                    <div class="d-flex justify-content-end pt-3">
                                        <a class="btn btn-warning btn-lg" href="bill.jsp">Quay lại</a>
                                        <a class="btn btn-success btn-lg ms-2" href="bill.jsp">Xác nhận</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>


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