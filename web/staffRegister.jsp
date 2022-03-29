<%-- 
    Document   : staffRegister
    Created on : Mar 16, 2022, 12:59:19 PM
    Author     : Jefrich Pekantan 13822832
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff Register</title>
        <title> Staff Register </title>
    </head>
    <body>
        <h1>Staff Register</h1>
        <p> Create an account </p>
        <hr>
        <table class="staffRegister-table">
            <tbody>
                <tr> 
                    <td> <label for="First Name"><b>First Name</b></label> </td>
                    <td> <input type="text" placeholder="Enter First Name" name ="First Name" id="First Name" required> </td>
                </tr>
                
                <tr>
        <td> <label for="Last Name"><b>Last Name</b></label> </td>
        <td> <input type="text" placeholder="Enter Last Name" name ="Last Name" id="Last Name" required> </td>
        </tr>
        
        <tr>
        <td> <label for="Phone Number"><b>Phone Number</b></label> </td>
        <td> <input type="text" placeholder="Enter Phone Number" name ="Phone Number" id="Phone Number" required> </td>
        </tr><!-- comment -->
        
        <tr>
        <td> <label for="Username"><b>Username</b></label> </td>
        <td> <input type="text" placeholder="Enter Username" name ="Username" id="Username" required> </td>
        </tr>
        
        <tr>
        <td> <label for="Password"<b>Password</b></label> </td>
        <td> <input type="text" placeholder="Enter Pasword" name="Password" id="Password" required> </td>
        </tr>
        
        <tr>
        <td> <label for="Repeat Password"<b>Repeat Password</b></label> </td>
        <td> <input type="text" placeholder="Please Re-enter password" name="Repeat Password" id="Repeat Password" required> </td>
        </tr>
        
        </tbody>
        </table>
<hr>
<p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p><!-- comment -->
<button type="submit" class="StaffRegister">Register</button>

<p>Already have an account? <a href="#">Sign in</a>.</p><!-- comment -->

    </body>
</html>
