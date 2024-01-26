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

    <title>Chi tiết đơn đặt bàn</title>

    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/views/template/assets/css/bootstrap.min.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/views/template/assets/css/font-awesome.css"/>">
    <link rel="stylesheet" href="<c:url value="/views/template/assets/css/templatemo-klassy-cafe.css"/>">
    <link rel="stylesheet" href="<c:url value="/views/template/assets/css/owl-carousel.css"/>">
    <link rel="stylesheet" href="<c:url value="/views/template/assets/css/lightbox.css"/>">
    <link rel="stylesheet" href="<c:url value="/views/template/assets/css/stylle.css"/>">

    <!-- MDB ESSENTIAL -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/css/mdb.min.css"/>"/>
    <!-- MDB PLUGINS -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/plugins/css/all.min.css"/>"/>

    <!-- Custom css-->
    <link rel="stylesheet" href="<c:url value="/views/template/custom/css/reservation.css"/>">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/sweetalert2@11">

</head>

<body>
<!-- ***** Header Area Start ***** -->
<%@ include file="layout/header.jsp" %>
<!-- ***** Header Area End ***** -->

<main class="mb-6" style="padding-top: 20px; margin-top: 80px">
    <div class="container ">
        <!-- Section: Cart -->
        <section class="">
            <div class="row gx-lg-5">
                <div class="col-lg-8 mb-4 mb-md-0 ">
                    <!-- Section: Product list -->
                    <section class="mb-5" data-mdb-perfect-scrollbar="true" data-mdb-suppress-scroll-x="true"
                             style="position: sticky; height: 600px">
                        <c:forEach items="${reservation.reservationProducts}" var="reservationProduct">
                            <div class="row border-bottom mb-4">
                                <div class="col-md-3 mb-4 mb-md-0 mt-2">
                                    <div class="bg-image ripple rounded-5 mb-4 overflow-hidden d-block"
                                         data-ripple-color="light">
                                        <img src="<c:url value="${reservationProduct.product.images[0].url}"/>"
                                             class="w-100" alt=""/>
                                        <a href="#!">
                                            <div class="hover-overlay">
                                                <div class="mask"
                                                     style="background-color: hsla(0, 0%, 98.4%, 0.2)"></div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-md-4 mb-4 mb-md-0">
                                    <p class="fw-bold">${reservationProduct.product.name}</p>
                                    <div class="row">
                                        <div class="form-outline mb-4 col-md-4 mr-2" style="width: 80px">
                                            <input type="number" id="1" class="form-control"
                                                   value="${reservationProduct.quantity}" min="1" disabled
                                                   style="background-color: white"/>
                                            <label class="form-label" for="1">Số Lượng</label>
                                        </div>
                                        <div class="form-outline mb-4 col-md-4 mr-2" style="width: 80px">
                                            <input type="text" id="2" class="form-control"
                                                   value="${reservationProduct.size}" min="1" disabled
                                                   style="background-color: white"/>
                                            <label class="form-label" for="2">Size</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-5 mb-4 mb-md-0">
                                    <h5 class="mb-2">
                                        <span class="align-middle"><fmt:formatNumber value="${reservationProduct.price}"
                                                                                     type="currency"
                                                                                     currencyCode="VND"/></span>
                                    </h5>
                                </div>
                            </div>
                        </c:forEach>
                    </section>
                    <!-- Section: Product list -->
                </div>
                <div class="col-lg-4 mb-4 mb-md-0">
                    <!-- Section: Summary -->
                    <section class="shadow-4 p-4 rounded-5 ">
                        <h5 class="mb-2">
                            Thông tin về đơn đặt bàn của bạn</h5>
                        <div class="d-flex justify-content-between mb-2">
                            <div>
                                <span>Người đặt: </span>
                                <span>${reservation.contactName}</span>
                            </div>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <div>
                                <span>Email : </span>
                                <span>${reservation.contactEmail}</span>
                            </div>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <div>
                                <span>Số điện thoại: </span>
                                <span>${reservation.contactPhone}</span>
                            </div>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <div>
                                <span>Ghi chú: </span>
                                <span>${reservation.note}</span>
                            </div>

                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <div>
                                <span>Phương thức thanh toán: </span>
                                <span>${reservation.paymentMethod}</span>
                            </div>

                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <div>
                                <span>Ngày đặt: </span>
                                <span>${reservation.createdDate}</span>
                            </div>

                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <div>
                                <span>Số bàn: </span>
                                <span>${reservation.table.tableNum}</span>
                            </div>

                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <div>
                                <span>Số chỗ ngồi: </span>
                                <span>${reservation.table.seatCount}</span>
                            </div>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <div class="d-flex justify-content-between mb-2">
                                <div>
                                    <span>Khu vực: </span>
                                    <span>Tầng 1</span>
                                </div>
                            </div>
                            <div>
                                <span>Vị trí: </span>
                                <span>${reservation.table.location}</span>
                            </div>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <fmt:parseDate var="parsedstartTime" value="${reservation.startTime}"
                                           pattern="yyyy-MM-dd HH:mm:ss"/>
                            <fmt:parseDate var="parsedendTime" value="${reservation.endTime}"
                                           pattern="yyyy-MM-dd HH:mm:ss"/>
                            <span>Thời gian: </span>
                            <span><fmt:formatDate value="${parsedstartTime}"
                                                  pattern="dd-MM-yyyy HH:mm:ss"/> - <fmt:formatDate
                                    value="${parsedendTime}" pattern="HH:mm:ss"/></span>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <c:if test="${reservation.status == 1}">
                                <div>
                                    <span>Trạng thái: </span>
                                    <span class="alert-success">Thành công</span>
                                </div>
                            </c:if>
                            <c:if test="${reservation.status == 0}">
                                <div>
                                    <span>Trạng thái: </span>
                                    <span class="alert-danger">Đã hủy</span>
                                </div>
                            </c:if>
                        </div>

                        <hr class="my-4"/>
                        <h5 class="mb-2">
                            Hóa đơn của bạn</h5>

                        <div class="d-flex justify-content-between mb-3">
                            <span>Tiền tạm thời </span>
                            <span><fmt:formatNumber value="${reservation.totalPrice}" type="currency"
                                                    currencyCode="VND"/></span>
                        </div>
                        <div class="d-flex justify-content-between">
                            <span>Khuyến mãi: </span>
                            <span>0 đ</span>
                        </div>
                        <hr class="my-4"/>
                        <div class="d-flex justify-content-between fw-bold mb-5">
                            <span> Tổng số tiền (bao gồm VAT)</span>
                            <span><fmt:formatNumber value="${reservation.totalPrice}" type="currency"
                                                    currencyCode="VND"/></span>
                        </div>

                        <div class="d-flex justify-content-between mb-5">
                            <c:if test="${reservation.status ==1}">
                                <div>
                                    <form id="deleteForm" action="/reservation-detail" method="post">
                                        <input type="hidden" name="reservationId" value="${reservation.id}">
                                        <button class="btn btn-danger btn-rounded w-100 mr-4"
                                                style="color: white" type="button"  onclick="btnDeleted()">Hủy đơn
                                        </button>
                                    </form>
                                </div>
                            </c:if>
                            <div>
                                <a class="btn btn-success btn-rounded w-100" href="/contact"
                                   style="color: white">Liên hệ</a>
                            </div>
                        </div>

                    </section>
                </div>
            </div>
        </section>
        <!-- Section: Cart -->
    </div>
