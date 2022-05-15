<%-- 
    Document   : userEdit
    Created on : Apr 1, 2022, 5:33:25 PM
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
        <script src="https://kit.fontawesome.com/a076d05399.js "crossorigin="anonymous"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Edit </title>
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
            String matchErr = (String) session.getAttribute("matchErr");
            String existErr = (String) session.getAttribute("existErr");
            String fnameErr = (String) session.getAttribute("fnameErr");
            String lnameErr = (String) session.getAttribute("lnameErr");
            String emailErr = (String) session.getAttribute("emailErr");
            String passErr = (String) session.getAttribute("passErr");
            String phoneErr = (String) session.getAttribute("phoneErr");
            String streetNumErr = (String) session.getAttribute("streetNumErr");
            String postcodeErr = (String) session.getAttribute("postcodeErr");
        %>
        <div class="container text-center">
            <form class="register-form" action="EditDetailsServlet" method="POST">
                
                <div class='register-container'>
                    <div class='register-item' style="margin: 1cm">
                         <h1 class="register-title"><strong> Edit Details </strong></h1>
                    </div>
                    <span> <%=(existErr != null ? existErr: "")%> </span>
                    <div class='register-item row justify-content-center'>
                        <table class="register-table table table-responsive" style="width: auto;">
                            <tbody>
                                <tr>
                                    <td> <label for="fname">First Name</label> </td>
                                    <td> <input class='register-field' type="text" placeholder="<%=(fnameErr != null ? fnameErr : "Enter First Name")%>" name="fname" required> </td>
                                </tr>
                                <tr>
                                    <td> <label for="lname">Last Name</label> </td>
                                    <td> <input class='register-field' type="text" placeholder="<%=(lnameErr != null ? lnameErr : "Enter Last Name")%>" name="lname" required> </td>
                                </tr>
                                <tr>
                                    <td> <label for="email">Email</label> </td>
                                    <td> <input class='register-field' type="email" placeholder="<%=(emailErr != null ? emailErr : "Enter Email")%>" name="email" required> </td>
                                </tr>
                                <tr>
                                    <td> <label for="phonenum">Phone Number</label> </td>
                                    <td> <input class='register-field' type="text" placeholder="<%=(phoneErr != null ? phoneErr : "Enter Phone Number")%>" name="phonenum" required> </td>
                                </tr>
                                <tr>
                                    <td> <label for="street-number">Street Number</label> </td>
                                    <td> <input class='register-field' type="text" placeholder="<%=(streetNumErr != null ? streetNumErr : "Enter Street Number")%>" name="streetnum" required> </td>
                                </tr>
                                <tr>
                                    <td> <label for="street-name">Street Name</label> </td>
                                    <td> <input class='register-field' type="text" placeholder="Enter Street Name" name="streetname" required> </td>
                                </tr>
                                <tr>
                                    <td> <label for="street-type">Street Type</label> </td>
                                    <td> <input class='register-field' type="text" placeholder="Enter Street Type" name="streettype" required> </td>
                                </tr>
                                <tr>
                                    <td> <label for="suburb">Suburb</label> </td>
                                    <td> <input class='register-field' type="text" placeholder="Enter Suburb" name="suburb" required> </td>
                                </tr>
                                <tr>
                                    <td> <label for="state">State</label> </td>
                                    <td> <input class='register-field' type="text" placeholder="Enter State" name="state" required> </td>
                                </tr>
                                <tr>
                                    <td> <label for="postcode">Postcode</label> </td>
                                    <td> <input class='register-field' type="text" placeholder="<%=(postcodeErr != null ? postcodeErr : "Enter Postcode")%>" name="postcode" required> </td>
                                </tr>
                                <tr>
                                    <td> <label for="Country">Country</label></td>
                                    <td> <input class='register-field' type="text" placeholder="Enter Country" name="country" required></td>
                                </tr>
                                <tr>
                                    <td> <label for="psw">Password</label> </td>
                                    <td> <input class='register-field' type="password" placeholder="<%=(passErr != null ? passErr : "Enter Your Password")%>" name="pass" required> </td>
                                </tr>
                                <tr>
                                    <td> <label for="psw">Confirm Password</label> </td>
                                    <td> <input class='register-field' type="password" placeholder="Confirm Password" name="cpass" required> </td>
                                </tr>
                                <span> <%=(matchErr != null ? matchErr: "")%> </span>
                            </tbody>
                        </table>
                    </div>
                    <div class='register-item'>
                        <button type="submit" class="create-btn btn btn-outline-secondary btn-lg">Create Account</button>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
