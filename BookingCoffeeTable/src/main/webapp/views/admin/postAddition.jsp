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
                        <a class="sidenav-link" href="productAddition.html">Thêm món</a>
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
                        <a class="sidenav-link" href="categoryAddition.html">Thêm danh mục</a>
                    </li>
                    <li class="sidenav-item">
                        <a class="sidenav-link" href="categoryManagement.html">Danh sách danh mục</a>
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
                        <a class="sidenav-link" href="contactManagemet.html">Danh sách liên hệ</a>
                    </li>
                </ul>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="">
                    <i class="fas fa-blog fa-fw me-3 "></i><span>Quản lý trang tin tức</span></a>
                <ul class="sidenav-collapse ">
                    <li class="sidenav-item">
                        <a class="sidenav-link" href="postAddition.html">Thêm bài viết</a>
                    </li>
                    <li class="sidenav-item">
                        <a class="sidenav-link" href="postManagement.html">Danh sách bài viết</a>
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
                            <h1 class="">Thêm bài viết</h1>
                            <!-- Breadcrumb -->
                            <nav class="d-flex justify-content-center justify-content-lg-start">
                                <h6 class="mb-0">
                                    <a href="" class="text-muted">Trang chủ</a>
                                    <span>/</span>
                                    <a href="" class="text-muted">Quản lý bài viết</a>
                                    <span>/</span>
                                    <a href="" class="text-muted"><u>Thêm bài viết</u></a>
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
    <div class="container px-4 ">
        <a href="postManagement.html" class="btn btn-link mb-2">
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
<script type="text/javascript" src="../template/mdb/js/mdb.min.js"></script>
<!-- MDB PLUGINS -->
<script type="text/javascript" src="../template/mdb/plugins/js/all.min.js"></script>
<!-- Custom scripts -->
<script type="text/javascript" src="assets/js/home.js"></script>
<script src="../template/ckeditor/ckeditor.js"></script>
<script>
    CKEDITOR.replace('content');
</script>
</html>
