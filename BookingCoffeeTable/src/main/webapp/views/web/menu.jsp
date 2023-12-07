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
    <link rel="stylesheet" href="<c:url value="/views/template/assets/css/owl-carousel.css"/>">

    <!-- MDB ESSENTIAL -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/css/mdb.min.css"/>"/>
    <!-- MDB PLUGINS -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/plugins/css/all.min.css"/>"/>

    <!-- Custom css-->
    <link rel="stylesheet" href="<c:url value="/views/template/custom/css/menu.css"/>">


</head>

<body>
<!-- ***** Header Area Start ***** -->
<%@ include file="layout/header.jsp"%>
<!-- ***** Header Area End ***** -->


<div class="main_content" style="margin-top: 80px">

    <!--Main layout-->
    <main class="mb-6 mt-2">
        <div class="container">
            <div class="row gx-lg-5">
                <div class="col-lg-3 d-none d-lg-block mt-2">
                    <!-- Section: Filters -->
                    <section class="">
                        <!-- Section: Search -->
                        <section class="mb-5">
                            <div class="d-flex">
                                <input
                                        type="search"
                                        class="form-control rounded me-1"
                                        placeholder="Search"
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
                            <h5 class="fw-bold mb-4">Danh mục</h5>

                            <div class="text-muted small text-Lớn hơnpercase">
                                <c:forEach var="category" items="${categories}">
                                <p class="mb-3">
                                    <a href="#!" class="text-reset" style="text-transform: uppercase">${category.name}</a>
                                </p>
                                </c:forEach>
                            </div>
                        </section>
                        <!-- Section: Categories -->


                        <!-- Section: Avg. Customer Review -->
                        <section class="mb-5">
                            <h5 class="fw-bold mb-4">Đánh giá</h5>

                            <a href="" class="d-flex align-items-center mb-3">
                                <ul
                                        class="rating me-2"
                                        data-mdb-toggle="rating"
                                        data-mdb-readonly="true"
                                        data-mdb-value="4"
                                >
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                </ul>
                                <small class="text-muted">& Lớn hơn</small>
                            </a>

                            <a href="" class="d-flex align-items-center mb-3">
                                <ul
                                        class="rating me-2"
                                        data-mdb-toggle="rating"
                                        data-mdb-readonly="true"
                                        data-mdb-value="3"
                                >
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                </ul>
                                <small class="text-muted">& Lớn hơn</small>
                            </a>

                            <a href="" class="d-flex align-items-center mb-3">
                                <ul
                                        class="rating me-2"
                                        data-mdb-toggle="rating"
                                        data-mdb-readonly="true"
                                        data-mdb-value="2"
                                >
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                </ul>
                                <small class="text-muted">& Lớn hơn</small>
                            </a>

                            <a href="" class="d-flex align-items-center mb-3">
                                <ul
                                        class="rating me-2"
                                        data-mdb-toggle="rating"
                                        data-mdb-readonly="true"
                                        data-mdb-value="1"
                                >
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                    <li>
                                        <i class="far fa-star fa-sm color_far"></i>
                                    </li>
                                </ul>
                                <small class="text-muted">& Lớn hơn</small>
                            </a>
                        </section>
                        <!-- Section: Avg. Customer Review -->

                        <!-- Section: Price - radio -->
                        <section class="mb-5">
                            <h5 class="fw-bold mb-4">Giá</h5>

                            <div class="form-check mb-3">
                                <input
                                        class="form-check-input"
                                        type="radio"
                                        name="radioForm"
                                        id="radioCondition1"

                                />
                                <label class="form-check-label" for="radioCondition1">
                                    Dưới 25.000đ
                                </label>
                            </div>

                            <div class="form-check mb-3">
                                <input
                                        class="form-check-input"
                                        type="radio"
                                        name="radioForm"
                                        id="radioCondition2"
                                />
                                <label class="form-check-label" for="radioCondition2">
                                    25.000đ - 50.000đ
                                </label>
                            </div>

                            <div class="form-check mb-3">
                                <input
                                        class="form-check-input"
                                        type="radio"
                                        name="radioForm"
                                        id="radioCondition3"
                                />
                                <label class="form-check-label" for="radioCondition2">
                                    50.000đ - 100.000đ
                                </label>
                            </div>

                            <div class="form-check mb-3">
                                <input
                                        class="form-check-input"
                                        type="radio"
                                        name="radioForm"
                                        id="radioCondition4"
                                />
                                <label class="form-check-label" for="radioCondition2">
                                    100.000đ - 200.000đ
                                </label>
                            </div>


                        </section>
                        <!-- Section:  Price - radio -->

                    </section>
                    <!-- Section: Filters -->
                </div>

                <div class="col-lg-9">
                    <!--Section: Sorting-->
                    <section class="mb-6">
                        <div class="row d-flex justify-content-between">
                            <div class="col-4 col-lg-3 text-center text-lg-start mt-2">
                                <button
                                        class="btn btn-link btn-floating text-reset btn-lg active"
                                >
                                    <i class="fas fa-th-list fa-lg"></i>
                                </button>
