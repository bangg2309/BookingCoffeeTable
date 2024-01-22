<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <title>Quản lý kích thước món</title>
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
            <a class="btn btn-primary" href="product-variantAddition.jsp">
                <i class="far fa-square-plus"></i>
                <span>Thêm kích thước món</span>
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
                    <th>Tên món</th>
                    <th>Size</th>
                    <th>Giá</th>
                    <th>Hoạt động</th>
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
                                <p class="fw-bold mb-1">Cà phê kem</p>
                            </div>
                        </div>
                    </td>
                    <td>
                        <span>M</span>
                    </td>
                    <td>
                        <p class="fw-normal mb-1">49.000đ</p>
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
                <tr>
                    <td>
                        <span>1</span>
                    </td>
                    <td>
                        <div class="d-flex align-items-center">
                            <div class="">
                                <p class="fw-bold mb-1">Cà phê kem</p>
                            </div>

                        </div>
                    </td>
                    <td>
                        <span>S</span>
                    </td>
                    <td>
                        <p class="fw-normal mb-1">39.000đ</p>
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
                <tr>
                    <td>
                        <span>1</span>
                    </td>
                    <td>
                        <div class="d-flex align-items-center">

                            <div class="">
                                <p class="fw-bold mb-1">Cà phê kem</p>
                            </div>
                        </div>
                    </td>
                    <td>
                        <span>L</span>
                    </td>
                    <td>
                        <p class="fw-normal mb-1">59.000đ</p>
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
