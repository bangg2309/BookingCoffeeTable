<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <title>Quản lý đơn đặt bàn</title>
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
    <div class="container  px-4 ">
        <div class="mb-3 d-flex justify-content-end px-4">
            <a class="btn btn-primary" href="selectProduct.jsp">
                <i class="far fa-square-plus"></i>
                <span>Thêm đơn đặt bàn</span>
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
                    <th>Id</th>
                    <th>Khách hàng</th>
                    <th>Ngày đặt bàn</th>
                    <th>Thời gian đặt</th>
                    <th>Thời gian kết thúc</th>
                    <th>Số bàn</th>
                    <th>Tổng tiền</th>
                    <th>Trạng thái</th>
                    <th>Hành động</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>
                        <span>1</span>
                    </td>
                    <td>
                        <div class="d-flex align-items-center">
                            <div class="">
                                <p class="fw-bold mb-1">Trần Quí Bằng</p>
                            </div>
                        </div>
                    </td>
                    <td>
                        <span>Mon, 14.03.2022</span>
                    </td>
                    <td>
                        <p class="fw-normal mb-1">14:30</p>
                    </td>
                    <td>
                        <p class="fw-normal mb-1">16:30</p>
                    </td>
                    <td>
                        <p class="fw-normal mb-1">101</p>
                    </td>
                    <td>
                        <span class="">1.500.000đ</span>
                    </td>
                    <td>
                        <span class="badge badge-success rounded-pill d-inline">thành công</span>
                    </td>
                    <td>
                        <button type="button" class="btn btn-primary btn-floating">
                            <i class="far fa-pen-to-square"></i>
                        </button>
                        <button type="button" class="btn btn-danger btn-floating">
                            <i class="far fa-trash-can"></i>
                        </button>
                    </td>
                </tr>
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
<script type="text/javascript" src="<c:url value="/views/template/mdb/js/mdb.min.js"/> "></script>
<script type="text/javascript" src="<c:url value="/views/template/mdb/plugins/js/all.min.js"/> "></script>
<!-- Custom scripts -->
<script type="text/javascript" src="<c:url value="/views/admin/assets/js/home.js"/> "></script>
</html>
