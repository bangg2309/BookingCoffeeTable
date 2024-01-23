<%@include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <title>Thêm món</title>
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
    <div class="container px-4">
        <a href="/admin/product-management" class="btn btn-link mb-2">
            <i class="fas fa-angle-left"></i> Quay lại
        </a>

        <div class="mb-3 bg-primary p-2">
            <span class="text-white">Thông tin món</span>
        </div>

        <form class="border p-5" id="formSubmit" enctype="multipart/form-data">
            <!-- Thông tin cơ bản -->
            <div class="row mb-3">
                <div class="col-md-4">
                    <label for="category" class="form-label"><b>Loại món</b></label>
                    <i class="fas fa-bars"></i>
                    <select class="form-select" id="category" name="category" required>
                        <option value="" disabled>--Chọn danh mục món--</option>
                        <c:forEach items="${categories}" var="category">
                            <c:choose>
                                <c:when test="${category.id == product.categoryId}">
                                    <option value="${category.id}" selected>${category.name}</option>
                                </c:when>
                                <c:otherwise>
                                    <option value="${category.id}">${category.name}</option>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </select>
                </div>

                <div class="col-md-4">
                    <label for="name" class="form-label"><b>Tên món</b></label>
                    <i class="fas fa-mug-saucer"></i>
                    <input type="text" class="form-control" id="name" name="name" value="${product.name}"
                           placeholder="Nhập Tên món..."
                           required>
                </div>

                <div class="col-md-4">
                    <label for="price" class="form-label"><b>Giá tiền</b></label>
                    <i class="fas fa-coins"></i>
                    <input type="number" class="form-control" id="price" name="price" value="${product.price}"
                           placeholder="VND..."
                           required>
                </div>
            </div>

            <!-- Khuyến mãi và Trạng thái -->
            <div class="row mb-3">
                <div class="col-md-4">
                    <label for="discount" class="form-label"><b>Khuyến mãi</b></label>
                    <i class="fas fa-percent"></i>
                    <input type="text" class="form-control" id="discount" name="discount"
                           value="${product.discount * 100}"
                           placeholder="%"
                           required>
                </div>

                <div class="col-md-4">
                    <div class="mb-3">
                        <div>
                            <label class="form-label"><b>Trạng thái</b></label>
                            <i class="fas fa-toggle-on"></i>
                        </div>
                        <div class="form-check-inline">
                            <input class="form-check-input" type="radio" name="status" id="active" value="1"
                            <c:if test="${product.status == 1}">
                                   checked
                            </c:if>
                            >
                            <label class="form-check-label" for="active">Còn bán</label>
                        </div>
                        <div class="form-check-inline">
                            <input class="form-check-input" type="radio" name="status" id="inactive" value="0"
                            <c:if test="${product.status == 0}">
                                   checked
                            </c:if>
                            >
                            <label class="form-check-label" for="inactive">Tạm ngưng</label>
                        </div>
                    </div>
                </div>

                <!-- Mô tả và Hình ảnh -->
                <div class="row mb-3">
                    <div class="col-md-4">
                        <label class="form-label"><b>Mô tả</b></label>
                        <textarea class="form-control" id="description" name="description" rows="7"
                                  placeholder="Mô tả..."></textarea>
                    </div>

                    <div class="col-md-4">
                        <label for="image" class="form-label"><b>Hình ảnh</b></label>
                        <i class="fas fa-image"></i>
                        <div class="file-upload-wrapper">
                            <input id="image" name="image" type="file" class="file-upload-input"
                                   data-mdb-multiple="true"
                                   data-mdb-file-upload="file-upload"/>
                        </div>
                    </div>
                </div>

                <!-- Kích thước và Giá -->
                <div class="row">
                    <div class="col-md-8">
                        <label class="form-label"><b>Option</b></label>
                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col">Kích Thước</th>
                                <th scope="col">Giá tiền cộng thêm</th>
                                <th scope="col"></th>
                            </tr>
                            </thead>
                            <tbody id="sizeTableBody">
                            <!-- Dòng mẫu, có thể ẩn hoặc xóa nếu không cần -->
                            <c:choose>
                                <c:when test="${not empty product.productVariants}">
                                    <c:forEach items="${product.productVariants}" var="productVariant">
                                        <tr class="size-row">
                                            <td>
                                                <input type="text" class="form-control" name="size[]"
                                                       value="${productVariant.size}" placeholder="Nhập kích thước..."
                                                       required>
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" name="price[]"
                                                       value="${not empty productVariant ? productVariant.pricePlus : ''}"
                                                       placeholder="VND..." required>
                                            </td>
                                            <td>
                                                <button type="button" class="btn btn-danger"
                                                        onclick="removeSizeRow(this)">
                                                    Xóa
                                                </button>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </c:when>
                                <c:otherwise>
                                    <!-- Điều kiện else -->
                                    <tr class="size-row">
                                        <td>
                                            <input type="text" class="form-control" name="size[]"
                                                   placeholder="Nhập kích thước..." required>
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" name="price[]"
                                                   placeholder="VND..." required>
                                        </td>
                                        <td>
                                            <button type="button" class="btn btn-danger" onclick="removeSizeRow(this)">
                                                Xóa
                                            </button>
                                        </td>
                                    </tr>
                                </c:otherwise>
                            </c:choose>
                            <!-- ... Các dòng khác sẽ được thêm thông qua JavaScript ... -->
                            </tbody>
                        </table>
                        <div class="row mt-3">
                            <div class="col-md-8">
                                <button type="button" class="btn btn-success" onclick="addSizeRow()">Thêm Kích Thước
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Nút Submit -->
            <button type="button" class="btn btn-primary" id="addOrUpdate">
                <c:if test="${product.id != null}">
                    Cập nhật
                </c:if>
                <c:if test="${product.id == null}">
                    Thêm mới
                </c:if>
            </button>

            <input type="hidden" name="id" id="id" value="${product.id}"/>
            <input type="hidden" name="user" id="user" value="${product}"/>

        </form>
    </div>
