<%-- 
    Document   : addSupplier
    Created on : May 14, 2022, 10:15:18 PM
    Author     : Justin
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
        <title> Main </title>
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
                            <a href="main.jsp" class="nav-link"> Dashboard </a>
                        </li>
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
            <form class="add-form" action="AddSupplierServlet" method="POST">
                <div class='add-container'>
                    <div class='add-item' style="margin: 1cm">
                        <h1 class="add-title"><strong>Add Supplier</strong></h1>
                    </div>
                    <div class='add-item row justify-content-center'>
                        <table class="add-table table table-responsive" style="width: auto;">
                            <tbody>
                                <tr>
                                    <td> <label for="fname">Supplier Name</label> </td>
                                    <td> <input class='add-field' type="text" placeholder="Enter First Name" name="suppname" required> </td>
                                </tr>
                                
                                <tr>
                                    <td> <label for="lname">Address</label> </td>
                                    <td> <input class='add-field' type="text" placeholder="Enter Address" name="suppaddress" required> </td>
                                </tr>
                                
                                <tr>
                                    <td> <label for="phonenum">Phone Number</label> </td>
                                    <td> <input class='add-field' type="text" placeholder="Enter Phone Number" name="suppphone" required> </td>
                                </tr>
                                
                                <tr>
                                    <td> <label for="email">Email</label> </td>
                                    <td> <input class='add-field' type="email" placeholder="Enter Email" name="suppemail" required> </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class='add-item' style="margin-bottom: 1cm">
                        <button type="submit" class="btn-primary btn btn-lg">Create New Supplier</button>
                    </div> 
                </div>
            </form>
        </div>
    </body>
</html>
