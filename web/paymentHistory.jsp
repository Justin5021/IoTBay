<%-- 
    Document   : paymentHistory
    Created on : Apr 19, 2022, 4:14:28 PM
    Author     : Jacky Bahary 13997263
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:derby://localhost:1527/";
String dbName = "usersdb";
String userId = "iotbay";
String password = "admin";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="style.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Payment History </title>
    </head>
    <body>
        <nav class="navbar navbar-expand-md navbar-dark bg-primary">
            <div class="container">
                <a href="#" class="navbar-brand"> <h1> IoTBay </h1> </a>
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
        <div class ="container my-3">
                <div class ="table-responsive">
                    <table class="table table-sm table-bordered">
                        <p class="display-6">Payment History</p>
                        <thead>
                        <tr>
                            <th scope="col">Payment ID</th>
                            <th scope="col">Payment Total</th>
                            <th scope="col">Payment Info ID</th>
                        </tr>
                        </thead>
                    <%
                        try {
                        connection = DriverManager.getConnection(
                        connectionUrl + dbName, userId, password);
                        statement = connection.createStatement();
                        String sql = "SELECT * FROM PAYMENT";

                        resultSet = statement.executeQuery(sql);
                        while (resultSet.next()) {
                    %>
                    <tr>
                        <td><%=resultSet.getString("PaymentID")%></td>
                        <td><%=resultSet.getString("PaymentTotal")%></td>
                        <td><%=resultSet.getString("PaymentInfoID")%></td>
                    </tr>
                    <%
                        }

                        } catch (Exception e) {
                        e.printStackTrace();
                        }
                    %>
                </table>
            </div>
            <div class="btn-container-item text-center" style="padding: 0.75rem">
                    <a href="payment.jsp">
                        <button class="view-btn btn btn-outline-secondary btn-lg">
                            <i class="fas fa-hourglass"></i> Add payment
                        </button>
                    <a/>
            </div>
                
            <form action="DeletePaymentInfoServlet" >
                <p class="display-6">Delete Payment Info</p>
                <Label>Payment Info ID:</label>
                <input type="number" name="PaymentInfoID" placeholder="Enter Info ID">
                <div class="btn-container-item" style="padding: 0.75rem">
                        <button type="submit" class="view-btn btn btn-outline-secondary btn-lg">Delete payment</button>
                </div>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
