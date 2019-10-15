
<%@page import="com.poly.model.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.poly.dao.userDao"%>
<%@page import="com.poly.dao.ConnectDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Document   : show_user
    Created on : Oct 8, 2019, 9:22:25 PM
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
        <h1>Danh sach user</h1>

        <table border = "1">
            <tr>
                <td>id</td>
                <td>username</td>
                <td>password</td>
                <td>fullname</td>
                <td>email</td>
                <td>phone</td> 
                <td>role</td>
                <td>xoa</td>
                <td>sua</td> 
            </tr>
            <%
                userDao user = new userDao();
                ArrayList<User> dsuser = user.fillAll();
                for (int i = 0; i < dsuser.size()-1; i++) {
            %>   
            <tr>
                <td><%= dsuser.get(i).getId()%></td>
                <td><%= dsuser.get(i).getUsername()%></td>
                <td><%= dsuser.get(i).getPassword()%></td>
                <td><%= dsuser.get(i).getFullname()%></td>
                <td><%= dsuser.get(i).getEmail()%></td>
                <td><%= dsuser.get(i).getPhone()%></td> 
                <td><%= dsuser.get(i).getRole()%></td>
            <form method="get" action="../UserController">
                <td><input type="submit" name="_type" value="DELETE"/></td>
                <td><input type="submit" name="_type" value="UPDATE"/></td>
                <td><input type="hidden" name="userid" value="<%= dsuser.get(i).getId() %>" /></td>
            </form>
        </tr>

        <%}

        %>

    </table>

</body>
</html>
