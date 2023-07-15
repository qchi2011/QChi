<%-- 
    Document   : sideBar
    Created on : Jun 14, 2023, 10:42:47 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <ul class="sidebar navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="${pageContext.request.contextPath}/admin/dashboard">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span>
                </a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link" href="http://localhost:8080/GoodsKpopStore/admin/dashboard?page=purchase">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>Orders</span>
                </a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link" href="${pageContext.request.contextPath}/admin/dashboard?page=account">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>Account</span>
                </a>
            </li>
<!--            <li class="nav-item">
                <a class="nav-link" href="tables.html">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Tables</span></a>
            </li>-->
            <%--<c:if test="${sessionScope.account != null && sessionScope.account.roleId == 1}">--%>
            <!--                <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/purchase">
                                    <i class="fas fa-fw fa-table"></i>
                                    <span>Purchase</span>
                                </a>
                            </li>-->
            <%--</c:if>--%>
        </ul>
    </body>
</html>
