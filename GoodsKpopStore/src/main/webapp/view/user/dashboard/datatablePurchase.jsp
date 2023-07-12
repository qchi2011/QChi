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
    </head>
    <body>
        <div class="card mb-3">
            <div class="card-header">
                <i class="fas fa-table"></i>
                Data Table Example</div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTablePurchase" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Image</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <!--<th>Date</th>-->
                                <!--<th>Action</th>-->
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${listOrderDetails}" var="orderDetails">
                                <c:set var="product" value="${hashmapProduct[orderDetails.productId]}"/>
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
                                    <!--<td>${product.date}</td>-->
                                    
<!--                                    <td class="d-flex">
                                        Edit
                                        <i class="fa fa-edit fa-2x" style="color: #469408" data-toggle="modal" data-target="#editProductModal"
                                           onclick="editProductModal(
                                           ${product.id},
                                           `${product.name}`,
                                           `${product.description}`,
                                           ${product.price},
                                           ${product.quantity},
                                           `${product.image}`,
                                           ${product.categoryId})"></i>
                                        &nbsp;&nbsp;&nbsp;
                                        Delete
                                        <i class="fa fa-trash fa-2x" style="color: #e70808" data-toggle="modal" data-target="#delete-modal"
                                           onclick="deleteProductModal(${product.id})"></i>
                                    </td>-->
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
            
            <%--<jsp:include page="../modal/editProductModal.jsp"></jsp:include>--%>
            <%--<jsp:include page="../modal/deleteProductModal.jsp"></jsp:include>--%>
        </div>
    </body>
</html>
