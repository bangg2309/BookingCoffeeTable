<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <title>Thêm kích thước món</title>
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
        <a href="product-variantManagement.jsp" class="btn btn-link mb-2">
            <i class="fas fa-angle-left"></i> Quay lại
        </a>
        <div class="mb-3 bg-primary p-2">
            <span class="text-white">Thông tin kích thước món</span>
        </div>
        <form class="border p-5">
            <div class="row">
<!--                <div class="col-md-4">-->
<!--                    <label for="category" class="form-label"><b>Loại món</b></label>-->
<!--                    <i class="fas fa-bars"></i>-->
<!--                    <select class="select" data-mdb-filter="true" id="category" name="category" required>-->
<!--                        <option value="" disabled selected>Chọn danh mục</option>-->
<!--                        <option value="1">Cà phê</option>-->
<!--                        <option value="1">Nước ép</option>-->
<!--                        <option value="1">Sinh tố</option>-->
<!--                        <option value="1">Bánh ngọt</option>-->
<!--                        &lt;!&ndash; Add more options as needed &ndash;&gt;-->
<!--                    </select>-->
<!--                </div>-->
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="name" class="form-label"><b>Tên món</b></label>
                        <i class="fas fa-mug-saucer"></i>
                        <select class="select" data-mdb-filter="true" id="name" name="category" required>
                            <option value="" disabled selected>Chọn món</option>
                            <option value="1">Cà sữa đá</option>
                            <option value="1">Cà phê đen</option>
                            <option value="1">Cà phê muối</option>
                            <option value="1">Cà phê sữa</option>
                            <!-- Add more options as needed -->
                        </select>
                    </div>
                </div>


            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="fullname" class="form-label"><b>Size</b></label>
                        <input type="text" class="form-control" id="fullname" name="fullname"
                               placeholder="" required>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="price" class="form-label"><b>Giá tiền</b></label>
                        <i class="fas fa-coins"></i>
                        <input type="number" class="form-control" id="price" name="price"
                               placeholder="VND..." required>
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
