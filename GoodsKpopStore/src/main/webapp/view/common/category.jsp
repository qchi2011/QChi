<%-- 
    Document   : category
    Created on : Jun 4, 2023, 7:03:01 PM
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
            <!-- Category Section -->
            <div class="category_section">
                <h2>CATEGORY</h2>
                <a href="/" class="category_item">
                    <img src="${pageContext.request.contextPath}/images/tech.jpg" alt="category image">
                    <span>TECH</span>
                </a>
                <div class="category_item">
                    <img src="${pageContext.request.contextPath}/images/muu.jpg" alt="category image">
                    <span>MUSIC</span>
                </div>
                <a href="/" class="category_item">
                    <img src="${pageContext.request.contextPath}/images/fashion.jpg" alt="category image">
                    <span>FASHION</span>
                </a>
                <a href="/" class="category_item">
                    <img src="${pageContext.request.contextPath}/images/mg.jpg" alt="category image">
                    <span>MAGAZINES</span>
                </a>
            </div>
        </div>

</body>
</html>
