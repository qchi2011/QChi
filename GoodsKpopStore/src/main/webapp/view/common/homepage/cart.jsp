<%-- 
    Document   : cart
    Created on : Jul 2, 2023, 9:51:58 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
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

        <!-- Breadcrumb -->
        <section class="breadcrumb-option">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="breadcrumb__text">
                            <h4>Shopping Cart</h4>
                            <div class="breadcrumb__links">
                                <a href="home">Home</a>
                                <span>Shopping Cart</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb -->

        <!-- Shopping Cart -->
        <section class="shopping-cart spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="shopping__cart__table">
                            <table>
                                <thead>
                                    <tr>
                                        <th>Product</th>
                                        <th>Quantity</th>
                                        <th>Total</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="product__cart__item">
                                            <div class="product__cart__item__pic">
                                                <img src="https://cafe24img.poxo.com/ygnext/web/product/tiny/202305/011d1800b45ab66926df294668259bf3.png" alt="">
                                            </div>
                                            <div class="product__cart__item__text">
                                                <h6>BLACKPINK THE GAME COUPON CARD</h6>
                                                <h5>21.5$</h5>
                                            </div>
                                        </td>
                                        <td class="quantity__item">
                                            <div class="quantity">
                                                <div class="pro-qty-2">
                                                    <input type="text" value="1">
                                                </div>
                                            </div>
                                        </td>
                                        <td class="cart__price">$ 30.00</td>
                                        <td class="cart__close"><i class="fa fa-close"></i></td>
                                    </tr>
                                    <tr>
                                        <td class="product__cart__item">
                                            <div class="product__cart__item__pic">
                                                <img src="img/shopping-cart/cart-2.jpg" alt="">
                                            </div>
                                            <div class="product__cart__item__text">
                                                <h6>Diagonal Textured Cap</h6>
                                                <h5>$98.49</h5>
                                            </div>
                                        </td>
                                        <td class="quantity__item">
                                            <div class="quantity">
                                                <div class="pro-qty-2">
                                                    <input type="text" value="1">
                                                </div>
                                            </div>
                                        </td>
                                        <td class="cart__price">$ 32.50</td>
                                        <td class="cart__close"><i class="fa fa-close"></i></td>
                                    </tr>
                                    <tr>
                                        <td class="product__cart__item">
                                            <div class="product__cart__item__pic">
                                                <img src="img/shopping-cart/cart-3.jpg" alt="">
                                            </div>
                                            <div class="product__cart__item__text">
                                                <h6>Basic Flowing Scarf</h6>
                                                <h5>$98.49</h5>
                                            </div>
                                        </td>
                                        <td class="quantity__item">
                                            <div class="quantity">
                                                <div class="pro-qty-2">
                                                    <input type="text" value="1">
                                                </div>
                                            </div>
                                        </td>
                                        <td class="cart__price">$ 47.00</td>
                                        <td class="cart__close"><i class="fa fa-close"></i></td>
                                    </tr>
                                    <tr>
                                        <td class="product__cart__item">
                                            <div class="product__cart__item__pic">
                                                <img src="img/shopping-cart/cart-4.jpg" alt="">
                                            </div>
                                            <div class="product__cart__item__text">
                                                <h6>Basic Flowing Scarf</h6>
                                                <h5>$98.49</h5>
                                            </div>
                                        </td>
                                        <td class="quantity__item">
                                            <div class="quantity">
                                                <div class="pro-qty-2">
                                                    <input type="text" value="1">
                                                </div>
                                            </div>
                                        </td>
                                        <td class="cart__price">$ 30.00</td>
                                        <td class="cart__close"><i class="fa fa-close"></i></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="continue__btn">
                                    <a href="./shop.jsp">Continue Shopping</a>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="continue__btn update__btn">
                                    <a href="#"> Update cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="cart__discount">
                            <h6>Discount codes</h6>
                            <form action="#">
                                <input type="text" placeholder="Coupon code">
                                <button type="submit">Apply</button>
                            </form>
                        </div>
                        <div class="cart__total">
                            <h6>Cart total</h6>
                            <ul>
                                <li>Subtotal <span>$ 169.50</span></li>
                                <li>Total <span>$ 169.50</span></li>
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
