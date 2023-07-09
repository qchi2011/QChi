<%-- 
    Document   : product
    Created on : Jun 3, 2023, 3:59:58 PM
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

         <div class="product col-md-12">
            <!-- row -->
            <div class="row">
                <c:forEach items="${listProduct}" var="product">
                    <div class="col-lg-3 mb-md-4 "style="justify-content: center;">
                        <div class="card h-100">
                            <img src="${product.image}" alt="..." class="card-img-top">
                            <div class="card-body">
                                <div class="text-center">
                                    <h5 class="card-title">${product.name}</h5>
<!--                                    $40.00 - $80.00-->
                                    ${product.price}$
                                </div>
                            </div>

                            <div class="card-footer  bg-transparent border-top-0">
                                <div class="text-center">
                                    <a href="${pageContext.request.contextPath}/detail?id=${product.id}" class="btn btn-outline-dark">View option</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        
    </body>
</html>
