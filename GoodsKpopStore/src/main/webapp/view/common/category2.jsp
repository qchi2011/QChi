<%-- 
    Document   : category2
    Created on : Jun 5, 2023, 5:29:22 PM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/web.css">
    </head>
    <section class="category col-md-2">
        <ul class="list-group">
            <li class="list-group-item">Tech</li>
            <li class="list-group-item">Music</li>
            <li class="list-group-item">Fashion</li>
            <li class="list-group-item">Magazines</li>
        </ul>
    </section>
</html>
