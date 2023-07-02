<%-- 
    Document   : cart
    Created on : Jun 16, 2023, 2:38:46 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>

        <!-- Options -->
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Tab -->
        <title>QC SELECT | QC'S PICK!</title>

        <!-- CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
              crossorigin="anonymous">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/web.css">

        <!-- Icon -->
        <script src="https://kit.fontawesome.com/756da913d7.js" crossorigin="anonymous"></script>

        <!-- Font -->
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Raleway:wght@600&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Black+Ops+One&display=swap');
        </style>

    </head>
    <body>

        <!-- Header Section -->
        <nav class="headerNav_section cart_page">
            <a href="view/user/homepage/index.jsp" class="logo"><span>QC</span>Select</a>
            <div class="feature_wrapper">
                <input type="checkbox" hidden id="en_search">
                <form action="" method="POST">
                    <input type="text" placeholder="Looking for?">
                    <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
                </form>
                <label for="en_search" class="fa-solid fa-magnifying-glass"></label>
                <a class="fa-solid fa-cart-shopping" href="view/common/homepage/cart.jsp" ></a>
                <a class="fa-sharp fa-solid fa-user" href="view/common/homepage/login.jsp"></a>
            </div>
        </nav>

        <!-- Main Section -->
        <main>
            <section class="breadcrumb-option">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="breadcrumb__text">
                            <h4>Shopping Cart</h4>
                            <div class="breadcrumb__links">
                                <a href="./index.jsp">Home</a>
                                <a href="./shop.jsp">Shop</a>
                                <span>Shopping Cart</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Section End -->

        <!-- Shopping Cart Section Begin -->
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
                                                <img src="img/shopping-cart/cart-1.jpg" alt="">
                                            </div>
                                            <div class="product__cart__item__text">
                                                <h6>T-shirt Contrast Pocket</h6>
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
                                    <a href="#"><i class="fa fa-spinner"></i> Update cart</a>
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
            <!-- Cart Section -->
            <div class="cart_wrapper ">
                <h3>SHOPPING CART</h3>
                <div class="cart_empty">
                    <img src="/images/cart_empty.jpg" alt="cart_empty_img">
                    <a href="/">Go Shopping</a>
                </div>
                <div class="cart_have_list">
                    <form action="" method="POST">
                        <div class="cart_item">
                            <img src="/images/hot_1.jpg" alt="cart_item_img">
                            <span>WINNER 2022 CONCERT [THE CIRCLE] KiT VIDEO</span>
                            <input type="number" min="1" max="99" value ="1">
                            <span class="price">310.000</span>
                            <i class="fa-sharp fa-solid fa-trash"></i>
                        </div>
                        <div class="cart_item">
                            <img src="/images/hot_2.jpg" alt="cart_item_img">
                            <span>WINNER 2022 CONCERT [THE CIRCLE] KiT VIDEO</span>
                            <input type="number" min="1" max="99" value ="1">
                            <span class="price">310.000</span>
                            <i class="fa-sharp fa-solid fa-trash"></i>
                        </div>
                        <button type="submit">Select Buy</button>
                    </form>
                </div>
            </div>

        </main>

    </body>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>