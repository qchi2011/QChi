<%-- 
    Document   : checkout
    Created on : Jun 26, 2023, 10:52:11 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
            <!-- Checkout Section Begin -->
            <section class="checkout spad">
                <div class="container">
                    <div class="checkout__form">
                        <form action="checkout" method="post">
                            <div class="row">
                                <div class="col-lg-7 col-md-6">  
                                    <h6 class="checkout__title">Billing Details</h6>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="checkout__input">
                                                <p>Name<span>*</span></p>
                                                <input type="text" value="${sessionScope.account.fullname}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="checkout__input">
                                        <p>Address<span>*</span></p>
                                        <input type="text" class="checkout__input__add" value="${sessionScope.account.address}">
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="checkout__input">
                                                <p>Phone<span>*</span></p>
                                                <input type="text" value="${sessionScope.account.phone}">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="checkout__input">
                                                <p>Email<span>*</span></p>
                                                <input type="text" value="${sessionScope.account.email}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="checkout__input">
                                        <p>Order notes</p>
                                        <input type="text" placeholder="Notes about your order, e.g. special notes for delivery." name="note">
                                    </div>
                                </div>
                                <div class="col-lg-5 col-md-6">
                                    <div class="checkout__order">
                                        <h4 class="order__title">Your order :</h4>
                                        <table>
                                            <thead class="checkout__order__products">
                                                <tr>
                                                    <th>No&nbsp;&nbsp;</th>
                                                    <th>Name</th>
                                                    <th>Price</th>
                                                    <th>Quantity&nbsp;&nbsp;</th>
                                                    <th>Amount</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${sessionScope.cart}" var="orderDetails" varStatus="status">
                                            <fmt:setLocale value = "en_US"/>
                                            <tr>
                                                <th scope="row" >${status.index + 1}</th>
                                                <!--Name-->
                                                <td class="product__cart__item">
                                                    <h6 class="product__cart__item__text">${orderDetails.value.product.name}</h6>
                                                </td>  
                                                <!--Price-->
                                                <td class="product__cart__item__text" style="text-align: center">
                                                    <h6>${String.format("%.2f", orderDetails.value.product.price)}$</h6>
                                                </td>
                                                <!--Quantity-->
                                                <td class="product__cart__item__text" style="text-align: center">
                                                    <h6>${orderDetails.value.quantity}</h6>
                                                </td>

                                                <!--Amount-->
                                                <td id="amount-cell" class="cart__price" style="text-align: center">${String.format("%.2f", orderDetails.value.product.price * orderDetails.value.quantity)}$</td>

                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>

                                    <ul class="checkout__total__all">
                                        <!--<li>Subtotal <span>$750.99</span></li>-->
                                        <li>Total <span id="totalMoney"></span></li>
                                    </ul>

                                    <button type="submit" class="site-btn">
                                        <a href="view/user/cart/success.jsp">
                                            PLACE ORDER
                                        </a>
                                        
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </section>
        <!-- Checkout Section End -->

        <!-- Js Plugins -->
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
    <script>
        window.addEventListener('DOMContentLoaded', function () {
            calculateTotalMoney();
        });

        function calculateTotalMoney() {
            var amountCells = document.querySelectorAll('#amount-cell');
            var totalMoney = 0;

            amountCells.forEach(function (cell) {
                var amountValue = parseFloat(cell.innerText);
                totalMoney += amountValue;
            });

            var totalMoneyElement = document.getElementById('totalMoney');
            totalMoneyElement.innerText = totalMoney.toFixed(2) + "$";
        }
    </script>
</html>
