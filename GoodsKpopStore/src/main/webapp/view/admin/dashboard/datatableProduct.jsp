<%-- 
    Document   : datatableProduct
    Created on : Jun 14, 2023, 10:41:07 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://kit.fontawesome.com/756da913d7.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="card mb-3">
            <div class="card-header">
                <i class="fas fa-table"></i>
                Data Table Example</div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Image</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Description</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${listProduct}" var="product">
                                <tr>
                                    <td>${product.name}</td>
                                    <td>
                                        <img src="${product.image}"
                                             width="100px"
                                             height="100px"
                                             alt="Loi"/>  
                                    </td>
                                    <td>${product.price}</td>
                                    <td>${product.quantity}</td>
                                    <td>${product.description}</td>
                                        <!--Edit-->
                                    <td style="text-align:center"> 
                                        <i class="fa-sharp fa-solid fa-edit" data-toggle="modal" data-target="#editProductModal"> </i>
                                        &nbsp;&nbsp;
                                        <!--Delete-->
                                        <i class="fa-sharp fa-solid fa-trash"> </i>   

                                    </td>

                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
            <jsp:include page="../modal/editProductModal.jsp"></jsp:include>
        </div>
    </body>
</html>
