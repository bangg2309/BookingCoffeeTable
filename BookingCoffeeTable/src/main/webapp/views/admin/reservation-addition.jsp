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
        <a href="reservation-management.jsp" class="btn btn-link mb-2">
            <i class="fas fa-angle-left"></i> Quay lại
        </a>
        <div class="mb-3 bg-primary p-2">
            <span class="text-white">Thông tin đặt bàn</span>
        </div>
        <form class="border p-5">
            <div class="row">
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="username" class="form-label"><b>Tên liên hệ</b></label>
                        <i class="fas fa-user"></i>
                        <input type="text" class="form-control" id="username" name="username"
                               placeholder="Nhập UserName..." required>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="phone" class="form-label"><b>Số điện thoại</b></label>
                        <i class="fas fa-phone"></i>
                        <input type="number" class="form-control" id="phone" name="phone"
                               placeholder="Nhập PhoneNumber..." required>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="email" class="form-label"><b>Email</b></label>
                        <i class="fas fa-envelope"></i>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Nhập Email..."
                               required>
                    </div>
                </div>
            </div>
            <div class="row">

                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="userID" class="form-label"><b>ID người đặt</b></label>
                        <input type="number" class="form-control" id="userID" name="userID"
                               placeholder="Nhập ID người đặt..." required>
                    </div>
                </div>
                <div class="col-md-4">
                    <label for="tableNum" class="form-label"><b>Vai trò</b></label>
                    <i class="fas fa-user-tag"></i>
                    <select class="form-select" id="tableNum" name="tableNum" required>
                        <option value="" disabled>--Chọn vai trò--</option>
                        <c:forEach items="${tables}" var="table">
                            <c:choose>
                                <c:when test="${table.id == reservation.tableId}">
                                    <option value="${table.id}" selected>${table.tableNum}</option>
                                </c:when>
                                <c:otherwise>
                                    <option value="${table.id}">${role.tableNum}</option>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </select>
                </div>
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="filterDate" class="form-label "><b>Ngày Đặt:</b></label>
                        <input type="date" class="form-control" id="filterDate">
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="filterStartTime" class="form-label"><b>Thời Gian Đặt:</b></label>
                        <input type="time" class="form-control" id="filterStartTime" min="08:00" max="18:00">
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="filterEndTime" class="form-label"><b>Thời Gian Kết Thúc:</b></label>
                        <input type="time" class="form-control" id="filterEndTime">
                    </div>
                </div>
                <div class="col-md-4">
                    <label for="role" class="form-label"><b>Phương thức thanh toán</b></label>
                    <select class="form-select" id="role" name="role" required>
                        <option value="" disabled selected>Chọn phương thức thanh toán</option>
                        <option value="1">Momo</option>
                        <option value="2">VnPay</option>
                        <option value="2">Master Card</option>
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
                            <input class="form-check-input" type="radio" name="status" id="active" value="1" checked>
                            <label class="form-check-label" for="active">Thành công</label>
                        </div>
                        <div class="form-check-inline">
                            <input class="form-check-input" type="radio" name="status" id="inactive" value="0">
                            <label class="form-check-label" for="inactive">Đã hủy</label>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="totalCost" class="form-label"><b>Tổng tiền</b></label>
                        <input type="number" class="form-control" id="totalCost" name="totalCost"
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
                window.location.href = "/admin/user-management";
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
                window.location.href = "/admin/user-management";
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
