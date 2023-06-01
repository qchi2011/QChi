<%-- 
    Document   : display
    Created on : May 22, 2023, 5:31:52 PM
    Author     : Admin
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="home" method="GET">
            <input type="text" placeholder="Nhập username" name="usernameInput"/>
            <button type="submit">Search</button>
        </form>
        <br/><br/><br/><br/>
        <table border="1">
            <thead>
                <tr>
                    <th>Username</th>
                    <th>Password</th>
                    <th>Action</th>
                    
                </tr>
            </thead>
            <tbody>

                <c:forEach items="${list}" var="account">
                    <tr>
                        <td>${account.username}</td>
                        <td>${account.password}</td>
                        <td>
                            <a href="#" onclick="toggleEditForm('${account.username}', 
                                        '${account.password}')">Edit</a>
                            <a href="delete?username=${account.username}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <div id="editForm" style="display: none;">
            <form action="edit" method="POST">
                <input type="text" id ="oldUsername" name="oldUsername"  style="display:none"/>
                
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" placeholder="Enter username">

                <br/><br/>
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" placeholder="Enter password">
                <br/><br/>
                <button type="submit">Save</button>
            </form>
        </div>

        <script>
            function toggleEditForm(username, password) {
                var editForm = document.getElementById("editForm");
                var usernameInput = document.getElementById("username");
                var passwordInput = document.getElementById("password");
                var oldUsername = document.getElementById("oldUsername");
                if (editForm.style.display === "none") {
                    usernameInput.value = username;
                    passwordInput.value = password;
                    oldUsername.value= username;
                    editForm.style.display = "block";
                } else {
                    editForm.style.display = "none";
                }
            }
        </script>

    </body>
</html>
