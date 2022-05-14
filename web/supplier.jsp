<%-- 
    Document   : supplier
    Created on : 2022年5月14日, 下午4:37:24
    Author     : roddi
--%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="uts.isd.model.Supplier"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="uts.isd.model.dao.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>

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
            <div class ="container my-3">
            <div class ="table-responsive">
                <table class="table table-sm table-bordered">
                    <p class="display-6">Supplier List</p>
                   
                <%
                    Supplier supplier = (Supplier) session.getAttribute("listout");
                %>
                
                
                    <thead>
                        <tr>
                            <th scope="col">SupplierID</th>
                            <th scope="col">Address</th>
                            <th scope="col">PhoneNumber</th>
                            <th scope="col">Name</th>
                            <th scope="col">Email</th>
                            <th scope="col">Add/Delete</th>

                        </tr>
                    </thead>
                    <tbody>

                            <tr>
                                <td>${listout.supplierID}</td>
                                <td>${listout.supplierAddress}</td>
                                <td>${listout.supplierPhone}</td>
                                <td>${listout.supplierName}</td>
                                <td>${listout.supplierEmail}</td>
                                <td><a class="btn-info" href="SupplierDBManager?id=<%=Supplier.getId()%>">add</a>&nbsp;
                                    <a class="btn-danger" href="SupplierDBManager?id=<%=Supplier.getID()%>">Delete</a>
                                </td>
                            </tr>

                    </tbody>

            </body>
            
            
        </div>
    </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>