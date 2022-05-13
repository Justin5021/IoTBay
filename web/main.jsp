<%-- 
    Document   : main
    Created on : Mar 30, 2022, 2:46:39 AM
    Author     : Justin
--%>

<%@page import="uts.isd.model.User"%>
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
        <%
            User user = (User) session.getAttribute("user");
        %>
        
        <div class="main-table-container text-center">
            <h1 class="main-table-title" style="margin: 1cm"><strong> Details Review </strong></h1>
            <table class="main-table">
                <thead>
                    <tr>
                        <th class="main-th">First Name</th>
                        <th class="main-th">Last Name</th>
                        <th class="main-th">Email</th>
                        <th class="main-th">Password</th>
                        <th class="main-th">Phone Number</th>
                        <th class="main-th">Street Number</th>
                        <th class="main-th">Street Name</th>
                        <th class="main-th">Street Type</th>
                        <th class="main-th">Suburb</th>
                        <th class="main-th">State</th>
                        <th class="main-th">Postcode</th>
                        <th class="main-th">Country</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="main-td">${user.firstName}</td>
                        <td class="main-td">${user.lastName}</td>
                        <td class="main-td">${user.email}</td>
                        <td class="main-td">${user.password}</td>
                        <td class="main-td">${user.phoneNumber}</td>
                        <td class="main-td">${user.streetNumber}</td>
                        <td class="main-td">${user.streetName}</td>
                        <td class="main-td">${user.streetType}</td>
                        <td class="main-td">${user.suburb}</td>
                        <td class="main-td">${user.state}</td>
                        <td class="main-td">${user.postcode}</td>
                        <td class="main-td">${user.country}</td>
                    </tr>
                </tbody>
            </table>
        </div>
                    
        <div class="btn-container text-center">
            <div class="btn-container-item" style="margin-bottom: 0.5cm">
                <a href="browsing.jsp">
                    <button class="shop-btn btn btn-outline-secondary btn-lg">
                        <i class="fas fa-shopping-cart"></i> Shop
                    </button>
                </a>
            </div>
            <div class="btn-container-item">
                <a href="userEdit.jsp">
                    <button class="view-btn btn btn-outline-secondary btn-lg">
                        <i class="fas fa-user-circle"></i> Edit Account
                    </button>
                <a/>
            </div>
        </div>

    </body>
</html>
