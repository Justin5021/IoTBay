<%-- 
    Document   : index
    Created on : Mar 20, 2022, 2:38:33 AM
    Author     : Justin Chin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="index.css" rel="stylesheet">
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
                <li><a class="active" href="#"> Home </a></li>
                <li><a href="#"> About </a></li>
                <li><a href="#"> Contact </a></li>
                <li><a href="#"> Login </a></li>
            </ul>
        </nav>
        <div class="index-container">
            <h1> Welcome to IoTBay </h1>
            <p class="index-text"> Please select an action </p>
        </div> 
    </body>
</html>
