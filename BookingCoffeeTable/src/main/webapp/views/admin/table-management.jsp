<%@include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <title>Quản lý bàn</title>
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
            <a class="btn btn-primary" href="/admin/table-management/edit">
                <i class="far fa-square-plus"></i>
                <span>Thêm bàn</span>
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
            <table class="table align-middle mb-0 bg-white" id="table">
                <thead class="bg-light">
                <tr>
                    <th>Id</th>
                    <th>Số bàn</th>
                    <th>Khu vực</th>
                    <th>Vị trí</th>
                    <th>Trạng thái</th>
                    <th>Hành động</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${tables}" var="table">
                    <tr>
                        <td>
                                ${table.id}
                        </td>
                        <td>
                            <span>${table.tableNum}</span>
                        </td>
                        <td>
                            <div class="d-flex align-items-center">
                                <div class="">
                                    <p class=" mb-1">${table.area.name}</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="d-flex align-items-center">
                                <div class="">
                                    <p class=" mb-1">${table.location}</p>
                                </div>
                            </div>
                        </td>
                        <c:if test="${table.status == 1}">
                            <td>
                                <span class="badge badge-success rounded-pill d-inline">active</span>
                            </td>
                        </c:if>
                        <c:if test="${table.status ==0}">
                            <td>
                                <span class="badge badge-danger rounded-pill d-inline">blocked</span>
                            </td>
                        </c:if>
                        <td>
                            <a href="/admin/table-management/edit?id=${table.id}" class="btn btn-primary btn-floating">
                                <i class="far fa-pen-to-square"></i>
                            </a>
                            <button type="button" class="btn btn-danger btn-floating"
                                    onclick="deleteTable(${table.id})">
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

<!--Footer-->
<footer></footer>
<!--Footer-->
<!-- End your project here-->
</body>

<!-- MDB ESSENTIAL -->
<script src="<c:url value="/views/template/assets/js/jquery-2.1.0.min.js"/> "></script>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
    function deleteTable(id) {
        Swal.fire({
            title: 'Are you sure?',
            text: "Bạn sẽ không thể quay lại!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                // User confirmed, proceed with the AJAX request
                $.ajax({
                    url: '/api/admin/table',
                    contentType: 'application/json',
                    type: 'DELETE',
                    data: JSON.stringify({
                        id: id
                    }),
                    success: function (data) {
                        if (data) {
                            Swal.fire({
                                title: 'Deleted!',
                                text: 'Đã xóa.',
                                icon: 'success'
                            }).then(() => {
                                location.reload();
                            });
                        } else {
                            Swal.fire({
                                icon: "error",
                                title: "Oops...",
                                text: "Đã có chuyện gì đó xảy ra!",
                            });
                        }
                    }, error: function (e) {
                        Swal.fire({
                            icon: "error",
                            title: "Oops...",
                            text: "Dữ liệu nằm trong dữ liệu khác!",
                        });
                    }
                });
            }
        });
    }

</script>
<script type="text/javascript" src="<c:url value="/views/template/mdb/js/mdb.min.js"/> "></script>
<script type="text/javascript" src="<c:url value="/views/template/mdb/plugins/js/all.min.js"/> "></script>
<!-- Custom scripts -->
<script type="text/javascript" src="<c:url value="/views/admin/assets/js/home.js"/> "></script>
</html>
