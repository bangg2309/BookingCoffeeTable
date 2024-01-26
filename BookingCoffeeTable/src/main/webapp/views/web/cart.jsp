<%@include file="/common/taglib.jsp" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>

    <title>Bill</title>

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="<c:url value="/views/template/assets/css/templatemo-klassy-cafe.css"/> ">
    <!-- MDB ESSENTIAL -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/css/mdb.min.css"/> "/>
    <!-- MDB PLUGINS -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/plugins/css/all.min.css"/> "/>
    <!-- Custom css-->
    <link rel="stylesheet" href="<c:url value="/views/template/custom/css/reservation.css"/> ">
    <link rel="stylesheet" href="<c:url value="/views/template/custom/css/bill.css"/> ">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/sweetalert2@11">

</head>

<body>
<!-- ***** Header Area Start ***** -->
<%@ include file="layout/header.jsp" %>
<!-- ***** Header Area End ***** -->

<main class="mb-6" style="padding-top: 20px; margin-top: 80px">

    <div class="container ">
        <!-- Section: Cart -->
        <section class="">
            <div class="row gx-lg-5">
                <div class="col-lg-8 mb-4 mb-md-0 ">
                    <!-- Section: Product list -->
                    <section class="mb-5 product_list" data-mdb-perfect-scrollbar="true"
                             data-mdb-suppress-scroll-x="true"
                             style="position: sticky; height: 600px">

                        <c:if test="${ empty cart.products}">
                            <p>Chưa có sản phẩm nào</p>
                        </c:if>
                        <c:forEach items="${cart.products}" var="entry">
                            <div class="row border-bottom mb-4 product_item">
                                <div class="col-md-3 mb-4 mb-md-0 mt-2">
                                    <div class="bg-image ripple rounded-5 mb-4 overflow-hidden d-block"
                                         data-ripple-color="light">
                                        <img
                                                src="<c:url value="${entry.value.images[0].url}"/>"
                                                class="w-100"
                                                alt=""
                                        />
                                        <a href="#!">
                                            <div class="hover-overlay">
                                                <div class="mask"
                                                     style="background-color: hsla(0, 0%, 98.4%, 0.2)"></div>
                                            </div>
                                        </a>
                                    </div>
                                </div>

                                <div class="col-md-4 mb-4 mb-md-0">
                                    <p class="fw-bold">${entry.value.name}</p>
                                    <div class="row">
                                        <div class="form-outline mb-4 col-md-4 mr-2" style="width: 80px">
                                            <input type="number" id="quantity_${entry.value.id}_${entry.value.size}"
                                                   class="form-control quantity"
                                                   value="${entry.value.quantity}"
                                                   onchange="updateQuantity('${entry.value.id}_${entry.value.size}')"
                                                   min="1"/>
                                            <label class="form-label" for="${entry.value.id}"
                                            >Số Lượng</label
                                            >
                                        </div>
                                        <div class=" mb-4 col-md-4" style="width: 110px">
                                            <select class="select" id="size_${entry.value.id}_${entry.value.size}"
                                                    onchange="updateSize('${entry.value.id}_${entry.value.size}')">
                                                <c:forEach items="${entry.value.productVariants}" var="variant">
                                                    <c:if test="${variant.size == entry.value.size}">
                                                        <option value="${variant.size}"
                                                                selected>${variant.size}</option>
                                                    </c:if>
                                                    <c:if test="${variant.size != entry.value.size}">
                                                        <option value="${variant.size}">${variant.size}</option>
                                                    </c:if>
                                                </c:forEach>
                                            </select>
                                            <label class="form-label select-label">Size</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-5 mb-4 mb-md-0">

                                    <h5 class="mb-2">
                                        <c:if test="${entry.value.discount != 0}">
                                            <s class="text-muted me-2 small align-middle price"><fmt:formatNumber
                                                    value="${entry.value.totalPrice}" type="currency"
                                                    currencyCode="VND"/></s>
                                            <span class="align-middle"><fmt:formatNumber
                                                    value="${entry.value.saleTotalPrice}" type="currency"
                                                    currencyCode="VND"/></span>
                                        </c:if>
                                        <c:if test="${entry.value.discount == 0}">
                                            <span class="align-middle"><fmt:formatNumber
                                                    value="${entry.value.totalPrice}" type="currency"
                                                    currencyCode="VND"/></span>
                                        </c:if>
                                    </h5>
                                    <c:if test="${entry.value.discount !=0}">
                                        <p class="text-danger"><small>Khuyến mãi ${entry.value.discount}%</small></p>
                                    </c:if>


                                    <p class="mb-4">
                                        <a href="<c:url value="/remove-cart?productKey=${entry.value.id}_${entry.value.size}"/> "
                                           class="text-muted pe-3"
                                        ><small
                                        ><i class="fas fa-trash me-2"></i>Xóa</small
                                        ></a
                                        >
                                    </p>
                                </div>
                            </div>
                        </c:forEach>

                    </section>
                    <!-- Section: Product list -->

                    <!-- Section: Details -->
                    <section class="">
                        <div>
                            <h5 class="mb-4">
                                Chúng tôi đồng ý thanh toán</h5>
                            <img
                                    class="mr-2"
                                    width="45px"
                                    src="https://mdbootstrap.com/wp-content/plugins/woocommerce-gateway-stripe/assets/images/visa.svg"
                                    alt="Visa"
                            />
                            <img
                                    class="mr-2"
                                    width="45px"
                                    src="https://mdbootstrap.com/wp-content/plugins/woocommerce-gateway-stripe/assets/images/mastercard.svg"
                                    alt="Mastercard"
                            />
                            <img
                                    class="mr-2"
                                    width="45px"
                                    src="https://mdbootstrap.com/wp-content/plugins/woocommerce/includes/gateways/paypal/assets/images/paypal.png"
                                    alt="PayPal acceptance mark"
                            />
                        </div>
                    </section>
                    <!-- Section: Details -->
                </div>

                <div class="col-lg-4 mb-4 mb-md-0">
                    <!-- Section: Summary -->
                    <section class="shadow-4 p-4 rounded-5 ">
                        <h5 class="mb-2">
                            Thông tin về bàn của bạn</h5>

                        <div class="d-flex justify-content-between ">
                            <div>
                                <span>Số bàn: </span>
                                <span>${cart.table.tableNum}</span>
                            </div>
                        </div>
                        <div class="d-flex justify-content-between ">
                            <div>
                                <span>Số ghế: </span>
                                <span>${cart.table.seatCount}</span>
                            </div>
                        </div>
                        <div class="d-flex justify-content-between">
                            <div>
                                <span>Vị trí: </span>
                                <span>${cart.table.location}</span>
                            </div>
                        </div>
                        <div class="d-flex justify-content-between">
                            <div>
                                <span>Khu vực: </span>
                                <span>${cart.table.area.name}</span>
                            </div>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <fmt:parseDate var="parsedstartTime" value="${cart.startTime}"
                                           pattern="yyyy-MM-dd HH:mm:ss"/>
                            <fmt:parseDate var="parsedendTime" value="${cart.endTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                            <span>Thời gian: </span>
                            <span><fmt:formatDate value="${parsedstartTime}"
                                                  pattern="dd-MM-yyyy HH:mm:ss"/> - <fmt:formatDate
                                    value="${parsedendTime}" pattern="HH:mm:ss"/></span>
                        </div>
                        <c:if test="${cart.table != null}">
                            <a class="btn btn-danger btn-rounded w-50 mt-2"
                               href="${pageContext.request.contextPath}/table"
                               style="color: whitesmoke">Thay đổi bàn</a>
                        </c:if>
                        <c:if test="${cart.table == null}">
                            <a class="btn btn-info btn-rounded w-50 mt-2"
                               href="${pageContext.request.contextPath}/table"
                               style="color: whitesmoke">Chọn bàn</a>
                        </c:if>


                        <hr class="my-4"/>
                        <h5 class="mb-2">
                            Hóa đơn của bạn</h5>

                        <div class="d-flex justify-content-between mb-3">
                            <span>Tiền tại thời </span>
                            <span id="tien-tam-thoi">
                                <fmt:formatNumber value="${cart.totalPrice}" type="currency" currencyCode="VND"/>
                            </span>
                        </div>
                        <div class="d-flex justify-content-between">
                            <span>Khuyến mãi: </span>
                            <span>0 đ</span>
                        </div>
                        <hr class="my-4"/>
                        <div class="d-flex justify-content-between fw-bold mb-5">
                            <span> Tổng số tiền (bao gồm VAT)</span>
                            <span class="tong-tien">
                                <fmt:formatNumber value="${cart.totalPrice}" type="currency" currencyCode="VND"/>
                            </span>
                        </div>
                        <a class="btn btn-primary btn-rounded w-100" href="/reservation"
                           style="color: white">Thanh toán</a>
                    </section>
                </div>
            </div>
        </section>
        <!-- Section: Cart -->
    </div>

