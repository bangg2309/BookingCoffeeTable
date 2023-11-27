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
    <link rel="stylesheet" href="../template/assets/css/owl-carousel.css">

    <!-- MDB ESSENTIAL -->
    <link rel="stylesheet" href="../template/mdb/css/mdb.min.css"/>
    <!-- MDB PLUGINS -->
    <link rel="stylesheet" href="../template/mdb/plugins/css/all.min.css"/>

    <!-- Custom css-->
    <link rel="stylesheet" href="../template/custom/css/table.css">

</head>

<body>
<!-- ***** Header Area Start ***** -->
<%@ include file="layout/header.jsp"%>
<!-- ***** Header Area End ***** -->

<div class="main_content" style="margin-top: 100px">

    <!--Main layout-->
    <main class="mb-6">
        <div class="container">
            <div class="row gx-lg-5">
                <div class="col-lg-2 d-none d-lg-block">
                    <!-- Section: Filters -->
                    <section class="">
                        <!-- Section: Search -->
                        <section class="mb-5 mt-4">
                            <div class="d-flex">
                                <input
                                        type="search"
                                        class="form-control rounded me-1"
                                        placeholder="Tìm kiếm"
                                        aria-label="Search"
                                        aria-describedby="search-addon"
                                />
                                <a
                                        href="#!"
                                        role="button"
                                        class="
                        btn btn-link btn-floating
                        text-reset
                        overflow-visible
                        "
                                >
                                    <i class="fas fa-search"></i>
                                </a>
                            </div>
                        </section>
                        <!-- Section: Search -->

                        <!-- Section: Categories -->
                        <section class="mb-5">
                            <h5 class="fw-bold mb-4">Khu vực</h5>

                            <div class="text-muted small text-uppercase">
                                <p class="mb-3">
                                    <a href="#!" class="text-reset">Sân vườn</a>
                                </p>
                                <p class="mb-3">
                                    <a href="#!" class="text-reset">Tầng 1</a>
                                </p>
                                <p class="mb-3">
                                    <a href="#!" class="text-reset">Tầng 2</a>
                                </p>
                                <p class="mb-3">
                                    <a href="#!" class="text-reset">Tầng 3</a>
                                </p>
                                <p class="mb-3">
                                    <a href="#!" class="text-reset">Sân thượng</a>
                                </p>


                            </div>
                        </section>
                        <!-- Section: Categories -->

                    </section>
                    <!-- Section: Filters -->
                </div>
                <div class="col-lg-10">

                    <div class="d-flex justify-content-end mb-5">

                        <form class="d-flex justify-content-between flex-wrap">
                            <!-- Ngày Đặt -->
                            <div class=" col-md-2 mb-3">
                                <label for="filterDate" class="form-label ">Ngày Đặt:</label>
                                <input type="date" class="form-control" id="filterDate">
                            </div>
                            <!-- Thời Gian Đặt -->
                            <div class="col-md-2 mb-3">
                                <label for="filterStartTime" class="form-label">Thời Gian Đặt:</label>
                                <input type="time" class="form-control" id="filterStartTime" min="08:00" max="18:00">
                            </div>
                            <!-- Thời Gian Kết Thúc -->
                            <div class="col-md-2 mb-3">
                                <label for="filterEndTime" class="form-label">Thời Gian Kết Thúc:</label>
                                <input type="time" class="form-control" id="filterEndTime">
                            </div>
                            <!-- Vị Trí -->
                            <div class="col-md-2 mb-3">
                                <label for="filterLocation" class="form-label">Vị Trí:</label>
                                <select class="select" id="filterLocation">
                                    <option value="1" selected>Chọn vị trí</option>
                                    <option value="2">Trong nhà</option>
                                    <option value="3">Ban công</option>
                                    <option value="3">Cửa sổ</option>
                                    <option value="3">Quầy bar</option>
                                </select>
                            </div>
                            <!-- Số người -->
                            <div class="col-md-2 mb-3">
                                <label for="filterPeople" class="form-label">Số người:</label>
                                <input type="number" class="form-control" id="filterPeople" min="1">
                            </div>
                            <!-- Nút Áp Dụng -->
                            <div class="col-md-2 mb-3 d-flex align-items-end pb-1 justify-content-center">

                                <div>
                                    <button type="button" class="btn btn-primary  " onclick="applyFilter()">Tìm kiếm
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="row gx-xl-5 justify-content-center">
                        <div class="col-lg-4 col-6 mb-4">
                            <!-- Product card -->
                            <div>
                                <!-- Product image -->
                                <div class="bg-image ripple shadow-4-soft rounded-6 mb-4 overflow-hidden d-block table_main"
                                     data-ripple-color="light">
                                    <img src="../template/custom/image/table/table.jpg" class="w-100" alt=""/>
                                    <!--                                    <div class="hover-overlay table_alpha">-->
                                    <!--                                            <h3>Table</h3>-->
                                    <!--                                    </div>-->
                                    <div class="hover-overlay table_omega text-center">
                                        <br>
                                        <h4>Số bàn: 101</h4>
                                        <h4>chỗ ngồi: 5 người</h4>
                                        <h4>Vị trí: cửa sổ</h4>
                                        <a href="home.jsp" class="btn btn-primary" style="text-transform: uppercase">Chọn
                                            bàn</a>
                                    </div>


                                </div>
                            </div>


                        </div>
                        <div class="col-lg-4 col-6 mb-4">
                            <!-- Product card -->
                            <div>
                                <!-- Product image -->
                                <div class="bg-image ripple shadow-4-soft rounded-6 mb-4 overflow-hidden d-block table_main"
                                     data-ripple-color="light">
                                    <img src="../template/custom/image/table/table1.jpg" class="w-100 h-100" alt=""/>
                                    <!--                                    <div class="hover-overlay table_alpha">-->
                                    <!--                                        <h3>Table</h3>-->
                                    <!--                                    </div>-->
                                    <div class="hover-overlay table_omega text-center">
                                        <br>
                                        <h4>Số bàn: 102</h4>
                                        <h4>chỗ ngồi: 2 người</h4>
                                        <h4>Vị trí: cửa sổ</h4>
                                        <a href="home.jsp" class="btn btn-primary" style="text-transform: uppercase">Chọn
                                            bàn</a>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <div class="col-lg-4 col-6 mb-4">
                            <!-- Product card -->
                            <div>
                                <!-- Product image -->
                                <div class="bg-image ripple shadow-4-soft rounded-6 mb-4 overflow-hidden d-block table_main"
                                     data-ripple-color="light">
                                    <img src="../template/custom/image/table/table2.jpg" class="w-100" alt=""/>
                                    <!--                                    <div class="hover-overlay table_alpha">-->
                                    <!--                                        <h3>Table</h3>-->
                                    <!--                                    </div>-->
                                    <div class="hover-overlay table_omega text-center">
                                        <br>
                                        <h4>Số bàn: 103</h4>
                                        <h4>chỗ ngồi: 4 người</h4>
                                        <h4>Vị trí: cửa sổ</h4>
                                        <a href="home.jsp" class="btn btn-primary" style="text-transform: uppercase">Chọn
                                            bàn</a>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <div class="col-lg-4 col-6 mb-4">
                            <!-- Product card -->
                            <div>
                                <!-- Product image -->
                                <div class="bg-image ripple shadow-4-soft rounded-6 mb-4 overflow-hidden d-block table_main"
                                     data-ripple-color="light">
                                    <img src="../template/custom/image/table/table3.jpeg" class="w-100 h-100" alt=""/>
                                    <!--                                    <div class="hover-overlay table_alpha">-->
                                    <!--                                        <h3>Table</h3>-->
                                    <!--                                    </div>-->
                                    <div class="hover-overlay table_omega text-center">
                                        <br>
                                        <h4>Số bàn: 104</h4>
                                        <h4>chỗ ngồi: 1 người</h4>
                                        <h4>Vị trí: cửa sổ</h4>
                                        <a href="home.jsp" class="btn btn-primary" style="text-transform: uppercase">Chọn
                                            bàn</a>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <div class="col-lg-4 col-6 mb-4">
                            <!-- Product card -->
                            <div>
                                <!-- Product image -->
                                <div class="bg-image ripple shadow-4-soft rounded-6 mb-4 overflow-hidden d-block table_main"
                                     data-ripple-color="light">
                                    <img src="../template/custom/image/table/table4.jpg" class="w-100" alt=""/>
                                    <!--                                    <div class="hover-overlay table_alpha">-->
                                    <!--                                        <h3>Table</h3>-->
                                    <!--                                    </div>-->
                                    <div class="hover-overlay table_omega text-center">
                                        <br>
                                        <h4>Số bàn: 105</h4>
                                        <h4>Vị trí: trong nhà</h4>
                                        <a href="home.jsp" class="btn btn-primary" style="text-transform: uppercase">Chọn
                                            bàn</a>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <div class="col-lg-4 col-6 mb-4">
                            <!-- Product card -->
                            <div>
                                <!-- Product image -->
                                <div class="bg-image ripple shadow-4-soft rounded-6 mb-4 overflow-hidden d-block table_main"
                                     data-ripple-color="light">
                                    <img src="../template/custom/image/table/table5.jpg" class="w-100" alt=""/>

                                    <div class="hover-overlay table_omega text-center">
                                        <br>
                                        <h4>Số bàn: 106</h4>
                                        <h4>chỗ ngồi: 6 người</h4>
                                        <h4>Vị trí: trong nhà</h4>
                                        <a href="home.jsp" class="btn btn-primary" style="text-transform: uppercase">Chọn
                                            bàn</a>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <div class="col-lg-4 col-6 mb-4">
                            <!-- Product card -->
                            <div>
                                <!-- Product image -->
                                <div class="bg-image ripple shadow-4-soft rounded-6 mb-4 overflow-hidden d-block table_main"
                                     data-ripple-color="light">
                                    <img src="../template/custom/image/table/table6.jpg" class="w-100" alt=""/>
                                    <!--                                    <div class="hover-overlay table_alpha">-->
                                    <!--                                        <h3>Table</h3>-->
                                    <!--                                    </div>-->
                                    <div class="hover-overlay table_omega text-center">
                                        <br>
                                        <h4>Số bàn: 107</h4>
                                        <h4>chỗ ngồi: 4 người</h4>
                                        <h4>Vị trí: tầng thượng</h4>
                                        <a href="home.jsp" class="btn btn-primary" style="text-transform: uppercase">Chọn
                                            bàn</a>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <div class="col-lg-4 col-6 mb-4">
                            <!-- Product card -->
                            <div>
                                <!-- Product image -->
                                <div class="bg-image ripple shadow-4-soft rounded-6 mb-4 overflow-hidden d-block table_main"
                                     data-ripple-color="light">
                                    <img src="../template/custom/image/table/table9.jpg" class="w-100" alt=""/>
                                    <!--                                    <div class="hover-overlay table_alpha">-->
                                    <!--                                        <h3>Table</h3>-->
                                    <!--                                    </div>-->
                                    <div class="hover-overlay table_omega text-center">
                                        <br>
                                        <h4>Số bàn: 108</h4>
                                        <h4>chỗ ngồi: 5 người</h4>
                                        <h4>Vị trí: cửa sổ</h4>
                                        <a href="home.jsp" class="btn btn-primary" style="text-transform: uppercase">Chọn
                                            bàn</a>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <div class="col-lg-4 col-6 mb-4">
                            <!-- Product card -->
                            <div>
                                <!-- Product image -->
                                <div class="bg-image ripple shadow-4-soft rounded-6 mb-4 overflow-hidden d-block table_main"
                                     data-ripple-color="light">
                                    <img src="../template/custom/image/table/table8.jpg" class="w-100" alt=""/>
                                    <!--                                    <div class="hover-overlay table_alpha">-->
                                    <!--                                        <h3>Table</h3>-->
                                    <!--                                    </div>-->
                                    <div class="hover-overlay table_omega text-center">
                                        <br>
                                        <h4>Số bàn: 109</h4>
                                        <h4>chỗ ngồi: 5 người</h4>
                                        <h4>Vị trí: cửa sổ</h4>
                                        <a href="home.jsp" class="btn btn-primary" style="text-transform: uppercase">Chọn
                                            bàn</a>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>
                    <div class="next_button col d-flex justify-content-center mt-2">
                        <a style="text-transform: uppercase; font-family: Roboto; color: #bf9369" href="">Xem thêm</a>
                    </div>
                </div>


            </div>
        </div>


    </main>
    <!--Main layout-->


    <!-- ***** Main Banner Area Start ***** -->

    <!-- ***** Main Banner Area End ***** -->


</div>
<!-- ***** Footer Start ***** -->
<%@ include file="layout/footer.jsp"%>
<!-- ***** Footer End ***** -->
<!-- jQuery -->
<script src="../template/assets/js/jquery-2.1.0.min.js"></script>
<!---->



<script type="text/javascript" src="../template/mdb/js/mdb.min.js"></script>
<script type="text/javascript" src="../template/mdb/plugins/js/all.min.js"></script>
<script src="../template/mdb/js/mdb.umd.min.js"></script>

</body>
</html>