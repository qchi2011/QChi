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
        <nav class="headerNav_section">
            <a href="/" class="logo"><span>QC</span>Select</a>
            <div class="feature_wrapper">
                <input type="checkbox" hidden id="en_search">
                <form action="" method="POST">
                    <input type="text" placeholder="Looking for?">
                    <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
                </form>
                <label for="en_search" class="fa-solid fa-magnifying-glass"></label>
                <a href="/cart.html">
                    <i class="fa-solid fa-cart-shopping"></i>
                </a>
                <a href="/login.html">
                    <i class="fa-sharp fa-solid fa-user"></i>
                </a>
            </div>
        </nav>

    <!-- Main Section -->
        <main>

            <!-- Cart Section -->
                <div class="cart_wrapper">
                    <h3>Shopping Cart</h3>
                    <div class="cart_empty">
                        <img src="/images/cart_empty.jpg" alt="cart_empty_img">
                        <a href="/">Go Shopping</a>
                    </div>
                    <div class="cart_have_list">
                        <form action="" method="POST">
                            <div class="cart_item">
                                <img src="/images/hot_1.jpg" alt="cart_item_img">
                                <span>WINNER 2022 CONCERT [THE CIRCLE] KiT VIDEO</span>
                                <input type="number" min="1" max="99">
                                <span class="price">310.000</span>
                                <i class="fa-sharp fa-solid fa-trash"></i>
                            </div>
                            <div class="cart_item">
                                <img src="/images/hot_2.jpg" alt="cart_item_img">
                                <span>WINNER 2022 CONCERT [THE CIRCLE] KiT VIDEO</span>
                                <input type="number" min="1" max="99">
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
