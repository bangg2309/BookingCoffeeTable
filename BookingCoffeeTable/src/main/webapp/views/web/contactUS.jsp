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

    <title>Contact US</title>

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="../template/assets/css/templatemo-klassy-cafe.css">
    <!-- MDB ESSENTIAL -->
    <link rel="stylesheet" href="../template/mdb/css/mdb.min.css"/>
    <!-- MDB PLUGINS -->
    <link rel="stylesheet" href="../template/mdb/plugins/css/all.min.css"/>
    <!-- Custom css-->
    <link rel="stylesheet" href="../template/custom/css/contactUS.css">
    <link rel="stylesheet" href="../template/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css">
</head>

<body>
<!-- ***** Header Area Start ***** -->
<%@ include file="layout/header.jsp"%>
<!-- ***** Header Area End ***** -->


<!--Main layout-->
<div class="hidden-sn white-skin animated" style="margin-top: 80px">
    <!--form-->
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
                                                <textarea class="input100 mt-2" type="text" name="textarea"> </textarea>
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
                                    <p><i class="fas fa-map-marker-alt pr-2"></i>Trường Đại học Nông Lâm Tp.Hồ Chí Minh
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
    <!--map-->
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
<!-- ***** Footer Start ***** -->
<%@ include file="layout/footer.jsp"%>
<!-- ***** Footer End ***** -->


<!-- Global Init -->
<script src="../template/mdb/js/mdb.umd.min.js"></script>
<script src="../template/assets/js/custom.js"></script>
<script src="../template/custom/js/login.js"></script>
</body>
</html>