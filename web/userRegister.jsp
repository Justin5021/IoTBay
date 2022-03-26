<%-- 
    Document   : userRegister
    Created on : Mar 16, 2022, 12:58:30 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="index.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Register </title>
    </head>
    <body>
        <div class="register-container">
            <form class="register-form" action="RegisterServlet" method="POST">
              <h1 class="register-title">Create Account</h1>
              
              <label for="fname">First Name</label>
              <input type="text" placeholder="Enter first name" name="fname" required>
              
              <label for="lname">Last Name</label>
              <input type="text" placeholder="Enter last name" name="lname" required>
              
              <label for="email">Email</label>
              <input type="text" placeholder="Enter email address" name="email" required>
          
              <label for="phonenum">Phone Number</label>
              <input type="text" placeholder="Enter Phone Number" name="phonenum" required>

              <label for="street-number">Street Number</label>
              <input type="text" placeholder="Enter Street Number" name="street-number" required>

              <label for="street-name">Street Name</label>
              <input type="text" placeholder="Enter Street Name" required>

              <label for="street-type">Street Type</label>
              <input type="text" placeholder="Enter Street Type" name="street-type" required>

              <label for="suburb">Suburb</label>
              <input type="text" placeholder="Enter Suburb" name="suburb" required>

              <label for="state">State</label>
              <input type="text" placeholder="Enter State" name="state" required>

              <label for="postcode">Postcode</label>
              <input type="text" name="postcode" required>

              <label for="Country">Country</label>
              <input type="text" placeholder="Enter Country" name="country" required>
              
              <label for="psw">Password</label>
              <input type="password" placeholder="Enter your password" name="pass" required>

              <label for="psw">Confirm Password</label>
              <input type="password" placeholder="Confirm Password" name="psw1" required>
              <p class="already-have-account"> Confirm Password </p>
                
              <p>By creating an account you agree to our <a href="#"> Terms & Conditions</a></p>
              <button type="submit" class="create-btn">Create Account</button>
              
              <div class="already-have-account">
                  <p> Already have an account? <a href="login.jsp"> Login here! </a> </p>
              </div>
            </form>
        </div>
    </body>
</html>
