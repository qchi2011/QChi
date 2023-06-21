<%-- 
    Document   : header
    Created on : Jun 3, 2023, 3:21:18 PM
    Author     : Admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
            <a href="home" class="logo"><span>QC</span>Select</a>
            <div class="feature_wrapper">
                <input type="checkbox" hidden id="en_search">
                <form action="search" method="get">
                    <input type="search" placeholder="Looking for?" name="keyword">
                    <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
                </form>
                <label for="en_search" class="fa-solid fa-magnifying-glass"></label>
                <a class="fa-solid fa-cart-shopping" href="view/common/homepage/cart.jsp" ></a>
                <a class="fa-sharp fa-solid fa-user" href="view/common/homepage/login.jsp"></a>
                    
                </i>
            </div>
        </nav>
    </body>
</html>