</main>
<!--Main layout-->

<!--Footer-->
<footer></footer>
<!--Footer-->
<!-- End your project here-->
</body>

<!-- MDB ESSENTIAL -->
<script src="<c:url value="/views/template/assets/js/jquery-2.1.0.min.js"/> "></script>
<script type="text/javascript" src="<c:url value="/views/template/mdb/js/mdb.min.js"/> "></script>
<script type="text/javascript" src="<c:url value="/views/template/mdb/plugins/js/all.min.js"/> "></script>
<!-- Custom scripts -->
<script type="text/javascript" src="<c:url value="/views/admin/assets/js/home.js"/> "></script>
<!-- ... Các phần form khác ... -->

<script>
    // JavaScript để thêm và xóa dòng cho kích thước
    function addSizeRow() {
        const sizeTableBody = document.getElementById("sizeTableBody");
        const newRow = document.querySelector(".size-row").cloneNode(true);
        sizeTableBody.appendChild(newRow);
    }

    function removeSizeRow(button) {
        const sizeTableBody = document.getElementById("sizeTableBody");
        const row = button.parentNode.parentNode;
        sizeTableBody.removeChild(row);
    }
</script>
<script>
    $('#addOrUpdate').click(function (e) {
        e.preventDefault();
        var data = {};
        var productId = $('#id').val();
        var formData = $('#formSubmit').serializeArray();
        $.each(formData, function (index, v) {
            data["" + v.name + ""] = v.value;
        });
        console.log(data);
        if (productId === "") {
            delete data.id;
            addProduct(data);
        } else {
            updateProduct(data);
        }
    });

    function addProduct(data) {
        var formData = new FormData($("#formSubmit")[0]);
        $.ajax({
            type: "POST",
            url: "/api/admin/product",
            data: formData,
            processData: false,
            contentType: false,
            dataType: 'json',
            success: function (data) {
                console.log("SUCCESS : ", data);
                alert("Thêm mới thành công");
                window.location.href = "/admin/product-management";
            },
            error: function (e) {
                console.log("ERROR : ", e);
                alert("Thêm mới thất bại");
            }
        })
    }

    function updateProduct(data) {
        var formData = new FormData($("#formSubmit")[0]);
        $.ajax({
            type: "PUT",
            url: "/api/admin/product",
            data: formData,
            processData: false,
            contentType: false,
            success: function (data) {
                alert("Cập nhật thành công");
                window.location.href = "/admin/product-management";
            },
            error: function (e) {
                console.log("ERROR : ", e);
                alert("Cập nhật thất bại");
            }
        })
    }
</script>
</html>
