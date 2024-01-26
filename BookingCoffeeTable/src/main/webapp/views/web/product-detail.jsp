<%@include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <title>Material Design for Bootstrap</title>
    <!-- MDB icon -->
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
    <!-- Google Fonts Roboto -->
    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/views/template/assets/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/views/template/assets/css/templatemo-klassy-cafe.css"/>">

    <!-- MDB ESSENTIAL -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/css/mdb.min.css"/>"/>
    <!-- MDB PLUGINS -->
    <link rel="stylesheet" href="<c:url value="/views/template/mdb/plugins/css/all.min.css"/>"/>
    <!-- Custom styles -->
    <style></style>
    <link rel="stylesheet" href="<c:url value="/views/template/custom/css/productDetail.css"/>">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/sweetalert2@11">
</head>

<body>
<!-- Start your project here-->

<!-- ***** Header Area Start ***** -->
<%@ include file="layout/header.jsp" %>
<!-- ***** Header Area End ***** -->

<!--Main layout-->
<main class="mb-6 main_content" style="margin-top: 100px">
    <div class="container">
        <!-- Section: Product details -->
        <section class="mb-9">
            <div class="row gx-lg-5">
                <div class="col-md-6 mb-4 mb-md-0 main_contain">
                    <!--Carousel Wrapper-->
                    <div class="ecommerce-gallery">
                        <div class="mb-1 lightbox">
                            <img
                                    src="<c:url value="${product.images[0].url}"
                                    />" alt="Table full of spices"
                                    class="ecommerce-gallery-main-img active w-100"
                            />
                        </div>
                        <div class=" multi-carousel" data-mdb-breakpoint="false"
                             data-mdb-items="${fn:length(product.images)}">
                            <div class="multi-carousel-inner">
                                <c:forEach items="${product.images}" var="image" varStatus="loop">
                                    <div class="multi-carousel-item  ${loop.first ? 'active' : ''} ">
                                        <img
                                                src="<c:url value="${image.url}"
                                                />" data-mdb-img="<c:url value="${image.url}"
                                                />" alt="Table full of spices"
                                                class=" ${loop.first ? 'active' : ''} w-100"
                                        />
                                    </div>
                                </c:forEach>
                            </div>
                            <button
                                    class="carousel-control-prev"
                                    tabindex="0"
                                    type="button"
                                    data-mdb-slide="prev"
                            >
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            </button>
                            <button
                                    class="carousel-control-next"
                                    tabindex="0"
                                    type="button"
                                    data-mdb-slide="next"
                            >
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            </button>
                        </div>
                    </div>
                    <!--/.Carousel Wrapper-->
                </div>
                <div class="col-md-6 mb-4 mb-md-0">
                    <!-- Details -->
                    <div>
                        <h1 class="fw-bold mb-3 h5">${product.name}</h1>
                        <a href="" class="text-muted mb-3">
                            <p class="mb-2 text-uppercase small">${product.category.name}</p>
                        </a>
                        <div class="d-flex review_color">

                            <ul class="rating mb-3 me-2" data-mdb-toggle="rating" data-mdb-readonly="true"
                                data-mdb-value="${product.averageRating}">
                                <li>
                                    <i
                                            class="far fa-star color_far fa-sm ps-0"
                                            title="Bad"
                                    ></i>
                                </li>
                                <li>
                                    <i
                                            class="far fa-star color_far fa-sm"
                                            title="Poor"
                                    ></i>
                                </li>
                                <li>
                                    <i class="far fa-star color_far fa-sm" title="OK"></i>
                                </li>
                                <li>
                                    <i
                                            class="far fa-star color_far fa-sm"
                                            title="Good"
                                    ></i>
                                </li>
                                <li>
                                    <i
                                            class="far fa-star color_far fa-sm"
                                            title="Excellent"
                                    ></i>
                                </li>
                            </ul>
                            <a href=""><strong
                                    class="me-2">${product.averageRating}/5</strong>(${fn:length(product.reviews)}
                                reviews)</a>
                        </div>

                        <c:choose>
                            <c:when test="${product.discount != 0}">
                                <h5 class="mb-3">
                                    <s class="text-muted me-2 small align-middle" id="defaultPrice"><fmt:formatNumber
                                            value="${product.price}" type="currency"
                                            currencyCode="VND"/> </s
                                    ><span
                                        class="align-middle" id="salePrice"><fmt:formatNumber
                                        value="${product.salePrice}" type="currency"
                                        currencyCode="VND"/></span>
                                </h5>
                            </c:when>
                            <c:otherwise>
                                <h5 class="mb-3">
                                                    <span class="align-middle" id="price"><fmt:formatNumber
                                                            value="${product.price}" type="currency"
                                                            currencyCode="VND"/></span>
                                </h5>
                            </c:otherwise>
                        </c:choose>
                        <form action="">
                            <div class="row">
                                <!-- Quantity -->
                                <div class="col-md-6 mb-4">
                                    <div class="form-outline">
                                        <input id="quantity"
                                               type="number"
                                               class="form-control"
                                               value="1"
                                               min="1"
                                        />
                                        <label class="form-label" for="quantity"
                                        >Số lượng</label
                                        >
                                    </div>
                                </div>
                                <!-- Size -->
                                <div class="col-md-6 mb-4">
                                    <select class="select" id="size" onchange="updatePrice()">
                                        <c:forEach items="${product.productVariants}" var="productVariant">
                                            <option value="${productVariant.size}">${productVariant.size}</option>
                                        </c:forEach>
                                    </select>
                                    <label class="form-label select-label">Size</label>
                                </div>
                            </div>
                            <button onclick="addToCart('${product.id}', '${product.size}')"
                                    type="button"
                                    class="btn btn-primary btn-rounded me-2 color_btn"
                            >
                                <i class="fas fa-cart-plus me-2"></i>Thêm vào bàn
                            </button>
                        </form>
                        <hr class="my-5"/>
                        <p class="text-muted">
                            ${product.description}
                        </p>

                    </div>
                    <!-- Details -->
                </div>
            </div>
            <!-- Gallery -->


        </section>
        <!-- Section: Product details -->

        <!-- Section: Reviews -->
        <section class="text-center">
            <p class="my-4"><strong>${fn:length(product.reviews)} lượt đánh giá <em>${product.name}</em></strong></p>

            <div class="row">
                <div class="col-md-7 mb-4">
                    <!-- Single review -->
                    <c:forEach items="${product.reviews}" var="review">
                        <div class="shadow-4 p-4 rounded-5 mb-5">
                            <p class="mb-3 fw-bold">${review.userName}</p>
                            <ul
                                    class="rating mb-3 d-flex justify-content-center"
                                    data-mdb-toggle="rating"
                                    data-mdb-readonly="true"
                                    data-mdb-value="${review.starRate}"
                            >
                                <li>
                                    <i class="far fa-star color_far fa-sm"></i>
                                </li>
                                <li>
                                    <i class="far fa-star color_far fa-sm"></i>
                                </li>
                                <li>
                                    <i class="far fa-star color_far fa-sm"></i>
                                </li>
                                <li>
                                    <i class="far fa-star color_far fa-sm"></i>
                                </li>
                                <li>
                                    <i class="far fa-star color_far fa-sm"></i>
                                </li>
                            </ul>
                            <p class="mb-0">
                                <i class="fas fa-quote-left pe-2"></i>
                                    ${review.content}
                            </p>
                        </div>
                    </c:forEach>
                    <!-- Single review -->
                </div>

                <div class="col-md-5 mb-4">
                    <form action="${pageContext.request.contextPath}/product-detail" method="post">
                        <p>Đánh giá</p>

                        <ul
                                class="rating d-flex justify-content-center mb-4" id="rating"
                                data-mdb-toggle="rating"
                                data-mdb-value="3"
                                data-mdb-rating-init

                        >
                            <li>
                                <i class="far fa-star color_far fa-sm" title="Bad"></i>
                            </li>
                            <li>
                                <i class="far fa-star color_far fa-sm" title="Poor"></i>
                            </li>
                            <li>
                                <i class="far fa-star color_far fa-sm" title="OK"></i>
                            </li>
                            <li>
                                <i class="far fa-star color_far fa-sm" title="Good"></i>
                            </li>
                            <li>
                                <i
                                        class="far fa-star color_far fa-sm"
                                        title="Excellent"
                                ></i>
                            </li>
                        </ul>

                        <!-- Textarea -->
                        <div class="form-outline mb-4">
              <textarea
                      class="form-control"
                      id="textAreaExample"
                      rows="4" name="content"
              ></textarea>
                            <label class="form-label" for="textAreaExample"
                            >Your review</label
                            >
                        </div>
                        <!-- Submit button -->
                        <button type="submit" class="btn btn-primary mb-4 color_btn">
                            Submit
                        </button>
                        <input type="hidden" name="productId" value="${product.id}">
                        <input type="hidden" id="starRate" name="starRate" value="3">
                    </form>
                </div>
            </div>
        </section>
        <!-- Section: Reviews -->

        <c:forEach var="variant" items="${product.productVariants}">
            <input type="hidden" name="${variant.size}" id="${variant.size}" value="${variant.pricePlus}">
        </c:forEach>
    </div>
