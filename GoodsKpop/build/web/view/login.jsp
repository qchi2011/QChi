<%-- 
    Document   : login
    Created on : Jun 2, 2023, 8:39:53 AM
    Author     : Admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>

        <!-- Options -->
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Title -->
        <title>QC Select</title>

        <!-- CSS -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS_JS/app.css">

        <!-- Font -->
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Black+Ops+One&family=Raleway:wght@500&display=swap');
        </style>

    </head>
    <body>

        <main class="auth_temp">
            <div id="auth_wrapper">
                <h3><span>QC</span>Select</h3>
                <div class="form_container sign_in_form">
                    <form action="login" method="POST">
                        <h1>Sign In</h1>
                        <div class="input_item">
                            <label class="fa-solid fa-envelope"></label>
                            <input type="text" placeholder="Username" name="username"/>
                        </div>
                        <div class="input_item">
                            <label class="fa-solid fa-lock"></label>
                            <input type="password" placeholder="Password" name="password"/>
                        </div>
                        <div id="err" style="color: red">${error}</div>
                        <button type="submit">Sign In</button>
                        <a href="">Forgot your password?</a>
                        <div class="social_container">
                            <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                            <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                        </div>
                    </form>
                </div>
                <div class="form_container sign_up_form">
                    <form action="register" method="POST">
                        <h1>Create Account</h1>
                        <div class="input_item">
                            <label for="username" class="fa-solid fa-user"></label>
                            <input type="text" placeholder="Username" name="username"/>
                        </div>
                        <div class="input_item">
                            <label class="fa-solid fa-lock"></label>
                            <input type="password" placeholder="Password" name="password"/>
                        </div>
                        <div id="err" style="color: red">${error}</div>
                        <button type="submit">Sign Up</button>
                        <span>Or use your email for registration</span>
                        <div class="social_container">
                            <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                            <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                        </div>
                    </form>
                </div>
                <div class="overlay_container">
                    <div class="overlay">
                        <div class="overlay_section section_right">
                            <h1>Hello, Friend!</h1>
                            <p>Enter your personal details and start journey with us</p>
                            <div id="err" style="color: red">${error}</div>
                            <button class="btn_show" id="signUp">Sign Up</button>
                        </div>
                        <div class="overlay_section section_left">
                            <h1>Welcome Back!</h1>
                            <p>To keep connected with us please login with your personal info</p>
                            <div id="err" style="color: red">${error}</div>
                            <button class="btn_show" id="signIn">Sign In</button>
                        </div>
                    </div>
                </div>
            </div>
        </main>

    </body>
    <script src="./CSS_JS/app.js"></script>
    <script src="https://kit.fontawesome.com/756da913d7.js" crossorigin="anonymous"></script>
</html>