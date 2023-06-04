<%-- 
    Document   : index
    Created on : Jun 3, 2023, 1:48:52 PM
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

        <!--bootstrap-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <script src="https://kit.fontawesome.com/65d7426ab6.js" crossorigin="anonymous"></script>

        <!-- CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
              crossorigin="anonymous">
        <link rel="stylesheet" href="../../../css/app.css">


        <!-- Icon -->
        <script src="https://kit.fontawesome.com/756da913d7.js" crossorigin="anonymous"></script>

        <!-- Font -->
        <link href="https://fonts.googleapis.com/css2?family=Anuphan:wght@500;600&family=Dela+Gothic+One&family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Raleway:wght@600&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Black+Ops+One&display=swap');
        </style>

    </head>
    <body>

        <!-- Header Section -->
        <jsp:include page="../../common/header.jsp"></jsp:include>
            <!-- Banner Section -->
            <div class="banner_section">
                <div id="banner_carousel" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#banner_carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#banner_carousel" data-slide-to="1"></li>
                        <li data-target="#banner_carousel" data-slide-to="2"></li>
                        <li data-target="#banner_carousel" data-slide-to="3"></li>
                        <li data-target="#banner_carousel" data-slide-to="4"></li>
                        <li data-target="#banner_carousel" data-slide-to="5"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="/images/banner_1.jpg" alt="First banner">
                        </div>
                        <div class="carousel-item">
                            <img src="/images/banner_2.jpg" alt="Second banner">
                        </div>
                        <div class="carousel-item">
                            <img src="/images/banner_3.jpg" alt="Third banner">
                        </div>
                        <div class="carousel-item">
                            <img src="/images/banner_4.jpg" alt="Fourth banner">
                        </div>
                        <div class="carousel-item">
                            <img src="/images/banner_5.png" alt="5th banner">
                        </div> 
                        <div class="carousel-item">
                            <img src="/images/banner_6.jpg" alt="6th banner">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#banner_carousel" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#banner_carousel" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
       
            <!-- Category -->
        <jsp:include page="../../common/category.jsp" ></jsp:include>    
            <!-- Product -->
        <jsp:include page="../../common/product.jsp" ></jsp:include>    
            <!-- Footer -->
        <jsp:include page="../../common/footer.jsp"></jsp:include>


    </body>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>