</main>
<!--Main layout-->


<!-- ***** Footer Start ***** -->
<%@ include file="layout/footer.jsp" %>
<!-- ***** Footer End ***** -->


<!-- MDB ESSENTIAL -->
<script src="<c:url value="/views/template/assets/js/jquery-2.1.0.min.js"/> "></script>
<script type="text/javascript" src="<c:url value="/views/template/mdb/js/mdb.min.js"/>"></script>
<script src="<c:url value="/views/template/mdb/plugins/js/all.min.js"/>"></script>
<script src="<c:url value="/views/template/mdb/js/mdb.umd.min.js"/>"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<!-- Custom scripts -->
<script>

    // Xử lý đánh giá sao
    const ratingElement = document.querySelector('#rating');
    const ratingInput = document.getElementById('starRate');
    ratingElement.addEventListener('scoreSelect.mdb.rating', function (event) {
        const selectedValue = event.value;
        console.log('Selected value: ', selectedValue);
        ratingInput.value = selectedValue;
    });


    // Xử lý thêm vào giỏ hàng
    function addToCart() {
        let id = '${product.id}';
        let size = $('#size').val();
        let quantity = $('#quantity').val();
        $.ajax({
            url: '/add-cart?id=' + id + '&size=' + size + '&quantity=' + quantity,
            type: 'GET',
            success: function (data) {
                Swal.fire({
                    position: "center",
                    icon: "success",
                    title: "Thêm sản phẩm thành công!",
                    fontsize: 20,
                    showConfirmButton: false,
                    width: 300,
                    height: 50,
                    timer: 1000
                });
            },
            error: function (data) {
                Swal.fire({
                    position: "center",
                    icon: "error",
                    title: "Thêm sản phẩm thất bại!",
                    fontsize: 20,
                    showConfirmButton: false,
                    width: 300,
                    height: 50,
                    timer: 1000
                });
            }
        });
    }

    function updatePrice() {
        let size = $('#size').val();
        let pricePlus = parseFloat($('#' + size).val());
        let price = parseFloat(${product.price});
        let salePrice = parseFloat(${product.salePrice});

        let newPrice = pricePlus + price;
        $('#price').html(newPrice + 'đ');
        $('#defaultPrice').html(newPrice + 'đ');
        $('#salePrice').html((pricePlus + salePrice) + 'đ');
    }

</script>

</body>


</html>
