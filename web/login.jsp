<%-- 
    Document   : login
    Created on : Mar 16, 2022, 12:59:12 PM
    Author     : Jacky Bahary 13997263
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="style.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <nav>
            <label class="logo"> IoTBay </a></label>
            <ul>
                <li><a href="index.jsp"> Home </a></li>
                <li><a href="#"> About </a></li>
                <li><a href="#"> Contact </a></li>
                <li><a href="logout.jsp"> Logout </a></li>
            </ul>
        </nav>
        <div class="container">
            <div class ="login-container">
                <div class =" login-item">
                    <h1 class="login-title">Login</h1>
                </div>
                <div class ="login-item">
                    <table class ="login-table">
                        <form class="login-table" action="welcome.jsp" method ="POST">
                            <tr>
                                <td>
                                    <label class="login-text" for="email">Email:</label>
                                </td>
                                <td>
                                    <input class="login-field" type="text" id="email" name="email">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label class="login-text" for="pass">Password:</label>
                                </td>
                                <td>
                                    <input class="login-field" type="password" id="pass" name="pass">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    
                                </td>
                                <td>
                                    <input class="login-btn" type="submit" value="Login">
                                </td>
                            </tr>
                        </form>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
