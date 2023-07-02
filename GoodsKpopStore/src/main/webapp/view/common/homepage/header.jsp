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
            <a href="home" class="logo"><span>QC</span>Select</a>
            <div class="feature_wrapper">
                <input type="checkbox" hidden id="en_search">
                <form action="search" method="get">
                    <input type="search" placeholder="Looking for?" name="keyword">
                    <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
                </form>
                <label for="en_search" class="fa-solid fa-magnifying-glass"></label>
                <a class="fa-solid fa-cart-shopping" href="view/common/homepage/cart.jsp" ></a>
                <c:if test="${sessionScope.account == null}">
                <a class="fa-sharp fa-solid fa-user" href="${pageContext.request.contextPath}/login"></a>
<!--                <a href="${pageContext.request.contextPath}/login">
                        <button class="btn btn-outline-primary">
                            Log in
                        </button>
                    </a>-->
                </c:if> 
                <c:if test="${sessionScope.account != null}">
                <a class="fa-sharp fa-solid fa-sign-out" href="${pageContext.request.contextPath}/logout"></a>
<!--                    <a href="${pageContext.request.contextPath}/logout">
                        <button class="btn btn-outline-primary">
                            Log Out
                        </button>
                    </a>-->
                </c:if>
            </div>
        </nav>
    </body>
</html>
