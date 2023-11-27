<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Lịch sử đặt bàn</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
  <!-- Additional CSS Files -->
  <!-- MDB ESSENTIAL -->
  <link rel="stylesheet" href="../template/mdb/css/mdb.min.css"/>
  <!-- MDB PLUGINS -->
  <link rel="stylesheet" href="../template/mdb/plugins/css/all.min.css"/>

  <!-- Custom css-->
  <link rel="stylesheet" href="../template/custom/css/userProfile.css">
  <link rel="stylesheet" href="../template/custom/css/historyBooking.css">
</head>

<body>
<!-- ***** Header Area Start ***** -->
<%@ include file="layout/header.jsp"%>
<!-- ***** Header Area End ***** -->


<!-- ***** Start main content-->
<!-- Container for demo purpose -->
<div class="main-content" style="margin-top: 80px">
  <div class="container">
    <div class="view-account">
      <section class="module">
        <div class="module-inner">
          <div class="side-bar ">
            <div class="user-info">
              <img class="img-profile img-circle img-responsive center-block"
                   src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="">
              <ul class="meta list list-unstyled">
                <li class="name" style="font-weight: bold; font-size: 20px">Nguyễn Hửu Tính
                </li>
                <li class="email"><a href="#">huutinh2412@gmail.com</a></li>
              </ul>
            </div>
            <nav class="side-menu">
              <ul class="nav">
                <li><a href="userProfile.jsp"><span class="fa fa-user"></span> Thông tin</a></li>
                <li><a href="changePassword.jsp"><span class="fa fa-cog"></span> Thay Đổi Mật Khẩu</a>
                </li>

                <li class="active"><a href="historyBooking.jsp"><span class="fa fa-clock-o"></span>
                  Lịch Sử</a></li>
              </ul>
            </nav>
          </div>
          <div class="content-panel">
            <section class="mb-10">
              <h2 class="fw-bold mb-4">Đơn đặt hàng</h2>
              <div class="d-md-flex justify-content-between mb-5">
                <div>
                  <select class="select">
                    <option value="1">Mới nhất</option>
                    <option value="2">Cũ nhất</option>
                  </select>
                </div>
              </div>
              <div class="mb-8">
                <div class="mb-4">
                  <h4 class="border-bottom pb-3 mb-4">31/10/2023</h4>
                  <div class="d-flex justify-content-end align-items-center">
                    <a href="reservationDetail.jsp" class="text-primary">Xem chi tiết</a>
                  </div>
                </div>
                <div class="d-md-flex mb-5">
                  <div class="me-5">
                    <h6>Ngày đặt bàn</h6>
                    <p>Mon, 14.03.2022</p>
                  </div>
                  <div class="me-5">
                    <h6>Thời gian đặt</h6>
                    <p>14:30</p>
                  </div>
                  <div class="me-5">
                    <h6>Thời gian kết thúc</h6>
                    <p>16:30</p>
                  </div>
                  <div class="me-5">
                    <h6>Số bàn</h6>
                    <p>115</p>
                  </div>
                  <div class="me-5">
                    <h6>Tổng tiền</h6>
                    <p>500.000đ</p>
                  </div>
                  <div class="me-5">
                    <h6>Cổng thanh toán</h6>
                    <p>Momo</p>
                  </div>
                  <div>
                    <h6>Trạng thái</h6>
                    <p class="badge badge-success rounded-pill d-inline">Thành công</p>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-4 col-lg-3 col-xl-2">
                    <a href="#!" class="text-reset">
                      <div class="bg-image ripple rounded-5 shadow-4 mb-4 ripple-surface-light"
                           data-ripple-color="light">
                        <img class="product-image img-fluid"
                             src="../template/custom/image/drink/blueberry.jpg"
                             alt="White T-shirt">
                        <div class="hover-overlay">
                          <div class="mask"
                               style="background-color: hsla(0, 0%, 98.4%, 0.2)"></div>
                        </div>
                      </div>
                      <h6>Martini</h6>
                      <p class="text-muted">Size: M</p>
                      <p class="text-muted">Số lượng: 2</p>
                    </a>
                  </div>
                  <div class="col-md-4 col-lg-3 col-xl-2">
                    <a href="#!" class="text-reset">
                      <div class="bg-image ripple rounded-5 shadow-4 mb-4 ripple-surface-light"
                           data-ripple-color="light">
                        <img class="product-image img-fluid"
                             src="../template/custom/image/drink/coffee_cream.jpg"
                             alt="Black T-shirt">
                        <div class="hover-overlay">
                          <div class="mask"
                               style="background-color: hsla(0, 0%, 98.4%, 0.2)"></div>
                        </div>
                      </div>
                      <h6>Martini</h6>
                      <p class="text-muted">Size: M</p>
                      <p class="text-muted">Số lượng: 2</p>
                    </a>
                  </div>
                  <div class="col-md-4 col-lg-3 col-xl-2">
                    <a href="#!" class="text-reset">
                      <div class="bg-image ripple rounded-5 shadow-4 mb-4 ripple-surface-light"
                           data-ripple-color="light">
                        <img class="product-image img-fluid"
                             src="../template/custom/image/drink/cookie_oreo.jpg"
                             alt="Platform shoes">
                        <div class="hover-overlay">
                          <div class="mask"
                               style="background-color: hsla(0, 0%, 98.4%, 0.2)"></div>
                        </div>
                      </div>
                      <h6>Martini</h6>
                      <p class="text-muted">Size: M</p>
                      <p class="text-muted">Số lượng: 2</p>
                    </a>
                  </div>
                </div>
              </div>
            </section>
          </div>
        </div>
      </section>
    </div>
  </div>
</div>
<!-- Container for demo purpose -->

<!-- ***** End main content-->


<!-- ***** Footer Start ***** -->
<%@ include file="layout/footer.jsp"%>
<!-- ***** Footer End ***** -->

<!-- jQuery -->
<script src="../template/assets/js/jquery-2.1.0.min.js"></script>
<!---->


<!-- Global Init -->

<script type="text/javascript" src="../template/mdb/js/mdb.min.js"></script>
<script type="text/javascript" src="../template/mdb/plugins/js/all.min.js"></script>
<script src="../template/mdb/js/mdb.umd.min.js"></script>
</body>
</html>