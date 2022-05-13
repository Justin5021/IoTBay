<%-- 
    Document   : browsing
    Created on : Mar 20, 2022, 2:38:33 AM
    Author     : Justin
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
        <title> Browse </title>
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
        
<!--        <div class="container">
            <div>
		<form class="navbar-form navbar-right">
                    <div class="form-group">
			<input  placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default">Submit</button>
		</form>
            </div>
	</div>
        
        <h1 class="heading">products</h1>-->

        <div class="container text-center pt-4">
            <h2 class="title">Products</h2>

            <!--first row-->
            <div class="row">
                <div class="col">
                    <div class="image">
                        <img src="img" alt="">
                    </div>
                    <div class="content">
                        <h3>product1</h3>
                        <div class="price">$550</div>
                    </div>
                    <div class="info">
                        <h4>product info</h4>
                        <p>infoinfoinfo</p>
                        <a href="#"><button>add to cart</button></a>
                    </div>
                </div>

                <div class="col">
                    <div class="image">
                        <img src="img" alt="">
                    </div>
                    <div class="content">
                        <h3>product2</h3>
                        <div class="price">$550</div>
                    </div>
                    <div class="info">
                        <h4>product info</h4>
                        <p>infoinfoinfo</p>
                        <a href="#"><button>add to cart</button></a>
                    </div>
                </div>

                <div class="col">
                    <div class="image">
                        <img src="img" alt="">
                    </div>
                    <div class="content">
                        <h3>product3</h3>
                        <div class="price">$550</div>
                    </div>
                    <div class="info">
                        <h4>product info</h4>
                        <p>infoinfoinfo</p>
                        <a href="#"><button>add to cart</button></a>
                    </div>
                </div>

                <div class="col">
                    <div class="image">
                        <img src="img" alt="">
                    </div>
                    <div class="content">
                        <h3>product4</h3>
                        <div class="price">$550</div>
                    </div>
                    <div class="info">
                        <h4>product info</h4>
                        <p>infoinfoinfo</p>
                        <a href="#"><button>add to cart</button></a>
                    </div>
                </div>
            </div>

            <!--Second Row-->
            <div class="row">
                <div class="col">
                    <div class="image">
                      <img src="img" alt="">
                    </div>
                    <div class="content">
                      <h3>product1</h3>
                      <div class="price">$550</div>
                    </div>
                    <div class="info">
                      <h4>product info</h4>
                      <p> Info Info Info </p>
                      <a href="#"><button>add to cart</button></a>
                    </div>
                </div>

                <div class="col">
                    <div class="image">
                        <img src="img" alt="">
                    </div>
                    <div class="content">
                        <h3>product2</h3>
                        <div class="price">$550</div>
                    </div>
                    <div class="info">
                        <h4>product info</h4>
                        <p>infoinfoinfo</p>
                        <a href="#"><button>add to cart</button></a>
                    </div>
                </div>

                <div class="col">
                    <div class="image">
                        <img src="img" alt="">
                    </div>
                    <div class="content">
                        <h3>product3</h3>
                      <div class="price">$550</div>
                    </div>
                    <div class="info">
                        <h4>product info</h4>
                        <p>infoinfoinfo</p>
                        <a href="#"><button>add to cart</button></a>
                    </div>
                </div>

                <div class="col">
                    <div class="image">
                        <img src="img" alt="">
                    </div>
                    <div class="content">
                        <h3>product4</h3>
                        <div class="price">$550</div>
                    </div>
                    <div class="info">
                        <h4>product info</h4>
                        <p>infoinfoinfo</p>
                        <a href="#"><button>add to cart</button></a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