<!--                                <button class="btn btn-link btn-floating text-reset btn-lg">-->
<!--                                    <i class="fas fa-th-large fa-lg"></i>-->
<!--                                </button>-->
                            </div>

                            <div class="col-8 col-lg-6 d-flex justify-content-end mt-2">
                                <select class="select">
                                    <!--                                    <option value="1">Bán chạy nhất</option>-->
                                    <option value="1">Tên</option>
                                    <option value="2">Giá thấp nhất</option>
                                    <option value="3">Giá cao nhất</option>
                                </select>
                                <label class="form-label select-label">Sắp xếp</label>
                            </div>


                        </div>
                    </section>
                    <!--Section: Sorting-->

                    <!-- Section: Products -->
                    <section class="mb-8">
                        <div class="row gx-xl-5 justify-content-center">
                            <c:forEach var="product" items="${products}">
                                <div class="col-lg-4 col-6 mb-4">
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
                      d-block
                      "
                                                data-ripple-color="light"
                                        >
                                            <img

                                                    src="<c:url value="${product.images.get(0).url}"/>"


                                                    class="w-100"
                                                    alt=""/>

                                            <a href="productDetail.jsp">
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
                  >-15%</span
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
                                            <p class="fw-bold mb-2">${product.name}</p>
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
                                                <s class="text-muted me-2 small align-middle">${product.price}</s
                                                ><span class="align-middle">${product.price - product.discount}</span>
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
                                    <!-- Product card -->
                                </div>
                            </c:forEach>
                        </div>
                        <ul class="pagination justify-content-center">
                            <c:if test="${currentPage > 1}">
                                <li class="page-item">
                                    <a class="page-link" href="?page=${currentPage - 1}">Previous</a>
                                </li>
                            </c:if>

                            <c:forEach var="page" begin="1" end="${totalPages}">
                                <li class="page-item ${page == currentPage ? 'active' : ''}">
                                    <c:choose>
                                        <c:when test="${page == currentPage}">
                                            <span class="page-link">${page}</span>
                                        </c:when>
                                        <c:otherwise>
                                            <a class="page-link" href="?page=${page}">${page}</a>
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
                    </section>
                    <!-- Section: Products -->
                    <div class="d-none d-lg-flex justify-content-center justify-content-lg-end">
                        <nav aria-label="...">
                            <ul class="pagination pagination-circle mb-0">
                                <li class="page-item">
                                    <a
                                            class="page-link"
                                            href="#"
                                            tabindex="-1"
                                            aria-disabled="true"
                                    >Trước</a
                                    >
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">1</a>
                                </li>
                                <li class="page-item active" aria-current="page">
                                    <a class="page-link" href="#"
                                    >2 <span class="sr-only">(current)</span></a
                                    >
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">3</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">Tiếp theo</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <!--Main layout-->

</div>
<!-- ***** Main Banner Area Start ***** -->

<!-- ***** Main Banner Area End ***** -->

<!-- ***** Footer Start ***** -->
<%@ include file="layout/footer.jsp"%>
<!-- ***** Footer End ***** -->

<!-- jQuery -->
<script src="<c:url value="/views/template/assets/js/jquery-2.1.0.min.js"/>"></script>
<!---->

<!-- Plugins -->

<!-- Global Init -->

<script type="text/javascript" src="<c:url value="/views/template/mdb/js/mdb.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/views/template/mdb/plugins/js/all.min.js"/>"></script>
<script src="<c:url value="/views/template/mdb/js/mdb.umd.min.js"/>"></script>
</body>
</html>