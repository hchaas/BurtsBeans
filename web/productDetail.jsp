
<%@page import="java.util.List"%>
<%@page import="edu.wctc.dj.burtsbeans.model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html lang="en">
    <div id="wrapper">
        <head>
            <link href="storefront.css" rel="stylesheet">
            <link href="https://fonts.googleapis.com/css?family=Roboto:300,400" rel="stylesheet">
            <title>Burt's Beans Wholesale Coffee</title>
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js">
            </script>
        </head>

        <body>
            <header>
                <img src="logo.png"/>
            </header>
            <nav>
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="products.html">Our Beans</a></li>
                    <li><a href="requestinfoform.html">Request Details</a>
                    <li><a href="shoppingcart.html">Shopping Cart</a></li>
                </ul>
            </nav>
            <main>
                <div>
                    <h2>Burt's Coffee Beans</h2>
                    <h3> Product Detail</h3>
                    
                        <table>
                            <%
                                List<Product> productList = (List<Product>) request.getAttribute("productList");
                                for (Product product : productList) {
                            %>
                            <tr>
                                <td><%= product.getProductName()%></td>
                                <td>
                                    <a href="?id=<%=product.getProductID()%>"><%= product.getProductDescription()%></a>
                                </td>

                            </tr>
                            <%
                                }
                            %>

                        </table>
                    </body>



                </div>
            </main>
            <footer>
                Copyright &copy; 2018 Burt's Beans Wholesale Coffee<br>
                <a href="mailto:haleyhaas@burtsbeans.com">haleyhaas@burtsbeans.com</a>
            </footer>
        </body>
    </div>
</html>

