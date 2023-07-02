<%-- 
    Document   : category
    Created on : Jun 4, 2023, 7:03:01 PM
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
                    <div class="category_section">
                <h2>CATEGORY</h2>
                <c:forEach items="${listCategories}" var="category">
                    <li class="category_item"><a href="category?id=${category.id}">${category.name}</a></li>
                </c:forEach>

            </div>

</body>
</html>
