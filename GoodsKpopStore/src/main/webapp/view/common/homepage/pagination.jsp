<%-- 
    Document   : pagination
    Created on : Jun 10, 2023, 1:18:33 PM
    Author     : Admin
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
        <section id="pagination" class="d-flex justify-content-center">
            <ul class="pagination">
                <c:if test="${pageControl.page == '1'}">
                    <li class="page-item disabled"><a class="page-link" href="#" tabindex="-1">Previous</a></li>
                    </c:if>
                    <c:if test="${pageControl.page != '1'}">
                    <li class="page-item"><a class="page-link" href="home?page=${pageControl.page - 1}">Previous</a></li>
                    </c:if>
                    <c:if test="${pageControl.totalPage > pageControl.page}">
                    <li class="page-item"><a class="page-link" href="${pageControl.urlPattern}page=${pageControl.page}">${pageControl.page}</a></li>
                    <li class="page-item"><a class="page-link" href="${pageControl.urlPattern}page=${pageControl.page + 1}">${pageControl.page + 1}</a></li>
                    <li class="page-item"><a class="page-link" href="${pageControl.urlPattern}page=${pageControl.page + 2}">${pageControl.page + 2}</a></li>
                    <li class="page-item"><a class="page-link" href="${pageControl.urlPattern}page=${pageControl.page + 3}">${pageControl.page + 3}</a></li>
                    <li class="page-item"><a class="page-link" href="${pageControl.urlPattern}page=${pageControl.page + 1}">Next</a></li>                
                    </c:if>
                    <c:if test="${pageControl.totalPage == pageControl.page}">
                    <li class="page-item"><a class="page-link" href="${pageControl.urlPattern}page=${pageControl.page - 3}">${pageControl.page - 3}</a></li>
                    <li class="page-item"><a class="page-link" href="${pageControl.urlPattern}page=${pageControl.page - 2}">${pageControl.page - 2}</a></li>
                    <li class="page-item"><a class="page-link" href="${pageControl.urlPattern}page=${pageControl.page - 1}">${pageControl.page - 1}</a></li>
                    <li class="page-item"><a class="page-link" href="${pageControl.urlPattern}page=${pageControl.page}">${pageControl.page}</a></li>
                    <li class="page-item disabled"><a class="page-link" href="#" tabindex="-1">Next</a></li>
                    </c:if>
            </ul>
        </section>
    </body>
</html>