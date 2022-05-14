<%-- 
    Document   : addToCart
    Created on : May 15, 2022, 3:30:49 AM
    Author     : jacky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.isd.model.*"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="style.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Add to Cart </title>
    </head>
    <body>
        <% 
            User user = (User)session.getAttribute("user");
        %>
        <nav class="navbar navbar-expand-md navbar-dark bg-primary">
            <div class="container">
                <a href="index.jsp" class="navbar-brand"> <h1> IoTBay </h1> </a>
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
        <div class="container text-center">
            <form class="cart-form" action='addCartServlet' method="POST">
                
                <div class='cart-container'>
                    <div class='cart-item' style="margin: 1cm">
                        <h1 class="cart-title"><strong>Add To Cart</strong></h1>
                    </div>
                    <div class='cart-item row justify-content-center'>
                        <table class="cart-table table table-responsive" style="width: auto;">
                            <tbody>
                                <tr>
                                    <td> <label for="userID">User ID</label> </td>
                                    <td> <input class='cart-field' type="text" placeholder="Enter User ID" name="userID" required> </td>
                                </tr>
                                
                                <tr>
                                    <td> <label for="productID">Product ID</label> </td>
                                    <td> <input class='cart-field' type="text" placeholder="Enter Product ID" name="productID" required> </td>
                                </tr>
                                
                                <tr>
                                    <td> <label for="cartQuantity">Quantity</label> </td>
                                    <td> <input class='cart-field' type="text" placeholder="Enter Quantity" name="cartQuantity" required> </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class='cart-item' style="margin-bottom: 1cm">
                        <button type="submit" class="cart-btn btn btn-outline-secondary btn-lg">Add to Cart</button>
                    </div> 
                </div>
            </form>
        </div>
    </body>
</html>
