<%-- 
    Document   : main
    Created on : Mar 30, 2022, 2:46:39 AM
    Author     : User
--%>

<%@page import="uts.isd.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="style.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Main </title>
    </head>
    <body>
        <nav>
            <input type="checkbox" id="dropdown-bar">
            <label for="dropdown-bar" class="dropdown-btn">
                <i class="fas fa-bars"></i>
            </label>
            <label class="logo"> IoTBay </label>
            <ul>
                <li><a href="index.jsp"> Home </a></li>
                <li><a href="#"> About </a></li>
                <li><a href="#"> Contact </a></li>
                <li><a href="logout.jsp"> Logout </a></li>
            </ul>
        </nav>
        <%
            User user = (User) session.getAttribute("user");
        %>
        
        <div class="main-table-container">
            <h1 class="main-table-title"> Details Review </h1>
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
                    
        <div class="main-btn-container">
            <a href="#">
                <button class="shop-btn">
                    <i class="fas fa-user-circle"></i> Shop
                </button>
            </a>
            <a href="#">
                <button class="view-btn">
                    <i class="fas fa-shopping-cart"></i> View Account
                </button>
            <a/>
        </div>

    </body>
</html>
