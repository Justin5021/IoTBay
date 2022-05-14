<%-- 
    Document   : staffMain
    Created on : Apr 1, 2022, 5:10:05 AM
    Author     : Justin
--%>

<%@page import="uts.isd.model.Staff"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="style.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/a076d05399.js "crossorigin="anonymous"></script>
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
        <%
            Staff staff = (Staff) session.getAttribute("staff");
        %>
        
        <div class="container text-center"  style="margin-top: 1cm">
            <h1 style="margin-top: 0.5cm ; margin-bottom: 1cm">Staff Dashboard</h1>
            <h3> What would you like to do? </h3>
            <div class="btn-container text-center">
                <div class="btn-container-item" style="padding: 0.75rem">
                    <a href="#">
                        <button class="shop-btn btn btn-outline-secondary btn-lg">
                            <i class="fas fa-user-circle"></i> View Users
                        </button>
                    </a>
                </div>
                <div class="btn-container-item" style="padding: 0.75rem">
                    <a href="#">
                        <button class="view-btn btn btn-outline-secondary btn-lg">
                            <i class="fas fa-barcode"></i> View Products
                        </button>
                    <a/>
                </div>
                <div class="btn-container-item" style="padding: 0.75rem">
                    <a href="#">
                        <button class="view-btn btn btn-outline-secondary btn-lg">
                            <i class="fas fa-truck-moving"></i> View Suppliers
                        </button>
                    <a/>
                </div>
                <div class="btn-container-item" style="padding: 0.75rem">
                    <a href="StaffLogoutServlet">
                        <button class="view-btn btn btn-outline-secondary btn-lg">
                            <i class="fas fa-sign-out-alt"></i> Logout
                        </button>
                    <a/>
                </div>
            </div>
        </div>

    </body>
</html>
