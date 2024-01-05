<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <title>Thêm đơn đặt bàn</title>
    <!-- MDB icon -->
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
    <!-- Google Fonts Roboto -->
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap"
    />
    <!-- MDB ESSENTIAL -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/css/mdb.min.css"/> ">
    <!-- MDB PLUGINS -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/plugins/css/all.min.css"/> ">
    <!-- Custom styles -->
    <link rel="stylesheet" href="<c:url value="/views/admin/assets/css/home.css"/> ">
    <style></style>
</head>

<body>
<!-- Start your project here-->
<!--Main Navigation-->
<%@ include file="layout/header.jsp" %>
<!--Main Navigation-->

<!--Main layout-->
<main class="mb-5">


    <!-- Container for demo purpose -->
    <div class="container px-4 ">
        <a href="/admin/reservation-management" class="btn btn-link mb-2">
            <i class="fas fa-angle-left"></i> Quay lại
        </a>
        <div class="mb-3 bg-primary p-2">
            <span class="text-white">Thông tin đặt bàn</span>
        </div>
        <form class="border p-5" id="formSubmit" enctype="multipart/form-data">
            <div class="row">
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="username" class="form-label"><b>Tên liên hệ</b></label>
                        <i class="fas fa-user"></i>
                        <input type="text" class="form-control" id="username" name="username" value="${reservation.contactName}"
                               placeholder="Nhập UserName..." required>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="phone" class="form-label"><b>Số điện thoại</b></label>
                        <i class="fas fa-phone"></i>
                        <input type="number" class="form-control" id="phone" name="phone" value="${reservation.contactPhone}"
                               placeholder="Nhập PhoneNumber..." required>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="email" class="form-label"><b>Email</b></label>
                        <i class="fas fa-envelope"></i>
                        <input type="email" class="form-control" id="email" name="email" value="${reservation.contactEmail}"
                               placeholder="Nhập Email..."
                               required>
                    </div>
                </div>
            </div>
            <div class="row">

                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="userId" class="form-label"><b>ID người đặt</b></label>
                        <input type="number" class="form-control" id="userId" name="userId" value="${reservation.userId}"
                               placeholder="Nhập ID người đặt..." required>
                    </div>
                </div>
                <div class="col-md-4">
                    <label for="tableNum" class="form-label"><b>Bàn</b></label>
                    <i class="fas fa-user-tag"></i>
                    <select class="form-select" id="tableNum" name="tableNum" required>
                        <option value="" disabled>--Chọn bàn--</option>
                        <c:forEach items="${tables}" var="table">
                            <c:choose>
                                <c:when test="${table.id == reservation.tableId}">
                                    <option value="${table.id}" selected>${table.tableNum}</option>
                                </c:when>
                                <c:otherwise>
                                    <option value="${table.id}">${table.tableNum}</option>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </select>
                </div>
                <div class="col-md-4">
                    <div class="mb-3">
                        <fmt:parseDate var="parsedCreatedDate" value="${reservation.createdDate}" pattern="yyyy-MM-dd HH:mm:ss" />
                        <fmt:formatDate var="formattedCreatedDate" value="${parsedCreatedDate}" pattern="yyyy-MM-dd" />
                        <label for="filterDate" class="form-label "><b>Ngày Đặt:</b></label>
                        <input type="date" class="form-control" id="filterDate" name="filterDate" value="${formattedCreatedDate}" />

                    </div>
                </div>
                <div class="col-md-4">
                    <div class="mb-3">
                        <fmt:parseDate var="parsedStartTime" value="${reservation.startTime}" pattern="yyyy-MM-dd HH:mm:ss" />
                        <fmt:formatDate var="formattedStartTime" value="${parsedStartTime}" pattern="HH:mm" />
                        <label for="filterStartTime" class="form-label"><b>Thời Gian Đặt:</b></label>
                        <input type="time" class="form-control" id="filterStartTime" name="filterStartTime" value="${formattedStartTime}" min="08:00" max="18:00">
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="mb-3">
                        <fmt:parseDate var="parsedEndTime" value="${reservation.endTime}" pattern="yyyy-MM-dd HH:mm:ss" />
                        <fmt:formatDate var="formattedEndTime" value="${parsedEndTime}" pattern="HH:mm" />
                        <label for="filterEndTime" class="form-label"><b>Thời Gian Kết Thúc:</b></label>
                        <input type="time" class="form-control" id="filterEndTime" name="filterEndTime" value="${formattedEndTime}" min="08:00" max="18:00">
                    </div>
                </div>
                <div class="col-md-4">
                    <label for="paymentMethod" class="form-label"><b>Phương thức thanh toán</b></label>
                    <select class="form-select" id="paymentMethod" name="paymentMethod" required>
                        <option value="" disabled>--Chọn phương thức thanh toán--</option>
                        <c:forEach items="${paymentMethods}" var="method">
                            <option value="${method}">${method}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="mb-3">
                        <div>
                            <label class="form-label"><b>Trạng thái</b></label>
                            <i class="fas fa-toggle-on"></i>
                        </div>
                        <div class="form-check-inline">
                            <input class="form-check-input" type="radio" name="status" id="active" value="1"
                            <c:if test="${reservation.status == 1}">
                                   checked
                            </c:if>
                            >
                            <label class="form-check-label" for="active">Thành công</label>
                        </div>
                        <div class="form-check-inline">
                            <input class="form-check-input" type="radio" name="status" id="inactive" value="0"
                            <c:if test="${reservation.status == 0}">
                                   checked
                            </c:if>
                            >
                            <label class="form-check-label" for="inactive">Đã hủy</label>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="totalPrice" class="form-label"><b>Tổng tiền</b></label>
                        <input type="number" class="form-control" id="totalPrice" name="totalPrice" value="${reservation.totalPrice}"
                               placeholder="Nhập tổng số tiền thanh toán..." required>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="note" class="form-label"><b>Ghi chú</b></label>
                        <textarea class="form-control" id="note" name="note" rows="3"></textarea>
                    </div>
                </div>

            </div>

            <!-- Repeat the pattern for other form elements -->
            <button type="button" class="btn btn-primary" id="addOrUpdate">
                <c:if test="${reservation.id != null}">
                    Cập nhật
                </c:if>
                <c:if test="${reservation.id == null}">
                    Thêm mới
                </c:if>
            </button>

            <input type="hidden" name="id" id="id" value="${reservation.id}"/>
            <input type="hidden" name="user" id="user" value="${reservation}"/>
        </form>

    </div>
    <!-- Container for demo purpose -->
