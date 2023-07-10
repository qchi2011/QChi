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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/web.css">
    </head>
    <body>
        <nav class="headerNav_section">
            <a href="${pageContext.request.contextPath}/home" class="logo"><span>QC</span>Select</a>
            <div class="feature_wrapper">
                <input type="checkbox" hidden id="en_search">
                <form action="search" method="get">
                    <input type="search" placeholder="Looking for?" name="keyword">
                    <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
                </form>
                <label for="en_search" class="fa-solid fa-magnifying-glass"></label>
                <a class="fa-solid fa-cart-shopping" href="${pageContext.request.contextPath}/cart" ></a>
                <c:if test="${sessionScope.account == null}">
                    <a class="fa-sharp fa-solid fa-user" href="${pageContext.request.contextPath}/login"></a>
                </c:if> 
                <c:if test="${sessionScope.account != null}">
                    <a class="fa-sharp fa-solid fa-sign-out" href="${pageContext.request.contextPath}/logout"></a>
                    
                    <a href="${pageContext.request.contextPath}/dashboard" class="fa-solid fa-gear"></a>

                </c:if>
            </div>
        </nav>
    </body>
</html>
