<%-- 
    Document   : show_product
    Created on : Oct 15, 2019, 5:15:05 PM
    Author     : MSI
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.poly.model.Product"%>
<%@page import="com.poly.dao.ProductDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Danh sach product</h1>

        <table border = "1">
            <tr>
                <td>id</td>
                <td>name</td>
                <td>price</td>
                <td>note</td>
                <td>image</td>
                <td>category_id</td> 
                <td>xoa</td>
                <td>sua</td> 
            </tr>
            <%
                ProductDao product = new ProductDao();
                ArrayList<Product> dsproduct = product.fillAll();
                for (int i = 0; i < dsproduct.size(); i++) {
            %>   
            <tr>
                <td><%= dsproduct.get(i).getId()%></td>
                <td><%= dsproduct.get(i).getName()%></td>
                <td><%= dsproduct.get(i).getPrice()%></td>
                <td><%= dsproduct.get(i).getNote()%></td>
                <td>
                    <img src="../images/<%= dsproduct.get(i).getImage()%>" width="160px" height="160px"</td>
                                 
                <td>
                    <%= dsproduct.get(i).getCategory_id()%>
                </td> 
            <form method="get" action="../ProductController">
                <td><input type="submit" name="_type" value="DELETE"/></td>
                <td><input type="submit" name="_type" value="UPDATE"/></td>
                <td><input type="hidden" name="productid" value="<%= dsproduct.get(i).getId()%>" /></td>
            </form>
        </tr>

        <%}

        %>

    </table>

</body>
</html>
