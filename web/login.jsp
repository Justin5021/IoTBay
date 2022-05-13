<%-- 
    Document   : login
    Created on : Mar 16, 2022, 12:59:12 PM
    Author     : Jacky Bahary 13997263
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="style.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Main </title>
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
        <div class="container" style="margin-top: 10%">
            <div class ="login-container text-center">
                <div class =" login-item">
                    <h1 class="login-title"><strong>Login</strong></h1>
                </div>
                <div class ="login-item row justify-content-center">
                    <form class="login-table" action="LoginServlet" method ="POST">
                        <table class ="login-table table table-responsive" style="width: auto;">
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
                        </table>
                        <div>
                            <button href="welcome.jsp" type="submit" class="btn login">Login</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
