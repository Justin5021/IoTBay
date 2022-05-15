<%-- 
    Document   : cart
    Created on : May 15, 2022, 1:39:09 PM
    Author     : Jacky Bahary 13997263
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.isd.model.Cart" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="style.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Order History </title>
    </head>
    <body>
        <%
            ArrayList<Cart> carts = (ArrayList<Cart>)session.getAttribute("cart");
        %>
        <nav class="navbar navbar-expand-md navbar-dark bg-primary">
            <div class="container">
                <a href="#" class="navbar-brand"> <h1> IoTBay </h1> </a>
                <button 
                    class="navbar-toggler" 
                    type="button" 
                    data-bs-toggle="collapse" 
                    data-bs-target="#navbar">
                    <span class="navbar-toggler-icon"></span>
                </button> 
                <div class="collapse navbar-collapse" id="navbar">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a href="about.jsp" class="nav-link"> About </a>
                        </li>
                        <li class="nav-item">
                            <a href="contact.jsp" class="nav-link"> Contact </a>
                        </li>
                        <li class="nav-item">
                            <a href="terms.jsp" class="nav-link"> Terms </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class ="container my-3">
            <div class ="table-responsive">
                <table class="table table-sm table-bordered">
                    <p class="display-6">Cart</p>
                    <thead>
                      <tr>
                        <th scope="col">Product ID</th>
                        <th scope="col">Cart Quantity</th>
                      </tr>
                    </thead>
                    <% 
                        try {
                        for (Cart cart : carts) {
                    %>
                    <tr>
                        <td><%=cart.getProductID()%></td>
                        <td><%=cart.getCartQuantity()%></td>
                    </tr>
                    <%
                        }

                        } catch (Exception e) {
                        e.printStackTrace();
                        }
                    %>
                </table> 
            </div>
        </div>
</html>
