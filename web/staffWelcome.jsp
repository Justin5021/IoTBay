<%-- 
    Document   : staffWelcome
    Created on : Apr 1, 2022, 5:00:06 AM
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
//            int staffID = 1;
            String firstName = request.getParameter("fname");
            String lastName = request.getParameter("lname");
            String email = request.getParameter("email");
            String password = request.getParameter("pass");
            String phoneNumber = request.getParameter("phonenum");
            String country = request.getParameter("country");
        %>
        
        <h1 class="welcome-head"> Welcome <%= firstName + " " + lastName %>! </h1>
        <p class="welcome-txt">Your email is <%=email%></p>
        <p class="welcome-txt">Your phone number is <%=phoneNumber%></p>
        <br />
        <p class="welcome-txt"> Please click on this button below to confirm your details! </p>
        <form class="welcome-container" action="staffMain.jsp" method="POST">
            <button type="submit" class="welcome-goto-btn"> 
                <i class="fa fa-home" aria-hidden="true"></i>
                Main 
            </button> 
        </form>
        <%
            Staff staff = new Staff(firstName,lastName,email,password,phoneNumber,country);
            session.setAttribute("staff",staff);
        %>
    </body>
</html>