</main>

<!-- ***** Footer Start ***** -->
<%@ include file="layout/footer.jsp" %>
<!-- ***** Footer End ***** -->
<!-- jQuery -->
<script src="<c:url value="/views/template/assets/js/jquery-2.1.0.min.js"/>"></script>

<script type="text/javascript" src="<c:url value="/views/template/mdb/js/mdb.min.js"/>"></script>
<!-- MDB PLUGINS -->
<script type="text/javascript" src="<c:url value="/views/template/mdb/plugins/js/all.min.js"/>"></script>
<script src="<c:url value="/views/template/mdb/js/mdb.umd.min.js"/>"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>

    function updateQuantity(productKey) {
        var quantityInput = document.getElementById("quantity_" + productKey);
        var newQuantity = parseInt(quantityInput.value, 10);
        fetch("update-quantity?productKey=" + productKey + "&quantity=" + newQuantity, {
            method: "GET",
        })
            .then(response => {
                if (!response.ok) {
                    throw new Error("Network response was not ok");
                }
                return response.text();
            })
            .then(data => {
                window.location.reload();
                console.log("Update quantity is success!");
            })
            .catch(error => {
                console.error("Error during update quantity:", error);
            });
    }

    function updateSize(productKey) {
        var sizeInput = document.getElementById("size_" + productKey);
        var newSize = sizeInput.value;
        fetch("update-size?productKey=" + productKey + "&size=" + newSize, {
            method: "GET",
        })
            .then(response => {
                if (!response.ok) {
                    throw new Error("Network response was not ok");
                }
                return response.text();
            })
            .then(data => {
                window.location.reload();
                console.log("Update size is success!");
            })
            .catch(error => {
                console.error("Error during update size:", error);
            });
    }

    function getErrorAlert() {
        Swal.fire({
            icon: "error",
            title: "Oops...",
            text: "${cartMessage}",
        });
    }

    <c:if test="${not empty cartMessage}">
    getErrorAlert();
    </c:if>
</script>
</body>
</html>