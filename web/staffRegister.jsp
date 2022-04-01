<%-- 
    Document   : staffRegister
    Created on : Mar 16, 2022, 12:59:19 PM
    Author     : Jefrich Pekantan 13822832
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="style.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Register </title>
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
                <li><a href="terms.jsp"> Terms </a></li>
            </ul>
        </nav>
        <div class="container">
            <form class="register-form" action="staffWelcome.jsp" method="POST">
                
                <div class='register-container'>
                    <div class='register-item'>
                        <h1 class="register-title"> Sign Up Here! </h1>
                    </div>
                    <div class='register-item'>
                        <table class="register-table">
                            <tbody>
                                <tr>
                                    <td> <label for="fname">First Name</label> </td>
                                    <td> <input class='register-field' type="text" placeholder="Enter First Name" name="fname" required> </td>
                                </tr>
                                
                                <tr>
                                    <td> <label for="lname">Last Name</label> </td>
                                    <td> <input class='register-field' type="text" placeholder="Enter Last Name" name="lname" required> </td>
                                </tr>
                                
                                <tr>
                                    <td> <label for="email">Email</label> </td>
                                    <td> <input class='register-field' type="email" placeholder="Enter Email Address" name="email" required> </td>
                                </tr>
                                
                                <tr>
                                    <td> <label for="phonenum">Phone Number</label> </td>
                                    <td> <input class='register-field' type="text" placeholder="Enter Phone Number" name="phonenum" required> </td>
                                </tr>
                                
                                <tr>
                                    <td> <label for="Country">Country</label></td>
                                    <td> <input class='register-field' type="text" placeholder="Enter Country" name="country" required></td>
                                </tr>
                                
                                <tr>
                                    <td> <label for="psw">Password</label> </td>
                                    <td> <input class='register-field' type="password" placeholder="Enter Your Password" name="pass" required> </td>
                                </tr>
                                
                                <tr>
                                    <td> <label for="psw">Confirm Password</label> </td>
                                    <td> <input class='register-field' type="password" placeholder="Confirm Password" name="psw1" required> </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class='register-item'>
                        <p class='register-txt'> By creating an account you agree to our <a href="terms.jsp">Terms & Privacy</a>.</p>
                        <button type="submit" class="create-btn">Create Account</button>
                    </div>
                    
                    <div class='register-item'>
                        <p class='register-txt'> <p>Already have an account? <a href="login.jsp">Sign in</a>.</p> </p>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>