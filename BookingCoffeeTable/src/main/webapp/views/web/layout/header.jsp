<%@include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- ***** Header Area Start ***** -->
<style>

    .drop_content{
        padding-left: 0px;
        background-color: white;
        box-shadow: rgba(0, 0, 0, 0.16) 0px 3px 6px, rgba(0, 0, 0, 0.23) 0px 3px 6px;
       display: none;
        position: absolute;
        width: 10%;
        height: 100%;
        /*margin-top: 10px;*/
    }

    .drop_content li{
        padding-bottom: 15%;
    }
    .drop:hover a
    {
        color:  #2a2a2a!important;
    }

    .drop .drop_content li:hover a
    {
        color:  #bf9369!important;
        background-color: white;
    }

    .drop:hover .drop_content {
        display: block;
    }
    .navbar-collapse{
        padding-left: 0px;
    }


</style>
<header data-mdb-navbar-init class="navbar navbar-expand-lg navbar-light bg-body-tertiary fixed-top"
        style="box-shadow: rgba(0, 0, 0, 0.16) 0px 3px 6px, rgba(0, 0, 0, 0.23) 0px 3px 6px">
    <!-- Container wrapper -->
    <div class="container" style="padding: 0">
        <!-- Navbar brand -->
        <a class="navbar-brand me-2" href="/home">
            <img
                    src="<c:url value="/views/template/custom/image/drink/logo2.png"/>"
                    height="50"
                    alt="MDB Logo"
                    loading="lazy"
                    style="margin-top: -1px;"
            />
        </a>
        <!-- Toggle button -->
        <button
                data-mdb-collapse-init
                class="navbar-toggler"
                type="button"
                data-mdb-target="#navbarButtonsExample"
                aria-controls="navbarButtonsExample"
                aria-expanded="false"
                aria-label="Toggle navigation"
        >
            <i class="fas fa-bars"></i>
        </button>

        <!-- Collapsible wrapper -->
        <div class="collapse navbar-collapse" id="navbarButtonsExample">
            <!-- Left links -->
            <ul class="nav navbar-nav me-auto mb-2 mb-lg-0 col-9">
                <li class="scroll-to-section home">
                    <a href="<c:url value="/home"/>">Trang chủ</a>

                </li>
                <li class="scroll-to-section">
                    <a href="<c:url value="/table"/> ">Bàn</a>
                </li>
                <li class="scroll-to-section">
                    <a href="<c:url value="/menu"/>">Thực đơn</a>
                </li>

                <li class="scroll-to-section">
                    <a href="<c:url value="/views/web/about.jsp"/>">Giới thiệu</a>
                </li>
                <li class="scroll-to-section">
                    <a href="<c:url value="/views/web/contactUS.jsp"/> ">Liên hệ</a>
                </li>
                <li class="scroll-to-section">

                    <a href="<c:url value="/post"/>">Bài viết</a>

                </li>
            </ul>
            <!-- Left links -->


            <ul class="navbar-collapse" style="margin-bottom: 0;">
                <li class="scroll-to-section order_table"><a href="bill.html">Đặt bàn</a></li>
                <li class="scroll-to-section drop">
                    <a href="login.html"><span class="user_icon" style="padding-right: 10px"><i
                            class="fa fa-user-circle"
                            aria-hidden="true"></i></span>huutinh</a>
                    <ul class="drop_content">
                        <li><a class="dropdown-item" href="#">Hồ sơ của tôi</a></li>
                        <li><a class="dropdown-item" href="login.html">Đăng xuất</a></li>
                    </ul>
                </li>
            </ul>

        </div>
        <!-- Collapsible wrapper -->
    </div>
    <!-- Container wrapper -->
</header>
<!-- ***** Header Area End ***** -->