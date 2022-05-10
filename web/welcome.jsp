<%-- 
    Document   : welcome
    Created on : Mar 29, 2022, 10:44:35 PM
    Author     : Justin
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
        <title> Welcome </title>
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
                <li><a href="logout.jsp"> logout </a></li>
            </ul>
        </nav>
        
        <% 
            int userID = 1;
            String firstName = request.getParameter("fname");
            String lastName = request.getParameter("lname");
            String email = request.getParameter("email");
            String password = request.getParameter("pass");
            String phoneNumber = request.getParameter("phonenum");
            String streetNumber = request.getParameter("street-number");
            String streetName = request.getParameter("street-name");
            String streetType = request.getParameter("street-type");
            String suburb = request.getParameter("suburb");
            String state = request.getParameter("state");
            String postcode = request.getParameter("postcode");
            String country = request.getParameter("country");
        %>
        
        <h1 class="welcome-head"> Welcome <%= firstName + " " + lastName %>! </h1>
        <p class="welcome-txt">Your email is <%=email%></p>
        <p class="welcome-txt">Your phone number is <%=phoneNumber%></p>
        <br />
        <p class="welcome-txt"> Please click on this button below to confirm your details! </p>
        <form class="welcome-container" action="main.jsp" method="POST">
            <button type="submit" class="welcome-goto-btn"> 
                <i class="fa fa-home" aria-hidden="true"></i>
                Main 
            </button> 
        </form>
        <%
            User user = new User(userID,firstName,lastName,email,password,phoneNumber,streetNumber, streetName,streetType,suburb,state,postcode,country);
            session.setAttribute("user",user);
        %>
    </body>
</html>
