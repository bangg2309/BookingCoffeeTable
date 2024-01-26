<%@include file="/common/taglib.jsp" %>
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

    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/sweetalert2@11">

</head>

<body>
<!-- ***** Header Area Start ***** -->
<%@ include file="layout/header.jsp" %>
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


                            <div class="text-muted small text-uppercase">
                                <a href="#!" data-category-value="0" class="font-weight-bold text-reset area-link"
                                   style="font-size: 20px; padding-bottom: 10px">Khu vực</a>
                                <c:forEach var="area" items="${areas}" varStatus="loop">
                                    <p class="mt-3">
                                        <a href="#!" class="text-reset area-link"
                                           data-category-value="${loop.index + 1}"
                                           style="text-transform: uppercase">${area.name}</a>
                                    </p>
                                </c:forEach>


                            </div>
                        </section>
                        <!-- Section: Categories -->

                    </section>
                    <!-- Section: Filters -->
                </div>
                <div class="col-lg-10">

                    <div class="mb-5">

                        <form class="d-flex justify-content-between flex-wrap">
                            <!-- Ngày Đặt -->
                            <div class=" col-md-2 mb-3">
                                <label for="filterDate" class="form-label ">Ngày Đặt:</label>
                                <input type="date" class="form-control" name="date" id="filterDate" value="">
                            </div>
                            <!-- Thời Gian Đặt -->
                            <div class="col-md mb-3">
                                <label for="filterStartTime" class="form-label">Thời Gian Đặt:</label>
                                <input type="time" class="form-control" id="filterStartTime" name="startTime"
                                       min="08:00" max="18:00">
                            </div>
                            <!-- Thời Gian Kết Thúc -->
                            <div class="col-md mb-3">
                                <label for="filterEndTime" class="form-label">Thời Gian Kết Thúc:</label>
                                <input type="time" class="form-control" name="startEnd" id="filterEndTime">
                            </div>

                            <!-- Số người -->
                            <div class="col-md-2 mb-3">
                                <label for="filterPeople" class="form-label">Số người:</label>
                                <input type="number" class="form-control" id="filterPeople" min="1" value="0"
                                       name="count">
                            </div>
                            <!-- Nút Áp Dụng -->
                            <div class="col-md-2 mb-3 d-flex align-items-end pb-1 justify-content-center">

                                <div>
                                    <button type="button" class="btn btn-primary" id="find">Tìm kiếm
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
<%@ include file="layout/footer.jsp" %>
<!-- ***** Footer End ***** -->
<!-- jQuery -->
<script src="<c:url value="/views/template/assets/js/jquery-2.1.0.min.js"/>"></script>
<!---->
<!---->
<script src="<c:url value="/views/template/paging/jquery.twbsPagination.min.js"/>"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script type="text/javascript">

    let totalPages = ${totalPage};
    let currentPage = 1;
    const limit = 9;
    let count = $('#filterPeople').val();
    let text = "";
    let category = $('#category').val();
    let areaValue = 0;
    let startTime = "0000-00-00 00:00:00";
    let endTime = "0000-00-00 00:00:00";

    // Đặt sự kiện click cho các liên kết danh mục
    var areaLinks = document.querySelectorAll('.area-link');
    areaLinks.forEach(function (link) {
        link.addEventListener('click', function (event) {
            event.preventDefault();

            // Lấy giá trị danh mục từ thuộc tính data-category-value
            areaValue = this.getAttribute('data-category-value');

            // Hiển thị giá trị trong console (có thể thay đổi thành việc xử lý giá trị theo yêu cầu của bạn)
            console.log("Selected category value: " + areaValue);
            ajaxRun(count, text, '', '', areaValue);
        });
    });

    $(function () {
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: totalPages,
            visiblePages: 5,
            startPage: currentPage,
            onPageClick: function (event, page) {
                if (currentPage != page) {
                    currentPage = page;
                    count = $('#filterPeople').val();
                    ajaxRun(count, text, '', '', areaValue);
                }
            }
        });
    });


    $('#find').click(function () {
        count = 0;
        var currentDate = new Date();
        var currentDateTimePlus15Minutes = new Date();
        currentDateTimePlus15Minutes.setMinutes(currentDateTimePlus15Minutes.getMinutes() + 15);

        if ($('#filterDate').val()) {
            startTime = $('#filterDate').val() + " " + $('#filterStartTime').val() + ":00";
            endTime = $('#filterDate').val() + " " + $('#filterEndTime').val() + ":00";

            var parsedStartTime = new Date(startTime);
            var parsedEndTime = new Date(endTime);
            count = $('#filterPeople').val();
            // Kiểm tra điều kiện

            if (parsedStartTime > currentDateTimePlus15Minutes) {
                if (parsedEndTime > parsedStartTime) {
                    ajaxRun(count, text, startTime, endTime, areaValue);
                } else Swal.fire({
                    icon: "error",
                    title: "Oops...",
                    text: "Thời gian kết thúc phải lớn hơn thời gian bắt đầu 15 phút!",
                });


            } else
                Swal.fire({
                    icon: "error",
                    title: "Oops...",
                    text: "Thời gian bắt đầu phải lớn hơn thời gian hiện tại 15 phút!",
                });
            ;


        } else {
            Swal.fire({
                icon: "error",
                title: "Oops...",
                text: "Vui lòng chọn ngày đặt bàn!",
            });

        }
    });


    $("#search-text").on('keyup', function () {
        currentPage = 1; // Đặt lại currentPage về 1 khi có sự kiện tìm kiếm
        text = $(this).val();
        console.log(text);

        // Gọi hàm update của twbsPagination để cập nhật giá trị currentPage
        window.pagObj.twbsPagination('destroy'); // Hủy bỏ phân trang hiện tại
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: totalPages,
            visiblePages: 5,
            startPage: currentPage,
            onPageClick: function (event, page) {
                if (currentPage != page) {
                    currentPage = page;

                    ajaxRun(count, text, '', '', areaValue);
                }
            }
        });
        count = 1;
        ajaxRun(count, text, '', '', areaValue);
    });

    function yourButtonClick(button) {
        // Lấy giá trị từ các trường date, startTime, và endTime
        var selectedDate = $('#filterDate').val();
        var selectedStartTime = $('#filterStartTime').val();
        var selectedEndTime = $('#filterEndTime').val();

        var parsedStartTime = new Date(selectedDate + " " + selectedStartTime);
        var parsedEndTime = new Date(selectedDate + " " + selectedEndTime);
        var currentDateTime = new Date();

        // Kiểm tra điều kiện
        if (parsedStartTime > currentDateTime && parsedEndTime > parsedStartTime) {
            // Nếu điều kiện đúng, thực hiện hành động của bạn (ví dụ: chuyển hướng đến trang home.html)
            window.location.href = 'home.html';
        } else {
            // Ngược lại, hiển thị cảnh báo hoặc thực hiện các hành động khác
            Swal.fire({
                icon: "error",
                title: "Oops...",
                text: "Vui lòng chọn thời gian hợp lệ!",
            });
        }
    }


    function ajaxRun(count, text, startTime, endTime, areaValue) {
        $.ajax({
            type: "Post",

            url: "/tables?page-index=" + currentPage + "&per-page=" + limit + "&count=" + count + "&text=" + text + "&startTime=" + startTime + "&endTime=" + endTime + "&areaValue=" + areaValue,

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
                        + "<h4>Chỗ ngồi: " + val.seatCount + " người</h4>"
                        + "<h4>Vị trí: " + val.location + "</h4>"
                        + "<div class=\"button-container\">"
                        + "<button class=\"btn btn-primary yourBookButton\" style=\"text-transform: uppercase\" onclick=\"checkTimeAndRedirect('" + val.id + "', '" + startTime + "', '" + endTime + "' )\">Chọn bàn</button>"
                        + "</div>"
                        + "</div>"
                        + "</div>"
                        + "</div>";
                }
                $("#yourContainer").html(data);
            }
        });
    }

    ajaxRun(count, text, startTime, endTime, areaValue);

    function checkTimeAndRedirect(tableId, startTime, endTime) {
        if (startTime === "0000-00-00 00:00:00" || endTime === "0000-00-00 00:00:00") {
            // Nếu có giá trị cho cả startTime và endTime, chuyển hướng trang
            Swal.fire({
                icon: "error",
                title: "Oops...",
                text: "Vui lòng chọn giờ trước khi đặt bàn!",
            });
        } else {
            // Nếu thiếu giá trị, hiển thị thông báo hoặc thực hiện hành động khác

            console.log(startTime);
            location.href = '/add-table?id=' + tableId + '&startTime=' + startTime + '&endTime=' + endTime;
            // Hoặc có thể thực hiện hành động khác ở đây
        }
    }

</script>


<script type="text/javascript" src="<c:url value="/views/template/mdb/js/mdb.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/views/template/mdb/plugins/js/all.min.js"/>"></script>
<script src="<c:url value="/views/template/mdb/js/mdb.umd.min.js"/>"></script>

</body>
</html>