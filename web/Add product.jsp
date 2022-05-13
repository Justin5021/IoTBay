<%-- 
    Document   : product
    Created on : 2022年4月27日, 上午1:47:08
    Author     : Pei-han lee
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
                    <p class="display-6">Product</p>
                    <thead>
                      <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Serial_Number</th>
                        <th scope="col">Name</th>
                        <th scope="col">Category</th>
                        <th scope="col">Brand</th>
                        <th scope="col">Price</th>
                        <th scope="col">Quantity</th>
                        <th scope="col">Imagee</th>
                        <th scope="col">Supplier_ID</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td> <input class='add-product' type="text" placeholder="Enter ProductID" name="productID" > </td>
                        <td> <input class='add-product' type="text" placeholder="Enter Serial_Num" name="serialNum" > </td>
                        <td> <input class='add-product' type="text" placeholder="Enter ProductName" name="product_name" > </td>
                        <td> <input class='add-product' type="text" placeholder="Enter Category" name="category" > </td>
                        <td> <input class='add-product' type="text" placeholder="Enter Brand" name="brand" > </td>
                        <td> <input class='add-product' type="text" placeholder="Enter Price" name="price" > </td>
                        <td> <input class='add-product' type="text" placeholder="Enter Quantity" name="quantity" > </td>
                        <td> <input class='add-product' type="text" placeholder="URL" name="image" > </td>
                        <td> <input class='add-product' type="text" placeholder="Enter SupplierID" name="supplierID" > </td>
                      </tr>
                    </tbody>
                </table>
            </div>
            <div class="btn-container">
                <button type="submit" class="add-product" >Add</button>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
    