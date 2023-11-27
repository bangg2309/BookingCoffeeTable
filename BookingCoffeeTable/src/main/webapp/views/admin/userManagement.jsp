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
    <link rel="stylesheet" href="../template/mdb/css/mdb.min.css"/>
    <!-- MDB PLUGINS -->
    <link rel="stylesheet" href="../template/mdb/plugins/css/all.min.css"/>
    <!-- Custom styles -->
    <link rel="stylesheet" href="assets/css/home.css"/>
    <style></style>
</head>

<body>
<!-- Start your project here-->
<!--Main Navigation-->
<header>
    <!-- Sidenav -->
    <nav id="main-sidenav" class="sidenav sidenav-sm shadow-1" data-mdb-mode="side"
         data-mdb-hidden="false">
        <a class="ripple d-flex justify-content-center pt-4 pb-2" href="#!" data-mdb-ripple-color="primary">
            <img id="MDB-logo" src="../template/custom/image/drink/logo2.png" style="width: 60px"
                 alt="MDB Logo" draggable="false"/>
        </a>

        <hr class="hr">

        <ul class="sidenav-menu px-2 pb-5">
            <li class="sidenav-item">
                <a class="sidenav-link text-primary" href="home.jsp">
                    <i class="fas fa-tachometer-alt fa-fw me-3 "></i><span>Trang chủ</span></a>
            </li>
            <li class="sidenav-item pt-3">
                <span class="sidenav-subheading text-muted text-uppercase fw-bold">Quản lý</span>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link ">
                    <i class="fas fa-users fa-fw me-3 "></i><span>Quản lý người dùng</span></a>
                <ul class="sidenav-collapse">
                    <li class="sidenav-item">
                        <a class="sidenav-link" href="userAddition.html">Thêm người dùng</a>
                    </li>
                    <li class="sidenav-item">
                        <a class="sidenav-link" href="userManagement.html">Danh sách người dùng</a>
                    </li>
                </ul>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link ">
                    <i class="fas fa-mug-saucer fa-fw me-3"></i><span>Quản lý món</span></a>
                <ul class="sidenav-collapse ">
                    <li class="sidenav-item">
                        <a class="sidenav-link" href="productAddition.jsp">Thêm món</a>
                    </li>
                    <li class="sidenav-item">
                        <a class="sidenav-link" href="productManagement.html">Danh sách món</a>
                    </li>
                    <li class="sidenav-item">
                        <a class="sidenav-link" href="reviewManagement.html">Danh sách đánh giá</a>
                    </li>
                </ul>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link " href="">
                    <i class="fas fa-bars fa-fw me-3 "></i><span>Quản lý danh mục</span></a>
                <ul class="sidenav-collapse ">
                    <li class="sidenav-item">
                        <a class="sidenav-link" href="categoryAddition.jsp">Thêm danh mục</a>
                    </li>
                    <li class="sidenav-item">
                        <a class="sidenav-link" href="categoryManagement.jsp">Danh sách danh mục</a>
                    </li>
                </ul>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link " href="">
                    <i class="fas fa-table fa-fw me-3 "></i><span>Quản lý bàn</span></a>
                <ul class="sidenav-collapse ">
                    <li class="sidenav-item">
                        <a class="sidenav-link" href="tableAddition.html">Thêm bàn</a>
                    </li>
                    <li class="sidenav-item">
                        <a class="sidenav-link" href="tableManagement.html">Danh sách bàn</a>
                    </li>
                </ul>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="">
                    <i class="fas fa-clipboard-list fa-fw me-3 "></i><span>Quản lý đơn đặt bàn</span></a>
                <ul class="sidenav-collapse ">
                    <li class="sidenav-item">
                        <a class="sidenav-link" href="reservationAddition.html">Thêm đơn đặt bàn</a>
                    </li>
                    <li class="sidenav-item">
                        <a class="sidenav-link" href="reservationManagement.html">Danh sách đơn đặt bàn</a>
                    </li>
                </ul>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="">
                    <i class="fas fa-message fa-fw me-3 "></i><span>Quản lý trang liên hệ</span></a>
                <ul class="sidenav-collapse ">
                    <li class="sidenav-item">
                        <a class="sidenav-link" href="contactManagemet.jsp">Danh sách liên hệ</a>
                    </li>
                </ul>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="">
                    <i class="fas fa-blog fa-fw me-3 "></i><span>Quản lý trang tin tức</span></a>
                <ul class="sidenav-collapse ">
                    <li class="sidenav-item">
                        <a class="sidenav-link" href="postAddition.jsp">Thêm bài viết</a>
                    </li>
                    <li class="sidenav-item">
                        <a class="sidenav-link" href="postManagement.jsp">Danh sách bài viết</a>
                    </li>
                </ul>
            </li>
        </ul>
    </nav>
    <!-- Sidenav -->


    <!-- Navbar -->
    <nav id="main-navbar" class="navbar navbar-expand-lg navbar-light bg-white fixed-top shadow-1">
        <!-- Container wrapper -->
        <div class="container-fluid">
            <!-- Toggler -->
            <button data-mdb-toggle="sidenav" data-mdb-target="#main-sidenav"
                    class="btn shadow-0 p-0 me-3 d-block " aria-controls="#main-sidenav" aria-haspopup="true">
                <i class="fas fa-bars fa-lg"></i>
            </button>

            <!-- Search form -->
            <form class="d-none d-md-flex input-group w-auto my-auto">
                <input id="search-focus" autocomplete="off" type="search" class="form-control rounded"
                       placeholder='Search (ctrl + alt to focus)' style="min-width: 225px"/>
                <span class="input-group-text border-0"><i class="fas fa-search text-secondary"></i></span>
            </form>

            <!-- Right links -->
            <ul class="navbar-nav ms-auto d-flex flex-row">
                <!-- Avatar -->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle hidden-arrow d-flex align-items-center" href="#"
                       id="navbarDropdownMenuLink" role="button" data-mdb-toggle="dropdown" aria-expanded="false">
                        <img src="https://mdbootstrap.com/img/new/avatars/2.jpg" class="rounded-circle" height="22"
                             alt="Avatar"
                             loading="lazy"/>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownMenuLink">
                        <li><a class="dropdown-item " href="profile.html">My profile</a></li>
                        <li><a class="dropdown-item" href="#">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- Container wrapper -->
    </nav>
    <!-- Navbar -->

    <!-- Heading -->
    <section class="mb-5 text-center text-md-start">
        <!-- Background gradient -->
        <div class="p-5" style="height: 200px;
                            background: linear-gradient(
                            to right,
                            hsl(209, 42.2%, 65%),
                            hsl(209, 42.2%, 85%)
                            );">
        </div>
        <!-- Background gradient -->

        <div class="container px-4">
            <div class="card shadow-0" style="
                                        margin-top: -100px;
                                        ">
                <div class="card-body py-5 px-5">
                    <div class="row gx-lg-4 align-items-center">
                        <div class="col-lg-6 mb-4 mb-lg-0 text-center text-lg-start">
                            <h1 class="">Quản lý người dùng</h1>
                            <!-- Breadcrumb -->
                            <nav class="d-flex justify-content-center justify-content-lg-start">
                                <h6 class="mb-0">
                                    <a href="home.jsp" class="text-muted">Trang chủ</a>
                                    <span>/</span>
                                    <a href="" class="text-muted"><u>Danh sách người dùng</u></a>
                                </h6>
                            </nav>
                            <!-- Breadcrumb -->
                        </div>

                        <div class="col-lg-6 text-center text-lg-end">
                            <button type="button" class="btn btn-link mb-4 px-2 px-md-3" data-ripple-color="primary">
                                Export<i class="fas fa-download ms-2"></i>
                            </button>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Heading -->

