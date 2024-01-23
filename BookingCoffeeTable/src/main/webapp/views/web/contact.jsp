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

    <title>Contact US</title>

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="<c:url value="/views/template/assets/css/templatemo-klassy-cafe.css"/>">
    <!-- MDB ESSENTIAL -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/css/mdb.min.css"/>"/>
    <!-- MDB PLUGINS -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/plugins/css/all.min.css"/>"/>
    <!-- Custom css-->
    <link rel="stylesheet" href="<c:url value="/views/template/custom/css/contact.css"/>">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/sweetalert2@11">
</head>

<body>
<!-- ***** Header Area Start ***** -->
<%@ include file="layout/header.jsp" %>
<!-- ***** Header Area End ***** -->


<!--Main layout-->
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

<!-- Global Init -->
<script src="<c:url value="/views/template/assets/js/jquery-2.1.0.min.js"/>"></script>
<script src="<c:url value="/views/template/mdb/js/mdb.umd.min.js"/>"></script>
<script src="<c:url value="/views/template/assets/js/custom.js"/>"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</body>
</html>