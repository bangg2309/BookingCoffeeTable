<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
    <title>Menu</title>

    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/views/template/assets/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/views/template/assets/css/owl-carousel.css"/>">

    <!-- MDB ESSENTIAL -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/css/mdb.min.css"/>"/>
    <!-- MDB PLUGINS -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/plugins/css/all.min.css"/>"/>

    <!-- Custom css-->
    <link rel="stylesheet" href="<c:url value="/views/template/custom/css/table.css"/>">

</head>

<body>
<!-- ***** Header Area Start ***** -->
<%@ include file="layout/header.jsp"%>
<!-- ***** Header Area End ***** -->

<div class="main_content" style="margin-top: 100px">

    <!--Main layout-->
    <main class="mb-6">
        <div class="container">
            <div class="row gx-lg-5">
                <div class="col-lg-2 d-none d-lg-block">
                    <!-- Section: Filters -->
                    <section class="">
                        <!-- Section: Search -->
                        <section class="mb-5 mt-4">
                            <div class="d-flex">
                                <input
                                        id="search-text"
                                        type="search"
                                        class="form-control rounded me-1"
                                        placeholder="Tìm kiếm"
                                        aria-label="Search"
                                        aria-describedby="search-addon"
                                />
                                <a
                                        href="#!"
                                        role="button"
                                        class="
                        btn btn-link btn-floating
                        text-reset
                        overflow-visible
                        "
                                >
                                    <i class="fas fa-search"></i>
                                </a>
                            </div>
                        </section>
                        <!-- Section: Search -->

                        <!-- Section: Categories -->
                        <section class="mb-5">
                            <h5 class="fw-bold mb-4">Khu vực</h5>

                            <div class="text-muted small text-uppercase">
                                <c:forEach var="area" items="${areas}" varStatus="loop">
                                    <p class="mb-3">
                                        <a href="#!" class="text-reset category-link" data-category-value="${loop.index + 1}" style="text-transform: uppercase">${area.name}</a>
                                    </p>
                                </c:forEach>



                            </div>
                        </section>
                        <!-- Section: Categories -->

                    </section>
                    <!-- Section: Filters -->
                </div>
                <div class="col-lg-10">

                    <div class="d-flex justify-content-end mb-5">

                        <form class="d-flex justify-content-between flex-wrap">
                            <!-- Ngày Đặt -->
                            <div class=" col-md-2 mb-3">
                                <label for="filterDate" class="form-label ">Ngày Đặt:</label>
                                <input type="date" class="form-control" name="start" id="filterDate" value="">
                            </div>
                            <!-- Thời Gian Đặt -->
                            <div class="col-md-2 mb-3">
                                <label for="filterStartTime" class="form-label">Thời Gian Đặt:</label>
                                <input type="time" class="form-control" id="filterStartTime" min="08:00" max="18:00">
                            </div>
                            <!-- Thời Gian Kết Thúc -->
                            <div class="col-md-2 mb-3">
                                <label for="filterEndTime" class="form-label">Thời Gian Kết Thúc:</label>
                                <input type="time" class="form-control" id="filterEndTime">
                            </div>
                            <!-- Vị Trí -->
                            <div class="col-md-2 mb-3">
                                <label for="filterLocation" class="form-label">Vị Trí:</label>
                                <select class="select" id="filterLocation">
                                    <option value="1" selected>Chọn vị trí</option>
                                    <option value="2">Trong nhà</option>
                                    <option value="3">Ban công</option>
                                    <option value="3">Cửa sổ</option>
                                    <option value="3">Quầy bar</option>
                                </select>
                            </div>
                            <!-- Số người -->
                            <div class="col-md-2 mb-3">
                                <label for="filterPeople" class="form-label">Số người:</label>
                                <input type="number" class="form-control" id="filterPeople" min="1" name="count">
                            </div>
                            <!-- Nút Áp Dụng -->
                            <div class="col-md-2 mb-3 d-flex align-items-end pb-1 justify-content-center">

                                <div>
                                    <button type="button" class="btn btn-primary"id="find">Tìm kiếm
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="row gx-xl-5 justify-content-center" id="yourContainer">


                    </div>
                    <ul class="pagination" id="pagination"></ul>
                    <input type="hidden" value="" id="page" name="page">
                    <input type="hidden" value="" id="maxPageItem" name="maxPageItem">
                </div>


            </div>
        </div>


    </main>
    <!--Main layout-->


    <!-- ***** Main Banner Area Start ***** -->

    <!-- ***** Main Banner Area End ***** -->


