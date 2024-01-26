<%@include file="/common/taglib.jsp" %>
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
        <a href="/admin/post-management/edit" class="btn btn-link mb-2">
            <i class="fas fa-angle-left"></i> Quay lại
        </a>
        <div class="mb-3 bg-primary p-2">
            <span class="text-white">Thông tin bài viết</span>
        </div>
        <form class="border p-5" id="formSubmit" enctype="multipart/form-data">
            <div class="row">
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="title" class="form-label"><b>Tiêu đề</b></label>
                        <input type="text" class="form-control" id="title" name="title" value="${post.title}"
                               placeholder="Nhập tiêu đề..." required>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="fullname" class="form-label"><b>Người tạo</b></label>
                        <i class="fas fa-user"></i>
                        <input type="text" class="form-control" id="fullname" name="createdBy" value="${post.createdBy}"
                               placeholder="Nhập người tạo..." required>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="mb-3">
                        <div>
                            <label class="form-label"><b>Trạng thái</b></label>
                            <i class="fas fa-toggle-on"></i>
                        </div>
                        <div class="form-check-inline">
                            <input class="form-check-input" type="radio" name="status" id="active" value="1"
                            <c:if test="${post.status == 1}">
                                   checked
                            </c:if>
                            >
                            <label class="form-check-label" for="active">Hoạt động</label>
                        </div>
                        <div class="form-check-inline">
                            <input class="form-check-input" type="radio" name="status" id="inactive" value="0"
                            <c:if test="${post.status == 0}">
                                   checked
                            </c:if>
                            >
                            <label class="form-check-label" for="inactive">Ngừng hoạt động</label>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="avatar" class="form-label"><b>Ảnh bài viết</b></label>
                        <i class="fas fa-image"></i>
                        <input class="form-control" type="file" id="avatar" name="avatar" value="${post.thumbnail}">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="mb-3">
                    <label for="shortDescription" class="form-label"><b>Mô tả ngắn</b></label>
                    <input type="text" class="form-control" id="shortDescription" name="shortDescription"
                           value="${post.shortDescription}"
                           placeholder="Nhập mô tả ngắn..." required>
                </div>
                <div class="mb-3">
                    <label for="description" class="form-label"><b>Nội dung</b></label>
                    <textarea class="form-control" id="description" name="description" rows="10"
                              placeholder="Nhập nội dung..."
                              required>${post.description}</textarea>
                </div>
            </div>
            <!-- Repeat the pattern for other form elements -->
            <button type="button" class="btn btn-primary" id="addOrUpdate">
                <c:if test="${post.id != null}">
                    Cập nhật
                </c:if>
                <c:if test="${post.id == null}">
                    Thêm mới
                </c:if>
            </button>

            <input type="hidden" name="id" id="id" value="${post.id}"/>
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

    var editor = '';
    $(document).ready(function () {
        editor = CKEDITOR.replace('description');
    });

    $('#addOrUpdate').click(function (e) {
        e.preventDefault();
        var data = {};
        var postId = $('#id').val();
        var formData = new FormData($("#formSubmit")[0]);
        $.each(formData, function (index, v) {
            data["" + v.name + ""] = v.value;
        });
        if (postId === "") {
            delete data.id;
            addPost();
        } else {
            updatePost();
        }
    });

    function addPost() {
        var formData = new FormData($("#formSubmit")[0]);
        var description = editor.getData(); // Lấy nội dung từ CKEditor\
        formData.set("description", description);
        $.ajax({
            type: "POST",
            url: "/api/admin/post",
            data: formData,
            processData: false,
            contentType: false,
            success: function (formData) {
                console.log("SUCCESS : ", formData);
                alert("Thêm mới thành công");
                window.location.href = "/admin/post-management";
            },
            error: function (e) {
                console.log("ERROR : ", e);
                alert("Thêm mới thất bại");
            }
        })
    }

    function updatePost(data) {
        var formData = new FormData($("#formSubmit")[0]);
        var description = editor.getData(); // Lấy nội dung từ CKEditor\
        formData.set("description", description);
        $.ajax({
            type: "PUT",
            url: "/api/admin/post",
            data: formData,
            processData: false,
            contentType: false,
            success: function (data) {
                alert("Cập nhật thành công");
                window.location.href = "/admin/post-management";
            },
            error: function (e) {
                console.log("ERROR : ", e);
                alert("Cập nhật thất bại");
            }
        })
    }
</script>


</html>
