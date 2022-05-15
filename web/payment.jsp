<%-- 
    Document   : payment
    Created on : May 13, 2022, 2:26:19 PM
    Author     : Jacky Bahary 13997263
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
        <title> Payment </title>
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
            <form class="payment-form" method="POST">
                
                <div class='payment-container'>
                    <div class='payment-item' style="margin: 1cm">
                        <h1 class="payment-title"><strong>Payment Form</strong></h1>
                    </div>
                    <div class='payment-item row justify-content-center'>
                        <table class="payment-table table table-responsive" style="width: auto;">
                            <tbody>
                                <tr>
                                    <td> <label for="paymentID">Payment ID</label> </td>
                                    <td> <input class='payment-field' type="text" placeholder="Enter Payment ID" name="paymentID" required> </td>
                                </tr>
                                
                                <tr>
                                    <td> <label for="paymentTotal">Payment Total</label> </td>
                                    <td> <input class='payment-field' type="text" placeholder="Enter Payment Total" name="paymentTotal" required> </td>
                                </tr>
                                
                                <tr>
                                    <td> <label for="paymentInfoID">Payment Info ID</label> </td>
                                    <td> <input class='payment-field' type="text" placeholder="Enter Payment Info ID" name="paymentInfoID" required> </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class='payment-item' style="margin-bottom: 1cm">
                        <button type="submit" class="payment-btn btn btn-outline-secondary btn-lg">Pay</button>
                    </div> 
                </div>
            </form>
        </div>
    </body>
</html>
