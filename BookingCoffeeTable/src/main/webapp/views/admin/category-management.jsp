<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <title>Quản lý loại món</title>
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
        <div class="mb-3 d-flex justify-content-end px-4">
            <a class="btn btn-primary" href="/admin/category-management/edit">
                <i class="far fa-square-plus"></i>
                <span>Thêm loại món</span>
            </a>
        </div>
        <div class="input-group mb-4 px-4">
            <input type="text" class="form-control" id="advanced-search-input"
                   placeholder=""/>
            <button class="btn btn-primary" id="advanced-search-button" type="button">
                <i class="fa fa-search"></i>
            </button>
        </div>
        <table class="table align-middle mb-0 bg-white">
            <thead class="bg-light">
            <tr>
                <th>ID</th>
                <th>Tên loại món</th>
                <th>Trạng thái</th>
                <th>Hành động</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${categories}" var="category">
                <tr>
                    <td>
                            ${category.id}
                    </td>
                    <td>
                        <span>${category.name}</span>
                    </td>
                    <c:if test="${category.status == 1}">
                    <td>
                        <span class="badge badge-success rounded-pill d-inline">active</span>
                    </td>
                </c:if>
                    <c:if test="${category.status ==0}">
                    <td>
                        <span class="badge badge-danger rounded-pill d-inline">blocked</span>
                    </td>
                </c:if>
                    <td>
                    <a href="/admin/category-management/edit?id=${category.id}" class="btn btn-primary btn-floating">
                        <i class="far fa-pen-to-square"></i>
                    </a>
                        <button type="button" class="btn btn-danger btn-floating" onclick="deleteCategory(${category.id})">
                            <i class="far fa-trash-can"></i>
                        </button>
                </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <div class=" p-2 d-flex bg-white justify-content-end">
            <nav aria-label="...">
                <ul class="pagination pagination-circle mb-0">
                    <li class="page-item">
                        <a
                                class="page-link"
                                href="#"
                                tabindex="-1"
                                aria-disabled="true"
                        >Trước</a
                        >
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">1</a>
                    </li>
                    <li class="page-item active" aria-current="page">
                        <a class="page-link" href="#"
                        >2 <span class="sr-only">(current)</span></a
                        >
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">3</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">Tiếp theo</a>
                    </li>
                </ul>
            </nav>

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
<script>
    function deleteCategory(id){

        $.ajax({
            url: '/api/admin/category',
            contentType: "application/json",
            type: 'DELETE',
            data: JSON.stringify({
                id: id
            }),
            success: function (data) {
                if (data) {
                    alert('Xóa thành công');
                    location.reload();
                } else {
                    alert('Xóa thất bại');
                }
            }
        });
    }

</script>
<script type="text/javascript" src="<c:url value="/views/template/mdb/js/mdb.min.js"/> "></script>
<script type="text/javascript" src="<c:url value="/views/template/mdb/plugins/js/all.min.js"/> "></script>
<!-- Custom scripts -->
<script type="text/javascript" src="<c:url value="/views/admin/assets/js/home.js"/> "></script>
</html>
