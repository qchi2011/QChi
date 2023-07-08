<%-- 
    Document   : addProductModal
    Created on : Jun 17, 2023, 8:12:06 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .error {
                color: red;
            }

        </style>
    </head>
    <body>
        <!-- Modal -->
<!--<div class="modal fade show" id="addProductModal" tabindex="-1" role="dialog" aria-labelledby="addProductModalLabel" style="display: block; padding-right: 17px;" aria-modal="true" >-->
        <div class="modal fade" id="addProductModal" tabindex="-1" role="dialog" aria-labelledby="addProductModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="addProductModalLabel">Add Product</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form id="addProductForm" action="addProduct" method="POST" enctype="multipart/form-data">
                            <!--Name-->
                            <div class="form-group">
                                <label for="name">Name:</label>
                                <input type="text" class="form-control" id="nameInput" name="name">
                                <div id="nameError" class="error"></div>
                            </div>
                            <!--Price-->
                            <div class="form-group">
                                <label for="price">Price:</label>
                                <input type="text" class="form-control" id="priceInput" name="price">
                                <div id="priceError" class="error"></div>
                            </div>
                            <!--Quantity-->
                            <div class="form-group">
                                <label for="quantity">Quantity:</label>
                                <input type="text" class="form-control" id="quantityInput" name="quantity">
                                <div id="quantityError" class="error"></div>
                            </div>
                            <!--Category-->
                            <div class="form-group">
                                <label for="category">Category: </label>
                                <div class="input-group">
                                    <select class="custom-select" id="category" name="category">
                                        <c:forEach items ="${listCategories}" var="category">
                                            <option value="${category.id}">${category.name}</option>
                                        </c:forEach>
                                    </select>
                                    <div class="input-group-append">
                                        <button class="btn btn-outline-secondary" type="button">Category</button>
                                    </div>
                                </div>
                            </div>
                            <!--Image-->
                            <div class="form-group">
                                <label for="image">Image: </label>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" >Upload</span>
                                    </div>
                                    <div class="custom-file">
                                        <input type="file" class="custom-file-input" id="image" name="image" onchange="displayImage(this)">
                                        <label class="custom-file-label">Choose file</label>
                                    </div>
                                </div>
                                <img id="previewImage" src="#" alt="Preview" style="display: none; max-width: 300px; max-height: 300px;">
                            </div>
                            <!--Description-->
                            <div class="form-group">
                                <label for="description">Description:</label>
                                <textarea class="form-control" name="description"></textarea>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-primary" form="addProductForm" onclick="validateForm()">Add</button>
                    </div>
                </div>
            </div>
        </div>

        <script>
            function validateForm() {
                let name = $('#nameInput').val();
                let price = $('#priceInput').val();
                let quantity = $('#quantityInput').val();

                //xoá thông báo lỗi hiện tại
                $('.error').html('');

                if (name === '') {
                    $('#nameError').html('Name of product must not be empty');
                }

                if (price === '') {
                    $('#priceError').html('Price of product must not be empty');
                } else if (!$.isNumeric(price) || parseFloat(price) < 0) {
                    $('#priceError').html('Price of product must be digits and greater than 0');
                }

                if (quantity === '') {
                    $('#quantityError').html('Quantity of product must not be empty');
                } else if (!$.isNumeric(quantity) || parseInt(quantity) <= 0) {
                    $('#quantityError').html('Quantity of product must be digits and greater or equal than 0');
                }

                // Kiểm tra nếu không có lỗi thì submit form
                let error = '';
                $('.error').each(function () {
                    error += $(this).html();
                });
                if (error === '') {
                    $('#addProductForm').submit();
                } else {
                    event.preventDefault();
                }
            }

            function displayImage(input) {
                var previewImage = document.getElementById("previewImage");
                var file = input.files[0];
                var reader = new FileReader();

                reader.onload = function (e) {
                    previewImage.src = e.target.result;
                    previewImage.style.display = "block";
                }
                reader.readAsDataURL(file);
            }

        </script>
    </body>
</html>
