<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <title>Thêm bài viết</title>
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
        <a href="postManagement.jsp" class="btn btn-link mb-2">
            <i class="fas fa-angle-left"></i> Quay lại
        </a>
        <div class="mb-3 bg-primary p-2">
            <span class="text-white">Thông tin bài viết</span>
        </div>
        <form class="border p-5">
            <div class="row">
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="username" class="form-label"><b>Tiêu đề</b></label>
                        <input type="text" class="form-control" id="username" name="username"
                               placeholder="Nhập tiêu đề..." required>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="fullname" class="form-label"><b>Người tạo</b></label>
                        <i class="fas fa-user"></i>
                        <input type="text" class="form-control" id="fullname" name="fullname"
                               placeholder="Nhập người tạo..." required>
                    </div>
                </div>
<!--                <div class="col-md-4">-->
<!--                    <label for="datetimepickerExample" class="form-label"><b>Thời gian tạo</b></label>-->
<!--                    <div class="form-outline datetimepicker">-->
<!--                        <input type="text" class="form-control" value="22/12/2020, 14:12:56"-->
<!--                               id="datetimepickerExample"/>-->
<!--                    </div>-->
<!--                </div>-->
                <div class="col-md-4">
                    <div class="mb-3">
                        <div>
                            <label class="form-label"><b>Trạng thái</b></label>
                            <i class="fas fa-toggle-on"></i>
                        </div>
                        <div class="form-check-inline">
                            <input class="form-check-input" type="radio" name="status" id="active" value="1" checked>
                            <label class="form-check-label" for="active">Hiển thị</label>
                        </div>
                        <div class="form-check-inline">
                            <input class="form-check-input" type="radio" name="status" id="inactive" value="0">
                            <label class="form-check-label" for="inactive">ẩn</label>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="avatar" class="form-label"><b>Ảnh bài viết</b></label>
                        <i class="fas fa-image"></i>
                        <input class="form-control" type="file" id="avatar" name="avatar">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="mb-3">
                    <label for="shortDescription" class="form-label"><b>Mô tả ngắn</b></label>
                    <input type="text" class="form-control" id="shortDescription" name="shortDescription"
                           placeholder="Nhập mô tả ngắn..." required>
                </div>
                <div class="mb-3">
                    <label for="content" class="form-label"><b>Nội dung</b></label>
                    <textarea class="form-control" id="content" name="content" rows="10"
                              placeholder="Nhập nội dung..." required></textarea>
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
<script type="text/javascript" src="<c:url value="/views/template/ckeditor/ckeditor.js"/> "></script>
<script>
    CKEDITOR.replace('content');
</script>
</html>
