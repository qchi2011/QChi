<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>SB Admin - Dashboard</title>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"
              integrity="sha512-rqQltXRuHxtPWhktpAZxLHUVJ3Eombn3hvk9PHjV/N5DMUYnzKPC1i3ub0mEXgFzsaZNeJcoE0YHq0j/GFsdGg=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />

        <!-- Page level plugin CSS-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.19/css/dataTables.bootstrap4.min.css"
              integrity="sha512-4o2NtfcBGIT0SbOTpWLYovl07cIaliKIQpUXvEPvyOgBF/01xY1TXm5F1B+X48/zhhFLIw2oBTsE0rjcwEOwJQ=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />

        <!-- Custom styles for this template-->
        <link href="${pageContext.request.contextPath}/css/sb-admin.css" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">


    </head>

    <body id="page-top">

        <!--Navbar-->
        <jsp:include page="../../common/dashboard/navbar.jsp" ></jsp:include>


            <div id="wrapper">

                <!-- Sidebar -->
            <jsp:include page="../../common/dashboard/sideBar.jsp" ></jsp:include>


                <div id="content-wrapper">

                    <div class="container-fluid">

                        <!--                                                <div class="row" >
                                                                        <div class="col-lg-8">-->
                    <c:forEach items="${sessionScope.listOrder}" var="orders" varStatus="i">
                        <div class="shopping__cart__table">
                            <table>
                                <thead>
                                    <tr>
                                        <th style="padding-right: 20px">No</th>
                                        <th style="padding-right: 70px">Product</th>
                                        <th style="padding-right: 40px">Price</th>
                                        <th>Quantity</th>
                                        <th>Total</th>
                                    </tr>
                                </thead>

                                <c:set var="total" value="${0}"/>

                                <tbody> 
                                    <c:forEach items="${sessionScope.OrderDetailsDAO.findById(orders.id)}" var="orderDetails" >
                                        <c:set var="product" value="${sessionScope.ProductDAO.findOneById(orderDetails.productId)}"/>
                                        <tr>
                                            <th scope="row">${product.id}</th>
                                            <!--Image-->
                                            <td class="product__cart__item" style="display: flex;">
                                                <div class="product__cart__item__pic" style="width: 30%">
                                                    <img src="${product.image}" 
                                                         width = "90" height = "90" alt="alt"/> 
                                                    <!--Name-->
                                                </div>
                                                <h6 class="product__cart__item__text" style="width: 70%">${product.name}</h6>
                                            </td>    

                                            <!--Price-->
                                            <td class="product__cart__item__text">
                                                <h5>${String.format("%.2f", product.price)}$</h5>
                                            </td>

                                            <td class="quantity__item">
                                                <div class="quantity">
                                                    <input type="hidden" name="id" value="${product.id}" />

                                                    <div class="pro-qty-2">
                                                        <input type="text" value="${orderDetails.quantity}" name="quantity">
                                                    </div>

                                                </div>
                                            </td>
                                            <!--Amount-->
                                            <td id="amount-cell" class="cart__price">${String.format("%.2f", product.price * orderDetails.quantity)}$</td>
                                        </tr>
                                        <c:set var="total" value="${total + product.price * orderDetails.quantity}"/>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="row">
                            <div class="col-lg-9 col-md-9 col-sm-9">
                                <div class="continue__btn">
                                    <a href ="http://localhost:8080/GoodsKpopStore/AdminDeletePurchaseServlet?orderId=${orders.id}">
                                        Delete Order
                                    </a>
                                </div>
                            </div>   
                            <div class="col-lg-2 col-md-2 col-sm-2">
                                <span >
                                    Total: ${String.format("%.2f",total)}$
                                </span>
                            </div>
                        </div>
                        <!--                                            </div>
                                               </div>-->
                        <br><br><br><br>
                    </c:forEach>
                </div>
                <!--                <div class="row">
                                    <div class="col-lg-9 col-md-9 col-sm-9">
                                        <div class="continue__btn">
                                            <a href ="AdminDeletePurchaseServlet?orderId=${orders.id}">
                                                Cancel Order
                                            </a>
                                        </div>
                                    </div>   
                                    <div class="col-lg-2 col-md-2 col-sm-2">
                                        <span >
                                            Total: ${String.format("%.2f",total)}$
                                        </span>
                                    </div>
                                </div>-->
                <!--                                            </div>
                                       </div>-->
                <br><br><br><br>

                <!-- datatable-->
                <%--<jsp:include page="datatablePurchase.jsp"></jsp:include>--%>

            </div>
            <!-- /.container-fluid -->

            <!-- Sticky Footer -->
            <%--<jsp:include page="../../common/dashboard/stickyFooter.jsp" ></jsp:include>--%>


            </div>
            <!-- /.content-wrapper -->

        </div>
        <!-- /#wrapper -->

        <!-- Scroll to Top Button-->
    <jsp:include page="../../common/dashboard/scrollTopButton.jsp" ></jsp:include>


        <!-- Logout Modal-->
    <jsp:include page="../../common/dashboard/logOutModal.jsp" ></jsp:include>


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

</html>

