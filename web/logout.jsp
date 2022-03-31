<%-- 
    Document   : logout
    Created on : 2022年3月23日, 上午5:31:42
    Author     : roddi, Jingxuan Liu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="style.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <nav>
            <label class="logo"> IoTBay </label>
        </nav>
        
        <div style="margin-left:2.5cm;margin-top: 1cm">
            <h1 style="font-size:300%; text-align:left;">Logout</h1>
        </div>
        <div style="margin-left:2.5cm;margin-top: 1.5cm; padding-bottom: 1cm">
                <p style="font-size:150%; text-align:left;">
                    You have been successfully logged out.
                    <br></br>
                    Return to the home page <a href="index.jsp"> here </a>.
                </p>
        </div>
        
        <% session.invalidate(); %>
    </body>
</html>