</div>
<!-- ***** Footer Start ***** -->
<%@ include file="layout/footer.jsp"%>
<!-- ***** Footer End ***** -->
<!-- jQuery -->
<script src="<c:url value="/views/template/assets/js/jquery-2.1.0.min.js"/>"></script>
<!---->
<!---->
<script src="<c:url value="/views/template/paging/jquery.twbsPagination.min.js"/>"></script>
<script type="text/javascript">

    let totalPages = ${totalPage};
    let currentPage = 1;
    const limit = 9;
    let count = $('#filterPeople').val();
    let text = "";
    let category = $('#category').val();
    let categoryValue = 0;

    // Đặt sự kiện click cho các liên kết danh mục
    var categoryLinks = document.querySelectorAll('.category-link');
    categoryLinks.forEach(function(link) {
        link.addEventListener('click', function(event) {
            event.preventDefault();

            // Lấy giá trị danh mục từ thuộc tính data-category-value
            categoryValue = this.getAttribute('data-category-value');

            // Hiển thị giá trị trong console (có thể thay đổi thành việc xử lý giá trị theo yêu cầu của bạn)
            console.log("Selected category value: " + categoryValue);
        });
    });

    $(function () {
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: totalPages,
            visiblePages: 5,
            startPage: currentPage,
            onPageClick: function (event, page) {
                if(currentPage!=page){
                    currentPage = page;
                    count = $('#filterPeople').val();
                    ajaxRun(count, text);
                }
            }
        });
    });



    $('#find').click(function (){
        count = $('#filterPeople').val();
        console.log("Số:" +count);
        ajaxRun(count,text);
    })

    $("#search-text").on('keyup',function (){
        text = $(this).val();
        console.log(text);
        ajaxRun(count,text);
    });

    $('#category').click(function (){
        category = $(this).val();

    })



    function ajaxRun(count, text) {
        $.ajax({
            type: "Post",
            url: "/tables?page-index=" + currentPage + "&per-page=" + limit + "&count=" + count + "&text=" + text ,
            ContentType: 'json',
            headers: {Accept: "application/json;charset=utf-8"},
            success: function (json) {
                let data = "";
                let obj = json;
                for (let i = 0; i < obj.length; i++) {
                    let val = obj[i];
                    // onclick="return theFunction();"
                    data += "<div class=\"col-lg-4 col-6 mb-4\">"
                        + "<div class=\"bg-image ripple shadow-4-soft rounded-6 mb-4 overflow-hidden d-block table_main\" data-ripple-color=\"light\">"
                        + "<img src=\"" + val.image + "\" class=\"w-100\" alt=\"\"/>"
                        + "<div class=\"hover-overlay table_omega text-center\">"
                        + "<br>"
                        + "<h4>Số bàn: " + val.tableNum + "</h4>"
                        + "<h4>chỗ ngồi: " + val.seatCount + " người</h4>"
                        + "<h4>Vị trí: " + val.location + "</h4>"
                        + "<a href=\"home.html\" class=\"btn btn-primary\" style=\"text-transform: uppercase\">Chọn bàn</a>"
                        + "</div>"
                        + "</div>"
                        + "</div>";
                }
                $("#yourContainer").html(data);
            }
        });
    }
    ajaxRun(count, text);

    function addToCart(id){
        let confirmBox = confirm("Add to cart ?");
        if (confirmBox === true) {
            $.ajax({
                url: '<%=request.getContextPath()%>/add-cart?id='+id,
                type: 'GET',
                success: function (data) {
                    alert('Add to cart is success!');
                    updateCart();
                },
                error: function (data) {
                    alert('Add to cart is error!');
                }
            });
        } else {
            console.log("No add product to cart!");
        }
    }


</script>


<script type="text/javascript" src="<c:url value="/views/template/mdb/js/mdb.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/views/template/mdb/plugins/js/all.min.js"/>"></script>
<script src="<c:url value="/views/template/mdb/js/mdb.umd.min.js"/>"></script>

</body>
</html>