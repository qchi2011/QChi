<%-- 
    Document   : header
    Created on : Jun 3, 2023, 3:21:18 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/app.css">
    </head>
    <body>
        <nav class="headerNav_section">
            <a href="/" class="logo"><span>QC</span>Select</a>
            <div class="feature_wrapper">
                <input type="checkbox" hidden id="en_search">
                <form action="" method="POST">
                    <input type="text" placeholder="Looking for?">
                    <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
                </form>
                <label for="en_search" class="fa-solid fa-magnifying-glass"></label>
                <i class="fa-solid fa-cart-shopping"></i>
                <i class="fa-sharp fa-solid fa-user"></i>
            </div>
        </nav>
    </body>
</html>
