<%@include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Lịch sử đặt bàn</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
    <!-- Additional CSS Files -->
    <!-- MDB ESSENTIAL -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/css/mdb.min.css"/>"/>
    <!-- MDB PLUGINS -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/plugins/css/all.min.css"/>"/>
    <!-- Custom css-->
    <link rel="stylesheet" href="<c:url value="/views/template/custom/css/userProfile.css"/>">
    <link rel="stylesheet" href="<c:url value="/views/template/custom/css/historyBooking.css"/>">
</head>

<body>
<!-- ***** Header Area Start ***** -->
<%@ include file="layout/header.jsp" %>
<!-- ***** Header Area End ***** -->


<!-- ***** Start main content-->
<!-- Container for demo purpose -->
<div class="main-content" style="margin-top: 80px">
    <div class="container">
        <div class="view-account">
            <section class="module">
                <div class="module-inner">
                    <div class="side-bar ">
                        <div class="user-info">
                            <img class="img-profile img-circle img-responsive center-block"
                            <c:if test="${userSession.avatar != null}">
                                 src="${userSession.avatar}"
                            </c:if>
                            <c:if test="${userSession.avatar == null}">
                                 src="<c:url value="/views/template/custom/image/avatar/default.svg"/>"
                            </c:if>
                                 alt="Avatar">
                            <ul class="meta list list-unstyled">
                                <li class="name" style="font-weight: bold; font-size: 20px">${userSession.fullname}
                                </li>
                                <li class="email"><a href="#">${userSession.email}</a></li>
                            </ul>
                        </div>
                        <nav class="side-menu">
                            <ul class="nav">
                                <li><a href="/profile"><span class="fa fa-user"></span> Thông tin</a></li>
                                <li><a href="/change-password"><span class="fa fa-cog"></span> Thay Đổi Mật Khẩu</a>
                                </li>
                                <li class="active"><a href="#"><span class="fa fa-clock-o"></span>
                                    Lịch Sử</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="content-panel">
                        <section class="mb-10">
                            <h2 class="fw-bold mb-4">Đơn đặt hàng</h2>
                            <div class="d-md-flex justify-content-between mb-5">
                                <div>
                                    <form action="${pageContext.request.contextPath}/history-booking" method="get">
                                        <select class="select" name="sortOrder" id="sortOrder"
                                                onchange="this.form.submit()">
                                            <option value="DESC" ${"DESC".equals(sortOrder) ? "selected" : ""}>Mới
                                                nhất
                                            </option>
                                            <option value="ASC" ${"ASC".equals(sortOrder) ? "selected" : ""}>Cũ nhất
                                            </option>
                                        </select>
                                    </form>
                                </div>
                            </div>
                            <c:forEach items="${reservations}" var="reservation">
                                <div class="mb-8">
                                    <div class="mb-4">
                                        <fmt:parseDate var="parsedCreatedDate" value="${reservation.createdDate}"
                                                       pattern="yyyy-MM-dd"/>
                                        <h4 class="border-bottom pb-3 mb-4"><fmt:formatDate value="${parsedCreatedDate}"
                                                                                            pattern="dd/MM/yyyy"/></h4>
                                        <div class="d-flex justify-content-end align-items-center">
                                            <a href="/reservation-detail?id=${reservation.id}" class="text-primary">Xem
                                                chi tiết</a>
                                        </div>
                                    </div>
                                    <div class="d-md-flex mb-5">
                                        <div class="me-5">
                                            <fmt:parseDate var="parsedDate" value="${reservation.startTime}"
                                                           pattern="yyyy-MM-dd"/>
                                            <h6>Ngày đặt bàn</h6>
                                            <p><fmt:formatDate value="${parsedDate}" pattern="dd/MM/yyyy"/></p>
                                        </div>
                                        <div class="me-5">
                                            <fmt:parseDate var="parsedstartTime" value="${reservation.startTime}"
                                                           pattern="yyyy-MM-dd HH:mm:ss"/>
                                            <h6>Thời gian đặt</h6>
                                            <p><fmt:formatDate value="${parsedstartTime}" pattern="HH:mm:ss"/></p>
                                        </div>
                                        <div class="me-5">
                                            <fmt:parseDate var="parsedsendTime" value="${reservation.endTime}"
                                                           pattern="yyyy-MM-dd HH:mm:ss"/>
                                            <h6>Thời gian kết thúc</h6>
                                            <p><fmt:formatDate value="${parsedsendTime}" pattern="HH:mm:ss"/></p>
                                        </div>
                                        <div class="me-5">
                                            <h6>Số bàn</h6>
                                            <p>${reservation.table.tableNum}</p>
                                        </div>
                                        <div class="me-5">
                                            <h6>Tổng tiền</h6>
                                            <p><fmt:formatNumber value="${reservation.totalPrice}" type="currency"
                                                                 currencyCode="VND"/></p>
                                        </div>
                                        <div class="me-5">
                                            <h6>Cổng thanh toán</h6>
                                            <p>${reservation.paymentMethod}</p>
                                        </div>
                                        <div>
                                            <h6>Trạng thái</h6>
                                            <c:if test="${reservation.status == 0}">
                                                <p class="badge badge-danger rounded-pill d-inline">Đã hủy</p>
                                            </c:if>
                                            <c:if test="${reservation.status == 1}">
                                                <p class="badge badge-success rounded-pill d-inline">Thành công</p>
                                            </c:if>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <c:forEach items="${reservation.reservationProducts}" var="reservationProduct">
                                            <div class="col-md-4 col-lg-3 col-xl-2">
                                                <a href="#!" class="text-reset">
                                                    <div class="bg-image ripple rounded-5 shadow-4 mb-4 ripple-surface-light"
                                                         data-ripple-color="light">
                                                        <img class="product-image img-fluid"
                                                             src="<c:url value="${reservationProduct.product.images[0].url}"/>"
                                                             alt="">
                                                        <div class="hover-overlay">
                                                            <div class="mask"
                                                                 style="background-color: hsla(0, 0%, 98.4%, 0.2)"></div>
                                                        </div>
                                                    </div>
                                                    <h6>${reservationProduct.product.name}</h6>
                                                    <p class="text-muted">Size: ${reservationProduct.size}</p>
                                                    <p class="text-muted">Số lượng: ${reservationProduct.quantity}</p>
                                                </a>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </c:forEach>
                        </section>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
<!-- Container for demo purpose -->

<!-- ***** End main content-->


<!-- ***** Footer Start ***** -->
<%@ include file="layout/footer.jsp" %>
<!-- ***** Footer End ***** -->

<!-- jQuery -->
<script src="<c:url value="/views/template/assets/js/jquery-2.1.0.min.js"/>"></script>
<!---->
<script>
    function handleChange(selectElement) {
        var selectedValue = selectElement.value;
        // Gọi hàm xử lý sắp xếp dữ liệu ở đây, ví dụ: sortData(selectedValue);
    }

    // Hàm sortData(selectedValue) sẽ thực hiện sắp xếp dữ liệu theo giá trị selectedValue.
</script>

<!-- Global Init -->

<script type="text/javascript" src="<c:url value="/views/template/mdb/js/mdb.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/views/template/mdb/plugins/js/all.min.js"/>"></script>
<script src="<c:url value="/views/template/mdb/js/mdb.umd.min.js"/>"></script>
</body>
</html>