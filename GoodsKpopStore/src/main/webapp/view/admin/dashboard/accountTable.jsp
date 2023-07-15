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
                Account Table Example</div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <!--<th>ID</th>-->
                                <th>Id</th>
                                <th>Username</th>
                                <th>Password</th>
                                <th>Email</th>
                                <th>FullName</th>
                                <th>Phone</th>
                                <th>Address</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${sessionScope.listAccount}" var="a">
                                <tr>
                                    <td>${a.id}</td>
                                    <td>${a.username}</td>
                                    <td>${a.password}</td>
                                    <td>${a.email}</td>
                                    <td>${a.fullname}</td>
                                    <td>${a.phone}</td>
                                    <td>${a.address}</td>
                                    <!--Edit-->
                                    <td style="text-align:center"> 
                                        <i class="fa fa-edit" data-toggle="modal" data-target="#editAccountModal" 
                                           onclick="editAccountModal(${a.id}, '${a.username}', '${a.password}','${a.email}','${a.fullname}', '${a.phone}','${a.address}')"></i>
                                        &nbsp;&nbsp;
                                    
                                        <i class="fa fa-trash" data-toggle="modal" data-target="#delete-account-modal" onclick="deleteAccountModal(${a.id})" style="cursor: pointer;"></i>  
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
            <jsp:include page="../modal/editAccountModal.jsp"></jsp:include>
            <jsp:include page="../modal/deleteAccountModal.jsp"></jsp:include>

        </div>
    </body>

</html>
