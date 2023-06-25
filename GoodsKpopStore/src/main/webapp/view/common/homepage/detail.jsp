<%-- 
    Document   : detail
    Created on : Jun 21, 2023, 8:10:12 AM
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
        <nav class="headerNav_section detail_page">
            <a href="/" class="logo"><span>QC</span>Select</a>
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

            <div class="product_detail_wrapper">
                <img src="/images/hot_1.jpg" alt="product_img">
                <div class="product_infor">
                    <span class="product_cate">Music</span>
                    <h1>WINNER 2022 CONCERT [THE CIRCLE] KiT VIDEO</h1>
                    <span class="product_price">310.000</span>
                    <input type="number" min="1" max="99" value=1>
                    <div class="product_action">
                        <button>Add Cart</button>
                        <button>Buy</button>
                    </div>
                </div>
            </div>

        </main>

    </body>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>
