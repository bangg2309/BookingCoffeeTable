<%@include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- ***** Header Area Start ***** -->
<header data-mdb-navbar-init class="navbar navbar-expand-lg navbar-light bg-body-tertiary fixed-top"
        style="box-shadow: rgba(0, 0, 0, 0.16) 0px 3px 6px, rgba(0, 0, 0, 0.23) 0px 3px 6px">
    <!-- Container wrapper -->
    <div class="container">
        <!-- Navbar brand -->
        <a class="navbar-brand me-2" href="https://mdbgo.com/">
            <img
                    src ="<c:url value="/views/template/custom/image/drink/logo2.png"/>"
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
            <ul class="nav navbar-nav me-auto mb-2 mb-lg-0">
                <li class="scroll-to-section home">
                    <a href="#">Trang chủ</a>
                </li>
                <li class="scroll-to-section">
                    <a href="<c:url value="/views/web/table.jsp"/> ">Bàn</a>
                </li>
                <li class="scroll-to-section">
                    <a href="<c:url value="/views/web/menu.jsp"/>">Thực đơn</a>
                </li>

                <li class="scroll-to-section">
                    <a href="<c:url value="/views/web/about.jsp"/>">Giới thiệu</a>
                </li>
                <li class="scroll-to-section">
                    <a href="<c:url value="/views/web/contactUS.jsp"/> ">Liên hệ</a>
                </li>
                <li class="scroll-to-section">
                    <a href="<c:url value="/views/web/post.jsp"/> ">Bài viết</a>
                </li>
            </ul>
            <!-- Left links -->

            <div class="login d-flex align-items-center">
                <li class="scroll-to-section">
                    <a href="<c:url value="/views/web/reservation.jsp"/>">Đặt bàn</a>
                </li>
                <li class="scroll-to-section login_content"><a href="<c:url value="/views/web/login.jsp"/> "><span class="user_icon"
                                                                                      style="padding-right: 10px"><i
                        class="fa fa-user"
                        aria-hidden="true"></i></span>Đăng nhập</a></li>

            </div>
        </div>
        <!-- Collapsible wrapper -->
    </div>
    <!-- Container wrapper -->
</header>
<!-- ***** Header Area End ***** -->