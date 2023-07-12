<%-- 
    Document   : profile
    Created on : Jun 29, 2023, 12:57:34 PM
    Author     : Admin
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style_1.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/web.css">
        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"rel="stylesheet">
        <script src="https://kit.fontawesome.com/65d7426ab6.js" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css2?family=Anuphan:wght@500;600&family=Dela+Gothic+One&family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Black+Ops+One&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"
              integrity="sha512-rqQltXRuHxtPWhktpAZxLHUVJ3Eombn3hvk9PHjV/N5DMUYnzKPC1i3ub0mEXgFzsaZNeJcoE0YHq0j/GFsdGg=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />

        <!-- Page level plugin CSS-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.19/css/dataTables.bootstrap4.min.css"
              integrity="sha512-4o2NtfcBGIT0SbOTpWLYovl07cIaliKIQpUXvEPvyOgBF/01xY1TXm5F1B+X48/zhhFLIw2oBTsE0rjcwEOwJQ=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />

        <!-- Custom styles for this template-->
        <link href="${pageContext.request.contextPath}/css/sb-admin.css" rel="stylesheet">
    </head>
    <body>
        <!--Header-->
        <jsp:include page="../../common/homepage/header.jsp"></jsp:include>
            <div class="board">
                <div class="container light-style flex-grow-1 container-p-y">

                    <h4 class="font-weight-bold py-3 mb-4">
                        <a href="./index.jsp">Account settings</a>
                    </h4>
                    <form action="${pageContext.request.contextPath}/profile" method="POST">

                    <div class="card overflow-hidden">
                        <div class="row no-gutters row-bordered row-border-light">
                            <div class="col-md-3 pt-0">
                                <div class="list-group list-group-flush account-settings-links">
                                    <a class="list-group-item list-group-item-action active" data-toggle="list" href="#account-general">General</a>
                                    <a class="list-group-item list-group-item-action" data-toggle="list" href="#account-change-password">Change password</a>
                                    <a class="list-group-item list-group-item-action" data-toggle="list" href="#view-orders">View orders</a>
                                </div>
                            </div>
                            <div class="col-md-9">
                                <div class="tab-content">
                                    <div class="tab-pane fade active show" id="account-general">
                                        <hr class="border-light m-0">
                                        <div class="card-body">
                                            <div class="form-group">
                                                <label class="form-label">Username</label>
                                                <input type="text" class="form-control mb-1" readonly value="${sessionScope.account.username}"  name="username">
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label">E-mail</label>
                                                <input type="text" class="form-control mb-1" readonly value="${sessionScope.account.email}">                  
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label">FullName</label>
                                                <input type="text" class="form-control mb-1" value="${sessionScope.account.fullname}" name="fullname">
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label">Phone</label>
                                                <input type="text" class="form-control mb-1" value="${sessionScope.account.phone}" name="phone">                  
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label">Address</label>
                                                <input type="text" class="form-control mb-1" value="${sessionScope.account.address}" name="address">                  
                                            </div>
                                        </div>

                                    </div>
                                    <div class="tab-pane fade" id="account-change-password">
                                        <div class="card-body pb-2">

                                            <div class="form-group">
                                                <label class="form-label">Current password</label>
                                                <input type="password" class="form-control" name="oldPassword">
                                            </div>

                                            <div class="form-group">
                                                <label class="form-label">New password</label>
                                                <input type="password" class="form-control" name="newPassword">
                                            </div>

                                            <div class="form-group">
                                                <label class="form-label">Repeat new password</label>
                                                <input type="password" class="form-control" name="rePassword">
                                            </div>

                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="view-orders">
                                        <div class="row" >

                                            <c:forEach items="${listOrder}" var="orders">
                                                
                                                <div style = "display: flex; flex-direction: column;
                                                     width: 750px; margin: 30px 0px;">
                                                    
                                                    <c:set var="total" value="${0}"/>
                                                    
                                                    <div>Don ${orders.id}</div>

                                                    <c:forEach items="${listOrderDetails}" var="orderDetails">
                                                        <c:set var="product" value="${hashmapProduct[orderDetails.productId]}"/>
                                                        <c:if test = "${orders.id == orderDetails.orderId}">
                                                            
                                                        <div>
                                                            <div class="col-lg-10" style = "margin: 5px 0px; background-color: greenyellow; display: flex;
                                                                 justify-content: space-between; align-items: center; ">
                                                                <!--Image-->
                                                                <div class="product__cart__item">
                                                                    <div class="product__cart__item__pic">
                                                                        <img src="${product.image}"
                                                                         width="100px"
                                                                         height="100px"
                                                                         alt="Loi"/>  
                                                                        <!--Name-->
                                                                    </div>
                                                                </div>  
                                                                <div>
                                                                    <h6 class="product__cart__item__text">${product.name}</h6>
                                                                </div>
                                                                <!--Price-->
                                                                <div class="product__cart__item__text">
                                                                    <h5>${product.price}</h5>
                                                                </div>
                                                                <!--Quantity-->
                                                                <div class="quantity__item">
                                                                    <form action="cart?action=change-quantity" method ="POST">
                                                                        <div class="quantity">
                                                                            <input type="hidden" name="id" value="ProductID" />

                                                                            <div class="pro-qty-2">


                                                                                <input id="ProductID" hidden type="text" value="10" name="quantity">
                                                                                <span>${orderDetails.quantity}</span>
                                                                            </div>
                                                                        </div>
                                                                    </form>    
                                                                </div>
                                                                <!--Amount-->
                                                                <!--<div id="amount-cell" class="cart__price">${String.format("%.2f",product.price * orderDetails.quantity)}$</div>-->

                                                            </div>
                                                        </div>
                                                        <c:set var="total" value="${total + product.price * orderDetails.quantity}"/>
                                                        </c:if>

                                                    </c:forEach>

                                                    <div style = "width: 624px; display: flex; justify-content: space-between">
                                                        <span style = "float-left">
                                                            Huy don hang
                                                        </span>
                                                        <span style = "float-right">
                                                            Total:${String.format("%.2f",total)}$
                                                        </span>
                                                    </div>

                                                </div>
                                            </c:forEach>

                                        </div>  


                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="text-right mt-3" style="margin-bottom: 100px">
                        <button type="submit" class="btn btn-primary">Save changes</button>&nbsp;
                        <button type="button" class="btn btn-default">Cancel</button>
                    </div>
                </form>
            </div>
        </div>
        <jsp:include page="../../common/homepage/footer.jsp"></jsp:include>

            <!-- Bootstrap core JavaScript-->
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"
                    integrity="sha512-bnIvzh6FU75ZKxp0GXLH9bewza/OIw6dLVh9ICg0gogclmYGguQJWl8U30WpbsGTqbIiAwxTsbe76DErLq5EDQ=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>

            <!-- Core plugin JavaScript-->
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"
                    integrity="sha512-0QbL0ph8Tc8g5bLhfVzSqxe9GERORsKhIn1IrpxDAgUsbBGz/V7iSav2zzW325XGd1OMLdL4UiqRJj702IeqnQ=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>

            <!-- Page level plugin JavaScript-->
            <script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.19/js/jquery.dataTables.min.js"
                    integrity="sha512-c2bQrjZ1iFm8q28SJKvX+A/H6ItQ+jumpms8XGVRkpc2lWxiNl1WcoI4pf0g5/1tDfcShv7oTwzWF3qizR03ZQ=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.19/js/dataTables.bootstrap4.min.js"
                    integrity="sha512-LNaU4dKqd/wXAdyvZg+hH0YqMIlEVJNe1qFoIdqLr1S/ontCVJGn7fM7YUos9oqHRfmTgok1DTtUHpvxzNRrEg==" 
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>

            <!-- Custom scripts for all pages-->
            <script src="${pageContext.request.contextPath}/js/sb-admin.min.js"></script>


        <script>
            // Call the dataTables jQuery plugin
            $(document).ready(function () {
                $('#dataTablePurchase').DataTable();
            });
        </script>
    </body>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>
