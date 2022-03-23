<%-- 
    Document   : login
    Created on : Mar 16, 2022, 12:59:12 PM
    Author     : Jacky Bahary 13997263
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Login</h1>
        <table>
            <form action="index.jsp">
                <tr>
                    <td>
                        <label for="email">Email:</label>
                    </td>
                    <td>
                        <input type="text" id="email" name="email">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="name">Name:</label>
                    </td>
                    <td>
                        <input type="text" id="name" name="name">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="Login">
                    </td>
                </tr>
            </form>
        </table>
    </body>
</html>
