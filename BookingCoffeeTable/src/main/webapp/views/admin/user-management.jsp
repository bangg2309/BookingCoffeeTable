<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <title>Quản lý người dùng</title>
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
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/sweetalert2@11">
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
    <div class="container  px-4 ">
        <div class="mb-3 d-flex justify-content-end px-4">
            <a class="btn btn-primary" href="/admin/user-management/edit">
                <i class="far fa-square-plus"></i>
                <span>Thêm người dùng</span>
            </a>
        </div>
        <div class="input-group mb-4 px-4">
            <input type="text" class="form-control" id="advanced-search-input"
                   placeholder=""/>
            <button class="btn btn-primary" id="advanced-search-button" type="button">
                <i class="fa fa-search"></i>
            </button>
        </div>
        <div class="datatable">
            <table class="table align-middle mb-0 bg-white">
                <thead class="bg-light">
                <tr>
                    <th>STT</th>
                    <th>Vai trò</th>
                    <th>Tên đăng nhập</th>
                    <th>Tên người dùng</th>
                    <th>Số điện thoại</th>
                    <th>email</th>
                    <th>Trạng thái</th>
                    <th>Thao tác</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${users}" var="user">
                    <tr>
                        <td>
                            ${user.id}
                        </td>
                        <td>
                            <span>${user.role.name}</span>
                        </td>
                        <td>
                            <div class="d-flex align-items-center">
                                <div class="">
                                    <p class=" mb-1">${user.username}</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="d-flex align-items-center">
                                <div class="">
                                    <p class=" mb-1">${user.fullname}</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <span>${user.phone}</span>
                        </td>
                        <td>
                            <p class="fw-normal mb-1">${user.email}</p>
                        </td>
                        <c:if test="${user.status == 1}">
                            <td>
                                <span class="badge badge-success rounded-pill d-inline">active</span>
                            </td>
                        </c:if>
                        <c:if test="${user.status ==0}">
                            <td>
                                <span class="badge badge-danger rounded-pill d-inline">blocked</span>
                            </td>
                        </c:if>
                        <td>
                            <a href="/admin/user-management/edit?id=${user.id}" class="btn btn-primary btn-floating">
                                <i class="far fa-pen-to-square"></i>
                            </a>
                            <button type="button" class="btn btn-danger btn-floating" onclick="deleteUser(${user.id})">
                                <i class="far fa-trash-can"></i>
                            </button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>

    </div>
    <!-- Container for demo purpose -->
</main>
<!--Main layout-->
<script src="<c:url value="/views/template/assets/js/jquery-2.1.0.min.js"/> "></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
    function deleteUser(id){
        Swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                // User confirmed, proceed with the AJAX request
                $.ajax({
                    url: '/api/admin/user',
                    contentType: 'application/json',
                    type: 'DELETE',
                    data: JSON.stringify({
                        id: id
                    }),
                    success: function (data) {
                        if (data) {
                            Swal.fire({
                                title: 'Deleted!',
                                text: 'Your file has been deleted.',
                                icon: 'success'
                            }).then(() => {
                                location.reload();
                            });
                        } else {
                            Swal.fire({
                                icon: "error",
                                title: "Oops...",
                                text: "Something went wrong!",
                            });
                        }
                    }
                });
            }
        });
    }

</script>
</body>

<!-- MDB ESSENTIAL -->

<script type="text/javascript" src="<c:url value="/views/template/mdb/js/mdb.min.js"/> "></script>
<script type="text/javascript" src="<c:url value="/views/template/mdb/plugins/js/all.min.js"/> "></script>
<!-- Custom scripts -->
<script type="text/javascript" src="<c:url value="/views/admin/assets/js/home.js"/> "></script>
</html>
