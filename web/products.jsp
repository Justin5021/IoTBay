<%-- 
    Document   : products
    Created on : May 15, 2022, 5:29:21 PM
    Author     : Jacky Bahary 13997263
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.isd.model.Staff" %>
<%@page import="uts.isd.model.Product" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="style.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Order History </title>
    </head>
    <body>
       <%
            ArrayList<Product> products = (ArrayList<Product>)session.getAttribute("products");
            Staff staff = (Staff)session.getAttribute("staff");
       %>
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
                    <p class="display-6">Products</p>
                    <p class="display-7">Staff ID: <%=staff.getStaffID()%></p>
                    <p class="display-7">Staff Name: <%=staff.getFirstName()%> <%=staff.getLastName()%></p>
                    <thead>
                      <tr>
                        <th scope="col">Product ID</th>
                        <th scope="col">Product Serial Number</th>
                        <th scope="col">Product Name</th>
                        <th scope="col">Product Category</th>
                        <th scope="col">Product Brand</th>
                        <th scope="col">Product Price</th>
                        <th scope="col">Product Quantity</th>
                        <th scope="col">Product Image URL</th>
                        <th scope="col">Supplier ID</th>
                      </tr>
                    </thead>
                    <% 
                        try {
                        for (Product product : products) {
                    %>
                    <tr>
                        <td><%=product.getProductID()%></td>
                        <td><%=product.getProductSerialNum()%></td>
                        <td><%=product.getProductName()%></td>
                        <td><%=product.getProductCategory()%></td>
                        <td><%=product.getProductBrand()%></td>
                        <td><%=product.getProductPrice()%></td>
                        <td><%=product.getProductQuantity()%></td>
                        <td><%=product.getProductImageURL()%></td>
                        <td><%=product.getSupplierID()%></td>
                    </tr>
                    <%
                        }

                        } catch (Exception e) {
                        e.printStackTrace();
                        }
                    %>
                </table> 
                <a href="staffMain.jsp"><button type="button" class="btn btn-primary">Back to Dashboard</button></a>
            </div>
        </div>
<!--        <div class ="container my-3">
            <p class="display-6">Delete Cart Contents</p>
            <form action="deleteCartServlet" method="POST">
                <div class="form-group pb-4">
                  <label for="productID">Product ID:</label>
                  <input type="number" class="product-field" name="productID" placeholder="Enter Product ID">
                </div>
                <button type="submit" class="btn btn-primary ">Submit</button>
            </form>
        </div>-->
    </body>
</html>
