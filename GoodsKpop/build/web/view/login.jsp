<%-- 
    Document   : login
    Created on : May 22, 2023, 5:32:06 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="login" method="POST">
            Username: <input type="text" name="username"/>
            <br/><br/>
            Password: <input type="password" name="password"/>
            <br/>
            <div style="color: red">${error}</div>
            <br/>
            <input type="submit" value="login"/>
        </form>
    </body>
</html>
