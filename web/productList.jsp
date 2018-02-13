<%-- 
    Document   : productList
    Created on : Feb 13, 2018, 6:12:41 AM
    Author     : User
--%>

<%@page import="edu.wctc.dj.burtsbeans.model.Product"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product List</title>
    </head>
    <body>
        <table>
            <%
                List<Product> productList = (List<Product>) request.getAttribute("productList");
                for (Product product : productList) {
            %>
            <tr>
                <td><%= product.getProductName()%></td>
                <td>
                    <a href="?id=<%=product.getProductID()%>"><%= product.getProductName()%></a>
                </td>
            
            </tr>
            <%
                }
            %>

        </table>
    </body>
</html>
