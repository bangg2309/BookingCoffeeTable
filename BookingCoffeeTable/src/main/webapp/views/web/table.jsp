<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
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
    <link rel="stylesheet" type="text/css" href="<c:url value="/views/template/assets/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/views/template/assets/css/owl-carousel.css"/>">

    <!-- MDB ESSENTIAL -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/css/mdb.min.css"/>"/>
    <!-- MDB PLUGINS -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/plugins/css/all.min.css"/>"/>

    <!-- Custom css-->
    <link rel="stylesheet" href="<c:url value="/views/template/custom/css/table.css"/>">

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
                                <c:forEach var="area" items="${areas}">
                                    <p class="mb-3">
                                        <a href="#!" class="text-reset" style="text-transform: uppercase">${area.name}</a>
                                    </p>
                                </c:forEach>


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
                                <input type="date" class="form-control" name="start" id="filterDate" value="">
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
                        <c:forEach var="table" items="${tables}">
                            <div class="col-lg-4 col-6 mb-4">
                                <!-- Product card -->
                                <div>
                                    <!-- Product image -->
                                    <div class="bg-image ripple shadow-4-soft rounded-6 mb-4 overflow-hidden d-block table_main"
                                         data-ripple-color="light">
                                        <img src="<c:url value="${table.image}" />"class="w-100" alt=""/>
                                        <!--                                    <div class="hover-overlay table_alpha">-->
                                        <!--                                            <h3>Table</h3>-->
                                        <!--                                    </div>-->
                                        <div class="hover-overlay table_omega text-center">
                                            <br>
                                            <h4>Số bàn: ${table.tableNum}</h4>
                                            <h4>chỗ ngồi: ${table.seatCount}</h4>
                                            <h4>Vị trí: ${table.location}</h4>
                                            <a href="home.jsp" class="btn btn-primary" style="text-transform: uppercase">Chọn
                                                bàn</a>
                                        </div>


                                    </div>
                                </div>


                            </div>
                        </c:forEach>
                    </div>
<%--                    <div class="next_button col d-flex justify-content-center mt-2">--%>
<%--                        <a style="text-transform: uppercase; font-family: Roboto; color: #bf9369" href="">Xem thêm</a>--%>
<%--                    </div>--%>

                    <ul class="pagination justify-content-end">
                        <c:if test="${currentPage > 1}">
                            <li class="page-item">
                                <a class="page-link btn_page" href="?page=${currentPage - 1}">Previous</a>
                            </li>
                        </c:if>

                        <c:forEach var="page" begin="1" end="${totalPages}">
                            <li class="page-item ${page == currentPage ? 'active' : ''}">
                                <c:choose>
                                    <c:when test="${page == currentPage}">
                                        <span class="page-link btn_page">${page}</span>
                                    </c:when>
                                    <c:otherwise>
                                        <a class="page-link btn_page" href="?page=${page}">${page}</a>
                                    </c:otherwise>
                                </c:choose>
                            </li>
                        </c:forEach>

                        <c:if test="${currentPage < totalPages}">
                            <li class="page-item">
                                <a class="page-link" href="?page=${currentPage + 1}">Next</a>
                            </li>
                        </c:if>
                    </ul>
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
<script src="<c:url value="/views/template/assets/js/jquery-2.1.0.min.js"/>"></script>
<!---->



<script type="text/javascript" src="<c:url value="/views/template/mdb/js/mdb.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/views/template/mdb/plugins/js/all.min.js"/>"></script>
<script src="<c:url value="/views/template/mdb/js/mdb.umd.min.js"/>"></script>

</body>
</html>