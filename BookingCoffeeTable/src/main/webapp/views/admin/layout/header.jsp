<%@include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- ***** Header Area Start ***** -->
<header>
  <!-- Sidenav -->
  <nav id="main-sidenav" class="sidenav sidenav-sm shadow-1" data-mdb-mode="side"
       data-mdb-hidden="false">
    <a class="ripple d-flex justify-content-center pt-4 pb-2" href="/admin/dashboard" data-mdb-ripple-color="primary">
      <img id="MDB-logo" src="/views/template/custom/image/drink/logo2.png" style="width: 60px"
           alt="MDB Logo" draggable="false"/>
    </a>

    <hr class="hr">

    <ul class="sidenav-menu px-2 pb-5">
      <li class="sidenav-item">
        <a class="sidenav-link text-primary" href="/admin/dashboard">
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
            <a class="sidenav-link" href="/admin/user-management/edit">Thêm người dùng</a>
          </li>
          <li class="sidenav-item">
            <a class="sidenav-link" href="/admin/user-management">Danh sách người dùng</a>
          </li>
        </ul>
      </li>
      <li class="sidenav-item">
        <a class="sidenav-link ">
          <i class="fas fa-mug-saucer fa-fw me-3"></i><span>Quản lý món</span></a>
        <ul class="sidenav-collapse ">
          <li class="sidenav-item">
            <a class="sidenav-link" href="/admin/product-management/edit">Thêm món</a>
          </li>
          <li class="sidenav-item">
            <a class="sidenav-link" href="/admin/product-management">Danh sách món</a>
          </li>
          <li class="sidenav-item">
            <a class="sidenav-link" href="/admin/product-management/review">Danh sách đánh giá</a>
          </li>
        </ul>
      </li>
      <li class="sidenav-item">
        <a class="sidenav-link " href="">
          <i class="fas fa-bars fa-fw me-3 "></i><span>Quản lý danh mục</span></a>
        <ul class="sidenav-collapse ">
          <li class="sidenav-item">
            <a class="sidenav-link" href="/admin/category-management/edit">Thêm danh mục</a>
          </li>
          <li class="sidenav-item">
            <a class="sidenav-link" href="/admin/category-management">Danh sách danh mục</a>
          </li>
        </ul>
      </li>
      <li class="sidenav-item">
        <a class="sidenav-link " href="">
          <i class="fas fa-table fa-fw me-3 "></i><span>Quản lý bàn</span></a>
        <ul class="sidenav-collapse ">
          <li class="sidenav-item">
            <a class="sidenav-link" href="/admin/table-management/edit">Thêm bàn</a>
          </li>
          <li class="sidenav-item">
            <a class="sidenav-link" href="/admin/table-management">Danh sách bàn</a>
          </li>
        </ul>
      </li>
      <li class="sidenav-item">
        <a class="sidenav-link" href="">
          <i class="fas fa-clipboard-list fa-fw me-3 "></i><span>Quản lý đơn đặt bàn</span></a>
        <ul class="sidenav-collapse ">
          <li class="sidenav-item">
            <a class="sidenav-link" href="/admin/reservation-management">Danh sách đơn đặt bàn</a>
          </li>
        </ul>
      </li>
      <li class="sidenav-item">
        <a class="sidenav-link" href="">
          <i class="fas fa-message fa-fw me-3 "></i><span>Quản lý trang liên hệ</span></a>
        <ul class="sidenav-collapse ">
          <li class="sidenav-item">
            <a class="sidenav-link" href="/admin/contact-management">Danh sách liên hệ</a>
          </li>
        </ul>
      </li>
      <li class="sidenav-item">
        <a class="sidenav-link" href="">
          <i class="fas fa-blog fa-fw me-3 "></i><span>Quản lý trang tin tức</span></a>
        <ul class="sidenav-collapse ">
          <li class="sidenav-item">
            <a class="sidenav-link" href="/admin/post-management/edit">Thêm bài viết</a>
          </li>
          <li class="sidenav-item">
            <a class="sidenav-link" href="/admin/post-management">Danh sách bài viết</a>
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
            <li><a class="dropdown-item " href="/profile">My profile</a></li>
            <li><a class="dropdown-item" href="/logout">Logout</a></li>
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
              <h1 class="">Trang chủ</h1>
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
<!-- ***** Header Area End ***** -->