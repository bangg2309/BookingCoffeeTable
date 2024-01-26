<%@include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <title>Trang chủ</title>
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
    <div class="container px-4">
        <div>
            <div class="row">
                <!-- Earnings (Monthly) Card Example -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-primary shadow h-100 py-2">
                        <div class="hover_container"></div>
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                        Tổng đơn đặt bàn
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">${reservationCount}</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <!-- Earnings (Monthly) Card Example -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-success shadow h-100 py-2">
                        <div class="hover_container"></div>
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                        Doanh thu
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">${cost}đ</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Earnings (Monthly) Card Example -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-info shadow h-100 py-2">
                        <div class="hover_container"></div>
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-info text-uppercase mb-1"> Tổng số
                                        khách hàng
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">${seatCount}</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-user-group fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Pending Requests Card Example -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-warning shadow h-100 py-2">
                        <div class="hover_container"></div>
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                        Tổng sản phẩm
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">${totalProduct}</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-mug-saucer fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Section: Sales Performance KPIs -->
        <section class="mb-8">
            <div class="card shadow-0">
                <div class="card-header border-0 p-3">
                    <strong>Thống kê chi tiết</strong>
                </div>
                <div class="card-body">
                    <div class="input-group mb-4 ">
                        <input type="text" class="form-control" id="advanced-search-input"
                               placeholder=""/>
                        <button class="btn btn-primary" id="advanced-search-button" type="button">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                    <div class="table-responsive datatable">
                        <table class="table table-hover table-borderless table-striped text-nowrap">
                            <thead>
                            <tr>
                                <th scope="col">Tên người dùng</th>
                                <th scope="col">Số điện thoại</th>
                                <th scope="col">Email</th>
                                <th scope="col">Đơn đã đặt</th>
                                <th scope="col">Số tiền</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${statisticals}" var="statistical">
                                <tr>
                                    <th scope="row"></th>
                                    <td>${statistical.username}</td>
                                    <td>${statistical.phone}</td>
                                    <td>${statistical.email}</td>
                                    <td>${statistical.orderAmount}</td>
                                    <td>${statistical.totalCost}đ</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </section>
        <!-- Section: Sales Performance KPIs -->


    </div>
    <!-- Container for demo purpose -->
</main>
<!--Main layout-->

<!-- End your project here-->
</body>

<!-- MDB ESSENTIAL -->
<script src="<c:url value="/views/template/assets/js/jquery-2.1.0.min.js"/> "></script>
<script type="text/javascript" src="<c:url value="/views/template/mdb/js/mdb.min.js"/> "></script>
<script type="text/javascript" src="<c:url value="/views/template/mdb/plugins/js/all.min.js"/> "></script>
<!-- Custom scripts -->
<script type="text/javascript" src="<c:url value="/views/admin/assets/js/home.js"/> "></script>
</html>