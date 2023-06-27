<%-- 
    Document   : login
    Created on : Jun 5, 2023, 3:05:39 PM
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
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css">

        <!-- Font -->
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Black+Ops+One&family=Raleway:wght@500&display=swap');
        </style>

    </head>
    <body>

        <main class="auth_temp">
            <div id="auth_wrapper">
                <a href="home">
                    <h3><span>QC</span>Select</h3> 
                </a>
                <c:set var="cookie" value="${pageContext.request.cookies}" />
                <div class="form_container sign_in_form">
                    <form action="login" method="POST">
                        <h1>Sign In</h1>
                        <div class="input_item">
                            <label class="fa-solid fa-envelope"></label>
                            <input type="text" placeholder="Username" name="username" id="username" value="${cookie.username.value}" required=""/>
                        </div>
                        <div class="input_item">
                            <label class="fa-solid fa-lock"></label>
                            <input type="password" placeholder="Password" name="password" id="password" value="${cookie.password.value}" required=""/>
                        </div>
                        <div class="group" style="margin-right: 75px">
                            <input id="check check" type="checkbox" class="check" name="remember" style="accent-color: #E49393; ">
                            <label for="check" style="font-size: 13px;"><span class="icon"></span> Keep me signed in</label>
                        </div>
                        <div id="err" style="color:red ;font-size:12px; margin-top: 10px" >${err}</div>                        
                        <button type="submit">Sign In</button>
                        <a href="">Forgot your password?</a>
                        <div class="social_container" style="margin-top: 5px">
                            <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                        </div>
                    </form>
                </div>
                <div class="form_container sign_up_form">
                    <form action="register" method="POST">
                        <h1>Create Account</h1>
                        <div class="input_item">
                            <label for="username" class="fa-solid fa-user"></label>
                            <input type="text" placeholder="Username" name="username" required=""/>
                        </div>
                        <div class="input_item">
                            <label class="fa-solid fa-lock"></label>
                            <input type="password" placeholder="Password" name="password" required=""/>
                        </div>
                        <div class="input_item">
                            <label class="fa-solid fa-envelope"></label>
                            <input type="email" placeholder="Email" name="email" required=""/>
                        </div>
                        <div class="input_item">
                            <label class="fa-solid fa-address-card"></label>
                            <input type="text" placeholder="Fullname" name="fullname" required=""/>
                        </div>
                        <div class="input_item">
                            <label class="fa-solid fa-phone"></label>
                            <input type="number" placeholder="Phone" name="phone" required=""/>
                        </div>
                        <div class="input_item">
                            <label class="fa-solid fa-home"></label>
                            <input type="text" placeholder="Address" name="address" required=""/>
                        </div>
                        <div id="err" style="color:red ;font-size:12px" >${error2}</div>
                        <button type="submit">Sign Up</button>


                    </form>
                </div>
                <div class="overlay_container">
                    <div class="overlay">
                        <div class="overlay_section section_right">
                            <h1>Hello, Friend!</h1>
                            <p>Enter your personal details and start journey with us</p>      
                            <button class="btn_show" id="signUp">Sign Up</button>
                        </div>
                        <div class="overlay_section section_left">
                            <h1>Welcome Back!</h1>
                            <p>To keep connected with us please login with your personal info</p>
                            <button class="btn_show" id="signIn">Sign In</button>
                        </div>
                    </div>
                </div>
            </div>
        </main>

    </body>
    <script>
        const signUpButton = document.getElementById('signUp');
        const signInButton = document.getElementById('signIn');
        const auth_wrapper = document.getElementById('auth_wrapper');

        signUpButton.addEventListener('click', () => {
            if (document.getElementById("err").value !== "") {
                document.getElementById("err").value = "";
            }
            auth_wrapper.classList.add("overlay_right_active");
        });
        signInButton.addEventListener('click', () => {
            auth_wrapper.classList.remove("overlay_right_active");
        });
    </script>
    <script src="https://kit.fontawesome.com/756da913d7.js" crossorigin="anonymous"></script>
</html>
