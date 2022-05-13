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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="style.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Welcome </title>
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
        
        <div class="container text-center"  style="margin-top: 1cm">
            <h1> Welcome <%= firstName + " " + lastName %>! </h1>
            <p>Your email is <%=email%></p>
            <p>Your phone number is <%=phoneNumber%></p>
            <br />
            <p> Please click on this button below to visit your dashboard </p>
            <form action="main.jsp" method="POST">
                <button class="btn btn-primary btn-lg" type="submit"> 
                    <i class="fa fa-home" aria-hidden="true"></i>
                    Dashboard
                </button> 
            </form>
        </div>
    </body>
</html>
