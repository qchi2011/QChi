<%-- 
    Document   : cart
    Created on : Jul 2, 2023, 9:51:58 AM
    Author     : Admin
--%>


<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <meta charset="UTF-8">

        <title>QC SELECT | QC'S PICK!</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"rel="stylesheet">
        <script src="https://kit.fontawesome.com/65d7426ab6.js" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css2?family=Anuphan:wght@500;600&family=Dela+Gothic+One&family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Black+Ops+One&display=swap" rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/web.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/elegant-icons.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/magnific-popup.css" type="text/css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    </head>

    <body>

        <!--Header-->
        <jsp:include page="../../common/homepage/header.jsp"></jsp:include>

            <!-- Shopping Cart -->
            <section class="shopping-cart spad">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="shopping__cart__table">
                                <table>
                                    <thead>
                                        <tr>
                                            <th style="padding-right: 20px">No</th>
                                            <th style="padding-right: 70px">Product</th>
                                            <th style="padding-right: 40px">Price</th>
                                            <th>Quantity</th>
                                            <th>Total</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${sessionScope.cart}" var="orderDetails" varStatus="status">
                                        <tr>
                                            <fmt:setLocale value = "en_US"/>
                                            <th scope="row">${status.index + 1}</th>
                                            <!--Image-->
                                            <td class="product__cart__item">
                                                <div class="product__cart__item__pic">
                                                    <img src="${orderDetails.value.product.image}" 
                                                         width = "100" height = "100" alt="alt"/> 
                                               <!--Name-->
                                                </div>
                                                <h6 class="product__cart__item__text">${orderDetails.value.product.name}</h6>
                                            </td>  
                                            <!--Price-->
                                            <td class="product__cart__item__text">
                                                <h5>${String.format("%.2f", orderDetails.value.product.price)}$</h5>
                                            </td>
                                            <!--Quantity-->
                                            <td class="quantity__item">
                                                <form action="order-update" method ="GET">
                                                    <div class="quantity">
                                                        <input type="hidden"
                                                               name="productID" 
                                                               value="${orderDetails.value.product.id}" />
                                                        <div class="pro-qty-2">
                                                            <input onchange="this.form.submit()" 
                                                                   type="number"
                                                                   min ="1"
                                                                   name="quantity"
                                                                   value="${orderDetails.value.quantity}">
                                                        </div>
                                                    </div>
                                                </form>    
                                            </td>
                                            <!--Amount-->
                                            <td class="cart__price">${String.format("%.2f", orderDetails.value.product.price * orderDetails.value.quantity)}$</td>
                                            <td class="cart__close">
                                                <a href="order-delete?productID=${orderDetails.key}">
                                                    <i class="fa fa-close"></i>
                                                </a> 
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="continue__btn">
                                    <a href="${pageContext.request.contextPath}/home">Continue Shopping</a>
                                </div>
                            </div>
                            <!--                            <div class="col-lg-6 col-md-6 col-sm-6">
                                                            <div class="continue__btn update__btn">
                                                                <a href="#"> Update cart</a>
                                                            </div>
                                                        </div>-->
                        </div>
                    </div>
                    <div class="col-lg-4">

                        <div class="cart__total">
                            <h6>Cart total</h6>
                            <ul>
                                <!--<li>Subtotal <span>$ 169.50</span></li>-->
                                <li>Total <span>   <fmt:formatNumber type="currency"
                                                  value="${requestScope.totalMoney}"
                                                  maxFractionDigits="2">
                                        </fmt:formatNumber>
                                    </span></li>
                            </ul>
                            <a href="./checkout.jsp" class="primary-btn">Proceed to checkout</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Shopping Cart -->

        <!--Footer-->
        <jsp:include page="../../common/homepage/footer.jsp"></jsp:include>

            <!-- Js -->
            <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery.nice-select.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery.nicescroll.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery.countdown.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery.slicknav.js"></script>
        <script src="${pageContext.request.contextPath}/js/mixitup.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/main.js"></script>
    </body>

</html>
