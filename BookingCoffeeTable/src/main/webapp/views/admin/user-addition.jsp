<%@include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <title>Thêm người dùng</title>
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
        <a href="/admin/user-management" class="btn btn-link mb-2">
            <i class="fas fa-angle-left"></i> Quay lại
        </a>
        <div class="mb-3 bg-primary p-2">
            <span class="text-white">Thông tin người dùng</span>
        </div>
        <form class="border p-5" id="formSubmit" enctype="multipart/form-data">
            <div class="row">
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="username" class="form-label"><b>Tên đăng nhập</b></label>
                        <i class="fas fa-user"></i>
                        <input type="text" class="form-control" id="username" name="username" value="${user.username}"
                        <c:if test="${user.username != null}">
                               readonly
                        </c:if>
                               placeholder="Nhập UserName..." required>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="password" class="form-label"><b>Mật khẩu</b></label>
                        <i class="fas fa-key"></i>
                        <input type="password" class="form-control" id="password" name="password"
                               value="${user.password}"
                        <c:if test="${user.password != null}">
                               readonly
                        </c:if>
                               placeholder="Nhập Password..." required>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="fullname" class="form-label"><b>Tên đầy đủ</b></label>
                        <i class="fas fa-user"></i>
                        <input type="text" class="form-control" id="fullname" name="fullname" value="${user.fullname}"
                               placeholder="Nhập FullName..." required>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="email" class="form-label"><b>Email</b></label>
                        <i class="fas fa-envelope"></i>
                        <input type="email" class="form-control" id="email" name="email" value="${user.email}"
                               placeholder="Nhập Email..."
                               required>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="phone" class="form-label"><b>Số điện thoại</b></label>
                        <i class="fas fa-phone"></i>
                        <input type="number" class="form-control" id="phone" name="phone" value="${user.phone}"
                               placeholder="Nhập PhoneNumber..." required>
                    </div>
                </div>
                <div class="col-md-4">
                    <label for="roleId" class="form-label"><b>Vai trò</b></label>
                    <i class="fas fa-user-tag"></i>
                    <select class="form-select" id="roleId" name="roleId" required>
                        <option value="" disabled>--Chọn vai trò--</option>
                        <c:forEach items="${roles}" var="role">
                            <c:choose>
                                <c:when test="${role.id == user.roleId}">
                                    <option value="${role.id}" selected>${role.name}</option>
                                </c:when>
                                <c:otherwise>
                                    <option value="${role.id}">${role.name}</option>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="mb-3">
                        <div>
                            <label class="form-label"><b>Xác thực email</b></label>
                            <i class="fas fa-toggle-on"></i>
                        </div>
                        <div class="form-check-inline">
                            <input class="form-check-input" type="radio" name="emailVerify" id="verify" value="1"
                            <c:if test="${user.emailVerified == 1}">
                                   checked
                            </c:if>
                            >
                            <label class="form-check-label" for="verify">Đã xác thực</label>
                        </div>
                        <div class="form-check-inline">
                            <input class="form-check-input" type="radio" name="emailVerify" id="inVerify" value="0"
                            <c:if test="${user.emailVerified == 0}">
                                   checked
                            </c:if>
                            >
                            <label class="form-check-label" for="inVerify">Chưa xác thực</label>
                        </div>
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
                            <c:if test="${user.status == 1}">
                                   checked
                            </c:if>
                            >
                            <label class="form-check-label" for="active">Hoạt động</label>
                        </div>
                        <div class="form-check-inline">
                            <input class="form-check-input" type="radio" name="status" id="inactive" value="0"
                            <c:if test="${user.status == 0}">
                                   checked
                            </c:if>
                            >
                            <label class="form-check-label" for="inactive">Ngừng hoạt động</label>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="avatar" class="form-label"><b>Ảnh đại diện</b></label>
                        <i class="fas fa-image"></i>
                        <input class="form-control" type="file" id="avatar" name="avatar">
                    </div>
                </div>
            </div>

            <!-- Repeat the pattern for other form elements -->

            <button type="button" class="btn btn-primary" id="addOrUpdate">
                <c:if test="${user.id != null}">
                    Cập nhật
                </c:if>
                <c:if test="${user.id == null}">
                    Thêm mới
                </c:if>
            </button>

            <input type="hidden" name="id" id="id" value="${user.id}"/>
            <input type="hidden" name="user" id="user" value="${user}"/>
        </form>

    </div>
    <!-- Container for demo purpose -->
</main>
<!--Main layout-->
<script src="<c:url value="/views/template/assets/js/jquery-2.1.0.min.js"/> "></script>
<script>
    $('#addOrUpdate').click(function (e) {
        e.preventDefault();
        var data = {};
        var userId = $('#id').val();
        var formData = $('#formSubmit').serializeArray();
        $.each(formData, function (index, v) {
            data["" + v.name + ""] = v.value;
        });
        console.log(data);
        if (userId === "") {
            delete data.id;
            addUser(data);
        } else {
            updateUser(data);
        }
    });

    function addUser(data) {
        var formData = new FormData($("#formSubmit")[0]);
        $.ajax({
            type: "POST",
            url: "/api/admin/user",
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

    function updateUser(data) {
        var formData = new FormData($("#formSubmit")[0]);
        $.ajax({
            type: "PUT",
            url: "/api/admin/user",
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
<!-- End your project here-->
</body>

<!-- MDB ESSENTIAL -->

<script type="text/javascript" src="<c:url value="/views/template/mdb/js/mdb.min.js"/> "></script>
<script type="text/javascript" src="<c:url value="/views/template/mdb/plugins/js/all.min.js"/> "></script>
<!-- Custom scripts -->
<script type="text/javascript" src="<c:url value="/views/admin/assets/js/home.js"/> "></script>
</html>
