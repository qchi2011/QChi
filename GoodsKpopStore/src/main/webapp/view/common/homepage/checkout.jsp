<%-- 
    Document   : checkout
    Created on : Jun 26, 2023, 10:52:11 AM
    Author     : Admin
--%>

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


            <!-- Checkout Section Begin -->
            <section class="checkout spad">
                <div class="container">
                    <div class="checkout__form">
                        <form action="#">
                            <div class="row">
                                <div class="col-lg-8 col-md-6">  
                                    <h6 class="checkout__title">Billing Details</h6>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="checkout__input">
                                                <p>Name<span>*</span></p>
                                                <input type="text">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="checkout__input">
                                        <p>Address<span>*</span></p>
                                        <input type="text" placeholder="Departerment, Street,..." class="checkout__input__add">
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="checkout__input">
                                                <p>Phone<span>*</span></p>
                                                <input type="text">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="checkout__input">
                                                <p>Email<span>*</span></p>
                                                <input type="text">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="checkout__input">
                                        <p>Account Password<span>*</span></p>
                                        <input type="text">
                                    </div>
                                    <div class="checkout__input__checkbox">
                                        <label for="diff-acc">
                                            Note about your order, e.g, special note for delivery
                                            <input type="checkbox" id="diff-acc">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                    <div class="checkout__input">
                                        <p>Order notes<span>*</span></p>
                                        <input type="text"
                                               placeholder="Notes about your order, e.g. special notes for delivery.">
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <div class="checkout__order">
                                        <h4 class="order__title">Your order</h4>
                                        <div class="checkout__order__products">Product <span>Total</span></div>
                                        <ul class="checkout__total__products">
                                            <li>01. Vanilla salted caramel <span>$ 300.0</span></li>
                                            <li>02. German chocolate <span>$ 170.0</span></li>
                                            <li>03. Sweet autumn <span>$ 170.0</span></li>
                                            <li>04. Cluten free mini dozen <span>$ 110.0</span></li>
                                        </ul>
                                        <ul class="checkout__total__all">
                                            <li>Subtotal <span>$750.99</span></li>
                                            <li>Total <span>$750.99</span></li>
                                        </ul>

                                        <div class="checkout__input__checkbox">
                                            <label for="payment">
                                                Check Payment
                                                <input type="checkbox" id="payment">
                                                <span class="checkmark"></span>
                                            </label>
                                        </div>
                                        <div class="checkout__input__checkbox">
                                            <label for="paypal">
                                                Paypal
                                                <input type="checkbox" id="paypal">
                                                <span class="checkmark"></span>
                                            </label>
                                        </div>
                                        <button type="submit" class="site-btn">PLACE ORDER</button>
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

</html>