</main>
<!--Main layout-->

<!--Footer-->
<footer></footer>
<!--Footer-->
<!-- End your project here-->
</body>

<!-- MDB ESSENTIAL -->
<script src="<c:url value="/views/template/assets/js/jquery-2.1.0.min.js"/> "></script>
<script>
    $('#addOrUpdate').click(function (e) {
        e.preventDefault();
        var data = {};
        var reservationId = $('#id').val();
        var formData = $('#formSubmit').serializeArray();
        $.each(formData, function (index, v) {
            data["" + v.name + ""] = v.value;
        });
        console.log(data);
        if (reservationId === "") {
            delete data.id;
            addReservation(data);
        } else {
            updateReservation(data);
        }
    });

    function addReservation(data) {
        var formData = new FormData($("#formSubmit")[0]);
        $.ajax({
            type: "POST",
            url: "/api/admin/reservation",
            data: formData,
            processData: false,
            contentType: false,
            dataType: 'json',
            success: function (data) {
                console.log("SUCCESS : ", data);
                alert("Thêm mới thành công");
                window.location.href = "/admin/reservation-management";
            },
            error: function (e) {
                console.log("ERROR : ", e);
                alert("Thêm mới thất bại");
            }
        })
    }

    function updateReservation(data) {
        var formData = new FormData($("#formSubmit")[0]);
        $.ajax({
            type: "PUT",
            url: "/api/admin/reservation",
            data: formData,
            processData: false,
            contentType: false,
            success: function (data) {
                alert("Cập nhật thành công");
                window.location.href = "/admin/reservation-management";
            },
            error: function (e) {
                console.log("ERROR : ", e);
                alert("Cập nhật thất bại");
            }
        })
    }
</script>
<script type="text/javascript" src="<c:url value="/views/template/mdb/js/mdb.min.js"/> "></script>
<script type="text/javascript" src="<c:url value="/views/template/mdb/plugins/js/all.min.js"/> "></script>
<!-- Custom scripts -->
<script type="text/javascript" src="<c:url value="/views/admin/assets/js/home.js"/> "></script>
</html>
