
<%@page import="com.poly.model.User"%>
<%@page import="com.poly.dao.userDao"%>
<%-- 
    Document   : update_user
    Created on : Oct 9, 2019, 7:55:46 PM
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
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            out.print(id + " ");
            userDao dao = new userDao();
            User user = dao.findById(id);
           
        %>
        <form action="../UserController" method="get"><br>
            ID: <br> <%= user.getId() %> 
            <input type="hidden" name="id" value="<%= user.getId()%>" />
            Username: <input type="text" name="username" value="<%= user.getUsername() %>" /><br>
            Password: <input type="password" name="password" value="<%= user.getPassword()%>"/><br>
            Fullname: <input type="text" name="fullname" value="<%= user.getFullname()%>"/><br>
            Email:    <input type="text" name="email" value="<%= user.getEmail()%>"/><br>
            Phone:    <input type="text" name="phone" value="<%= user.getPhone()%>"/><br>
            <% int role = user.getRole();  %>
            Role:    <br> 
            <input type="radio" name="role" value="1" 
                   <% if(role==1)out.print("checked"); %>
                   >Admin</input><br>
            <input type="radio" name="role" value="0"
                   <% if(role==0)out.print("checked"); %>
                   >User</input><br>
            <input type="submit" name="_type" value="EXE_UPDATE"/>
        </form>
    </body>
</html>
