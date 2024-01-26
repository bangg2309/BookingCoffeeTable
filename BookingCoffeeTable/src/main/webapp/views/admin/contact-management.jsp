<%@include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <title>Quản lý liên hệ</title>
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
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/sweetalert2@11">
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
    <div class="container  px-4 mb-5">
        <div class="datatable">
            <table class="table align-middle mb-0 bg-white">
                <thead class="bg-light">
                <tr>
                    <th>Số thứ tự</th>
                    <th>Người liên hệ</th>
                    <th>Số điện thoại</th>
                    <th>Email</th>
                    <th>Chủ đề</th>
                    <th>Nội dung</th>
                    <th>Hành động</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${contacts}" var="contact">
                    <tr>
                        <td>
                            <span>1</span>
                        </td>
                        <td>
                            <div class="d-flex align-items-center">
                                <p class="fw-bold mb-1">${contact.fullName}</p>
                            </div>
                        </td>
                        <td>
                            <span>${contact.phone}</span>
                        </td>
                        <td>
                            <p class="fw-normal mb-1">${contact.email}</p>
                        </td>
                        <td>
                            <span>${contact.subject}</span>
                        </td>
                        <td>
                            <span>${contact.content}</span>
                        </td>
                        <td>
                            <button type="button" class="btn btn-danger btn-floating"
                                    onclick="deleteContact(${contact.id})">
                                <i class="far fa-trash-can"></i>
                            </button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <div class="container px-4 ">
        <div class="mb-3 bg-primary p-2">
            <span class="text-white">Trả lời tin nhắn</span>
        </div>
        <form class="border p-2" action="/admin/contact-management" method="post">
            <div class="row">
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="email" class="form-label"><b>Email</b></label>
                        <input type="text" class="form-control" id="email" name="email"
                               placeholder="Nhập email..." required>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="subject" class="form-label"><b>Chủ đề</b></label>
                        <input type="text" class="form-control" id="subject" name="subject"
                               placeholder="Nhập chủ đề..." required>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="mb-3">
                        <label class="form-label"><b>Nội dung</b></label>
                        <textarea class="form-control" id="content" name="content" rows="7"
                                  placeholder="Nội dung..."></textarea>
                    </div>
                </div>
            </div>

            <!-- Repeat the pattern for other form elements -->

            <button type="submit" class="btn btn-primary">Trả lời</button>
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
<script src="<c:url value="/views/template/assets/js/jquery-2.1.0.min.js"/> "></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
    function deleteContact(id) {
        Swal.fire({
            title: 'Are you sure?',
            text: "Bạn sẽ không thể quay lại!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                // User confirmed, proceed with the AJAX request
                $.ajax({
                    url: '/api/admin/contact',
                    contentType: 'application/json',
                    type: 'DELETE',
                    data: JSON.stringify({
                        id: id
                    }),
                    success: function (data) {
                        if (data) {
                            Swal.fire({
                                title: 'Deleted!',
                                text: 'Đã xóa.',
                                icon: 'success'
                            }).then(() => {
                                location.reload();
                            });
                        } else {
                            Swal.fire({
                                icon: "error",
                                title: "Oops...",
                                text: "Đã có chuyện gì đó xảy ra!",
                            });
                        }
                    }, error: function (e) {
                        Swal.fire({
                            icon: "error",
                            title: "Oops...",
                            text: "Dữ liệu nằm trong dữ liệu khác!",
                        });
                    }
                });
            }
        });
    }

</script>
<script type="text/javascript" src="<c:url value="/views/template/mdb/js/mdb.min.js"/> "></script>
<script type="text/javascript" src="<c:url value="/views/template/mdb/plugins/js/all.min.js"/> "></script>
<!-- Custom scripts -->
<script type="text/javascript" src="<c:url value="/views/admin/assets/js/home.js"/> "></script>
</html>
