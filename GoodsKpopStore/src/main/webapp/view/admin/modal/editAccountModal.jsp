<%-- 
    Document   : editProductModal
    Created on : Jun 21, 2023, 8:44:14 PM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="modal fade" id="editAccountModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editAccountModalLabel">Edit Account</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
            <form id="editAccountForm" action="http://localhost:8080/GoodsKpopStore/EditAccountServlet" method="POST" enctype="multipart/form-data">
                    <!--id-->
                    <div class="form-group" style="display: none">
                        <input type="text" class="form-control" id="idEditInput" name="idEdit" />
                    </div>
                    <!--Userame-->
                    <div class="form-group">
                        <label for="name">Username:</label>
                        <input type="text" class="form-control" id="usernameEditInput" name="usernameEdit" />
                        <div id="nameEditError" class="error"></div>
                    </div>
                    <!--Password-->
                    <div class="form-group">
                        <label for="price">Password:</label>
                        <input type="text" class="form-control" id="passwordEditInput" name="passwordEdit"/>
                        <div id="priceEditError" class="error"></div>
                    </div>
                    <!--Email-->
                    <div class="form-group">
                        <label for="quantity">Email:</label>
                        <input type="text" class="form-control" id="emailEditInput" name="emailEdit"/>
                        <div id="quantityEditError" class="error"></div>
                    </div>
                    <!--Fullname-->
                    <div class="form-group">
                        <label for="descriptionEditInput">Fullname:</label>
                        <textarea class="form-control" id="fullnameEditInput" name="fullnameEdit"></textarea>
                    </div>
                    <!--Phone-->
                    <div class="form-group">
                        <label for="descriptionEditInput">Phone:</label>
                        <textarea class="form-control" id="phoneEditInput" name="phoneEdit"></textarea>
                    </div>
                    <!--Address-->
                    <div class="form-group">
                        <label for="descriptionEditInput">Address:</label>
                        <textarea class="form-control" id="addressEditInput" name="addressEdit"></textarea>
                    </div>
                </form>
                </div>

                <div class="modal-footer">
                    <button type="button" class="bstn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary" form="editAccountForm"
                            onclick="validateForm3()">Edit</button>
                </div>
            
        </div>
    </div>
</div>

<script>
    function validateForm3() {
        let username = $('#usernameEditInput').val();
        let password = $('#passwordEditInput').val();
        //xoá thông báo lỗi hiện tại
        $('.error').html('');
        //tbao loi
        if (username === '') {
            $('#usernameEditInput').html('Username must not be empty');
        }

        if (password === '') {
            $('#passwordEditInput').html('Password must not be empty');
        }
        let error = '';
        $('.error').each(function () {
            error += $(this).html();
        });
        if (error === '') {
            $('#editAccountForm').submit();
        } else {
            event.preventDefault();
        }
    }

    function editAccountModal(id, username, password, email, fullname, phone, address) {
        $('#idEditInput').val(id);
        $('#usernameEditInput').val(username);
        $('#passwordEditInput').val(password);
        $('#emailEditInput').val(email);
        $('#fullnameEditInput').val(fullname);
        $('#phoneEditInput').val(phone);
        $('#addressEditInput').val(address);
    }

</script>
</body>
</html>
