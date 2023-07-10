<%-- 
    Document   : profile
    Created on : Jun 29, 2023, 12:57:34 PM
    Author     : Admin
--%>

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
    </head>
    <body>
        <!--Header-->
        <jsp:include page="../../common/homepage/header.jsp"></jsp:include>
            <div class="board">
                <div class="container light-style flex-grow-1 container-p-y">

                    <h4 class="font-weight-bold py-3 mb-4">
                        <a href="./index.jsp">Account settings</a>
                    </h4>
                    <form action="${pageContext.request.contextPath}/dashboard" method="POST">


                    <div class="card overflow-hidden">
                        <div class="row no-gutters row-bordered row-border-light">
                            <div class="col-md-3 pt-0">
                                <div class="list-group list-group-flush account-settings-links">
                                    <a class="list-group-item list-group-item-action active" data-toggle="list" href="#account-general">General</a>
                                    <a class="list-group-item list-group-item-action" data-toggle="list" href="#account-change-password">Change password</a>
                                    <a class="list-group-item list-group-item-action" data-toggle="list" href="#account-info">Info</a>
                                </div>
                            </div>
                            <div class="col-md-9">
                                <div class="tab-content">
                                    <div class="tab-pane fade active show" id="account-general">

                                        <hr class="border-light m-0">

                                        <div class="card-body">
                                            <div class="form-group">
                                                <label class="form-label">Username</label>
                                                <input type="text" class="form-control mb-1" value="${sessionScope.account.username}">
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label">Name</label>
                                                <input type="text" class="form-control" value="Nelle Maxwell">
                                            </div>

                                            <div class="form-group">
                                                <label class="form-label">E-mail</label>
                                                <input type="text" class="form-control mb-1" value="${sessionScope.account.email}">                  
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label">Address</label>
                                                <input type="text" class="form-control mb-1" value="${sessionScope.account.address}">                  
                                            </div>
                                        </div>

                                    </div>
                                    <div class="tab-pane fade" id="account-change-password">
                                        <div class="card-body pb-2">

                                            <div class="form-group">
                                                <label class="form-label">Current password</label>
                                                <input type="password" class="form-control">
                                            </div>

                                            <div class="form-group">
                                                <label class="form-label">New password</label>
                                                <input type="password" class="form-control">
                                            </div>

                                            <div class="form-group">
                                                <label class="form-label">Repeat new password</label>
                                                <input type="password" class="form-control">
                                            </div>

                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="account-info">
                                        <div class="card-body pb-2">

                                            <div class="form-group">
                                                <label class="form-label">Bio</label>
                                                <textarea class="form-control" rows="5">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nunc arcu, dignissim sit amet sollicitudin iaculis, vehicula id urna. Sed luctus urna nunc. Donec fermentum, magna sit amet rutrum pretium, turpis dolor molestie diam, ut lacinia diam risus eleifend sapien. Curabitur ac nibh nulla. Maecenas nec augue placerat, viverra tellus non, pulvinar risus.</textarea>
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label">Birthday</label>
                                                <input type="text" class="form-control" value="May 3, 1995">
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label">Country</label>
                                                <select class="custom-select">
                                                    <option>USA</option>
                                                    <option selected="">Canada</option>
                                                    <option>UK</option>
                                                    <option>Germany</option>
                                                    <option>France</option>
                                                </select>
                                            </div>


                                        </div>
                                        <hr class="border-light m-0">
                                        <div class="card-body pb-2">

                                            <h6 class="mb-4">Contacts</h6>
                                            <div class="form-group">
                                                <label class="form-label">Phone</label>
                                                <input type="text" class="form-control" value="+0 (123) 456 7891">
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label">Website</label>
                                                <input type="text" class="form-control" value="">
                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="text-right mt-3" style="margin-bottom: 100px">
                        <button type="button" class="btn btn-primary">Save changes</button>&nbsp;
                        <button type="button" class="btn btn-default">Cancel</button>
                    </div>
                </form>
            </div>
        </div>
        <jsp:include page="../../common/homepage/footer.jsp"></jsp:include>

    </body>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>
