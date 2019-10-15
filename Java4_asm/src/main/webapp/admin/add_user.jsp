<%-- 
    Document   : add_user
    Created on : Oct 9, 2019, 6:44:43 PM
    Author     : MSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Them user</h1>
        <form action="../UserController" method="get"><br>
            Username: <input type="text" name="username" /><br>
            Password: <input type="password" name="password" /><br>
            Fullname: <input type="text" name="fullname" /><br>
            Email:    <input type="text" name="email" /><br>
            Phone:    <input type="text" name="phone" /><br>
            Role:     <input type="radio" name="role" value="1">Admin</input>
            <input type="radio" name="role" value="0">User</input><br>
            <input type="submit" name="_type" value="INSERT"/>
        </form>
    </body>
</html>
