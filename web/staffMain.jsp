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
            Staff staff = (Staff) session.getAttribute("staff");
        %>
        
        <div class="main-table-container">
            <h1 class="main-table-title"> Staff Details Review </h1>
            <table class="main-table">
                <thead>
                    <tr>
                        <th class="main-th">First Name</th>
                        <th class="main-th">Last Name</th>
                        <th class="main-th">Email</th>
                        <th class="main-th">Password</th>
                        <th class="main-th">Phone Number</th>
                        <th class="main-th">Country</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="main-td">${staff.firstName}</td>
                        <td class="main-td">${staff.lastName}</td>
                        <td class="main-td">${staff.email}</td>
                        <td class="main-td">${staff.password}</td>
                        <td class="main-td">${staff.phoneNumber}</td>
                        <td class="main-td">${staff.country}</td>
                    </tr>
                </tbody>
            </table>
        </div>
                    
        <div class="btn-container">
            <div class="btn-container-item">
                <a href="#">
                    <button class="shop-btn">
                        <i class="fas fa-shopping-cart"></i> View Catalogue
                    </button>
                </a>
            </div>
            <div class="btn-container-item">
                <a href="#">
                    <button class="view-btn">
                        <i class="fas fa-user-circle"></i> View Account
                    </button>
                <a/>
            </div>
        </div>

    </body>
</html>
