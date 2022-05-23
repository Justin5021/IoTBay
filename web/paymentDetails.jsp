<%-- 
    Document   : paymentDetails
    Created on : 23/05/2022, 7:08:06 PM
    Author     : Jefrich Pekantan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="style.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
        <title> Checkout Order </title>
    </head>
    
    <body>
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
            <form class="checkout-payment" method="POST">
                
                <div class='checkout-container'>
                    <div class='checkout-item' style="margin: 1cm">
                        <h1 class="checkout-title"><strong>Checkout Payment</strong></h1>
                    </div>
                    <div class='checkout-item row justify-content-center'>
                        <table class="checkout-table table table-responsive" style="width: auto;">
                            <tbody>
                                <tr>
                                    <td> <label for="emailAddress">Email Address</label> </td>
                                    <td> <input class='checkout-field' type="text" placeholder="Enter E-Mail Address" name="emailAddress" required> </td>
                                </tr>
                                
                                <tr>
                                    <td> <label for="cardName">Name On Card</label> </td>
                                    <td> <input class='checkout-field' type="text" placeholder="Name On Card" name="cardName" required> </td>
                                </tr>
                                
                                <tr>
                                    <td> <label for="cardNumber">Card Number</label> </td>
                                    <td> <input class='checkout-field' type="text" placeholder="0000-0000-0000-0000" name="cardNumber" required> </td>
                                </tr>
                                
                                <tr>
                                    <td> <label for="cardExpiry">Card Expiry</label> </td>
                                    <td> <input class='checkout-field' type="text" placeholder="MM/YYYY" name="cardExpiry" required> </td>
                                </tr>
                                
                                <tr>
                                    <td> <label for="cardCVV">CVV</label> </td>
                                    <td> <input class='checkout-field' type="text" placeholder="CVV" name="cardCVV" required> </td>
                                </tr>
                                
                                <tr>
                                    <td> <label for="orderTotal">Amount to Pay ($) </label> </td>
                                    <td> <input class='checkout-field' type="text" placeholder="Enter Amount" name="orderTotal" required> </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class='checkout-item' style="margin-bottom: 1cm">
                        <button type="submit" class="checkout-btn btn btn-outline-secondary btn-lg">Checkout</button>
                    </div> 
                </div>
            </form>
        </div>
    </body>
</html>
