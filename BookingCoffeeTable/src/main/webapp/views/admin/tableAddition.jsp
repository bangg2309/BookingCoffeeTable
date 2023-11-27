<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <title>Thêm bàn</title>
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
        <a href="tableManagement.jsp" class="btn btn-link mb-2">
            <i class="fas fa-angle-left"></i> Quay lại
        </a>
        <div class="mb-3 bg-primary p-2">
            <span class="text-white">Thông tin bàn</span>
        </div>
        <form class="border p-5">
            <div class="row">
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="numberTable" class="form-label"><b>Số bàn</b></label>
                        <input type="number" class="form-control" id="numberTable" name="numberTable"
                               placeholder="Nhập số bàn..." required>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="seatCount" class="form-label"><b>Chỗ ngồi</b></label>
                        <input type="number" class="form-control" id="seatCount" name="seatCount"
                               placeholder="Nhập số ghế" required>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="area" class="form-label"><b>Khu vực</b></label>
                        <select class="select" data-mdb-filter="true" id="area" name="area" required>
                            <option value="" disabled selected>Chọn khu vực</option>
                            <option value="1">Sân vườn</option>
                            <option value="1">Tầng trệt</option>
                            <option value="1">Tầng 1</option>
                            <option value="1">Tầng 2</option>
                            <option value="1">Tầng 3</option>
                            <option value="1">Sân thượng</option>
                            <!-- Add more options as needed -->
                        </select>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="location" class="form-label"><b>Vị trí</b></label>
                        <input type="email" class="form-control" id="location" name="location"
                               placeholder="Nhập vị trí..."
                               required>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="mb-3">
                        <div>
                            <label class="form-label"><b>Trạng thái</b></label>
                            <i class="fas fa-toggle-on"></i>
                        </div>
                        <div class="form-check-inline">
                            <input class="form-check-input" type="radio" name="status" id="active" value="1" checked>
                            <label class="form-check-label" for="active">Hoạt động</label>
                        </div>
                        <div class="form-check-inline">
                            <input class="form-check-input" type="radio" name="status" id="inactive" value="0">
                            <label class="form-check-label" for="inactive">Ngừng hoạt động</label>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="avatar" class="form-label"><b>Ảnh minh họa</b></label>
                        <i class="fas fa-image"></i>
                        <input class="form-control" type="file" id="avatar" name="avatar">
                    </div>
                </div>
            </div>

            <!-- Repeat the pattern for other form elements -->

            <button type="submit" class="btn btn-primary">Thêm mới</button>
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
<script type="text/javascript" src="<c:url value="/views/template/mdb/js/mdb.min.js"/> "></script>
<script type="text/javascript" src="<c:url value="/views/template/mdb/plugins/js/all.min.js"/> "></script>
<!-- Custom scripts -->
<script type="text/javascript" src="<c:url value="/views/admin/assets/js/home.js"/> "></script>
</html>
