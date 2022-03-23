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
        
        <label for="Username"><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name ="Username" id="Username" required>
        
        <label for="Password"<b>Password</b></label>
    <input type="Password" placeholder="Enter Pasword" name="Password" id="Password" required>
    
    <label for="Repeat Password"<b>Repeat Password</b></label>
<input type="Repeat Password" placeholder="Please Re-enter password" name="Repeat Password" id="Repeat Password">
<hr>

<p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p><!-- comment -->
<button type="submit" class="StaffRegister">Register</button>

<p>Already have an account? <a href="#">Sign in</a>.</p><!-- comment -->

    </body>
</html>