</header>
<!--Main Navigation-->

<!--Main layout-->
<main class="mb-5">

    <!-- Container for demo purpose -->
    <div class="container  px-4 ">
        <div class="mb-3 d-flex justify-content-end px-4">
            <a class="btn btn-primary" href="userAddition.html">
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
                    <th>Tên đăng nhập</th>
                    <th>Tên người dùng</th>
                    <th>Số điện thoại</th>
                    <th>email</th>
                    <th>Xác thực Email</th>
                    <th>Trạng thái</th>
                    <th>Thao tác</th>
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
                                <p class=" mb-1">bangg2309</p>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="d-flex align-items-center">
                            <div class="">
                                <p class=" mb-1">Trần Quí Bằng</p>
                            </div>
                        </div>
                    </td>
                    <td>
                        <span>0842314569</span>
                    </td>
                    <td>
                        <p class="fw-normal mb-1">bangg2309@gmail.com</p>
                    </td>
                    <td>
                        <span class="badge badge-success rounded-pill d-inline">đã xác thực</span>
                    </td>
                    <td>
                        <span class="badge badge-danger rounded-pill d-inline">ngưng hoạt động</span>
                    </td>
                    <td>
                        <a href="productAddition.jsp" class="btn btn-primary btn-floating">
                            <i class="far fa-pen-to-square"></i>
                        </a>
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
<script type="text/javascript" src="../template/mdb/js/mdb.min.js"></script>
<!-- MDB PLUGINS -->
<script type="text/javascript" src="../template/mdb/plugins/js/all.min.js"></script>
<!-- Custom scripts -->
<script type="text/javascript" src="assets/js/home.js"></script>
<script type="text/javascript"></script>
</html>
