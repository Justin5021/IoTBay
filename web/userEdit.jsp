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
        <link href="style.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Edit </title>
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
            User user = (User)session.getAttribute("user");
        %>
        <div class="container">
            <form class="edit-form" action="userEdit.jsp" method="POST">
                
                <div class='edit-container'>
                    <div class='edit-item'>
                        <h1 class="edit-title"> Edit Details </h1>
                    </div>
                    <div class='edit-item'>
                        <table class="edit-table">
                            <tbody>
                                <tr>
                                    <td> <label for="fname">First Name</label> </td>
                                    <td> <input class='edit-field' type="text" placeholdername="fname" value=${user.firstName} required> </td>
                                </tr>
                                <tr>
                                    <td> <label for="lname">Last Name</label> </td>
                                    <td> <input class='edit-field' type="text" placeholdername="lname" value=${user.lastName} required> </td>
                                </tr>
                                <tr>
                                    <td> <label for="email">Email</label> </td>
                                    <td> <input class='edit-field' type="email" placeholdername="email" value=${user.email} required> </td>
                                </tr>
                                <tr>
                                    <td> <label for="phonenum">Phone Number</label> </td>
                                    <td> <input class='edit-field' type="text" placeholdername="phonenum" value=${user.phoneNumber} required> </td>
                                </tr>
                                <tr>
                                    <td> <label for="street-number">Street Number</label> </td>
                                    <td> <input class='edit-field' type="text" placeholdername="street-number" value=${user.streetNumber} required> </td>
                                </tr>
                                <tr>
                                    <td> <label for="street-name">Street Name</label> </td>
                                    <td> <input class='edit-field' type="text" placeholdername="street-name" value=${user.streetName} required> </td>
                                </tr>
                                <tr>
                                    <td> <label for="street-type">Street Type</label> </td>
                                    <td> <input class='edit-field' type="text" placeholdername="street-type" value=${user.streetType} required> </td>
                                </tr>
                                <tr>
                                    <td> <label for="suburb">Suburb</label> </td>
                                    <td> <input class='edit-field' type="text" name="suburb" value=${user.suburb} required> </td>
                                </tr>
                                <tr>
                                    <td> <label for="state">State</label> </td>
                                    <td> <input class='edit-field' type="text" name="state" value=${user.state} required> </td>
                                </tr>
                                <tr>
                                    <td> <label for="postcode">Postcode</label> </td>
                                    <td> <input class='edit-field' type="text" name="postcode" value=${user.postcode} required> </td>
                                </tr>
                                <tr>
                                    <td> <label for="Country">Country</label></td>
                                    <td> <input class='edit-field' type="text" name="country" value=${user.country} required></td>
                                </tr>
                                <tr>
                                    <td> <label for="psw">Password</label> </td>
                                    <td> <input class='edit-field' type="password" name="pass" value=${user.password} required> </td>
                                </tr>
                                <tr>
                                    <td> <label for="psw">Confirm Password</label> </td>
                                    <td> <input class='edit-field' type="password" placeholder="Confirm your password" name="cpass" required> </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class='edit-item'>
                        <p class='edit-txt'> <a href="main.jsp"> Go Back </a></p>
                        <button type="submit" class="update-btn">Update Details</button>
                    </div>
                </div>
            </form>
            <%
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
                user = new User(firstName,lastName,email,password,phoneNumber,streetNumber,streetName,streetType,suburb,state,postcode,country);
                session.setAttribute("user",user);
            %>
        </div>
    </body>
</html>