</main>


<!-- ***** Footer Start ***** -->
<%@ include file="layout/footer.jsp" %>
<!-- ***** Footer End ***** -->
<!-- jQuery -->
<script src="<c:url value="/views/template/assets/js/jquery-2.1.0.min.js"/>"></script>


<script type="text/javascript" src="<c:url value="/views/template/mdb/js/mdb.min.js"/>"></script>
<!-- MDB PLUGINS -->
<script type="text/javascript" src="<c:url value="/views/template/mdb/plugins/js/all.min.js"/>"></script>
<script src="<c:url value="/views/template/mdb/js/mdb.umd.min.js"/>"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
    function btnDeleted() {
        Swal.fire({
                title: "Xác nhận hủy",
                text: "Bạn có chắc chắn muốn hủy đơn hàng không",
                type: "warning",
                showCancelButton: true,
                confirmButtonClass: "btn-success",
                cancelButtonClass: "btn-danger",
                confirmButtonText: "Xác nhận",
                cancelButtonText: "Hủy bỏ",
            }
        ).then(function (isConfirm) {
            if (isConfirm.isConfirmed) {
                Swal.fire({
                    title: "Đã hủy",
                    text: "Đơn hàng của bạn đã được hủy thành công",
                    type: "success",
                    confirmButtonClass: "btn-success",
                }).then(function () {
                    document.getElementById("deleteForm").submit();
                });
            }
        });
    }
</script>
</body>
</html>