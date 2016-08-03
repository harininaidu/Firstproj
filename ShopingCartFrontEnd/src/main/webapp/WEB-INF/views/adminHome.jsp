<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<html lang="en">
<head>
  <title>DOTING HOMES</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/footer.js"></script>
    <!-- Fade Contact Footer -->
    <script type="text/javascript" src="js/contactFade.js"></script>

  <style>
  body{
    background-image: url(file:///C:/Users/admin/Desktop/homeback.jpg);
    background-size : cover;
  }
    /* Remove the navbar's default rounded borders and increase the bottom margin */
    .navbar {
      margin-bottom: 50px;
      background-color:  #330000;
      font-family: "Copperplate","Copperplate Gothic Light",fantasy;
      font-size: 15px;
      border-radius: 0;
    }
    
    /* Remove the jumbotron's default bottom margin */
     .jumbotron {
      
      min-height: 600px;
      background-image: url("file:///C:/Users/admin/Desktop/jumboback.jpg");
      background-color: #a6ff4d;
      font-family: "Copperplate", "Copperplate Gothic Light", fantasy;
      font-size: 500%;
      margin-bottom: 0;

    }
     h1
      {
         background-color: #ffcc99; 
       }                                                                                                                                                                                                                                                                                       
    .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 50%;
      margin: auto;
  }
   
    /* Add a gray background color and some padding to the footer */
    
.bg-pop-up {
  width:100%;
   height:100%;  
   position:fixed; 
   background:url(http://1.fimg.in/cms/Staticpage/why-fab/bg.png) repeat;
    display:block; left:0; top:0;  
    box-sizing:border-box; 
    display:none; z-index:9999;
  }

  .footer { background-color:  #ffb380;
      font-family: "Copperplate", "Copperplate Gothic Light", fantasy;
      padding: 50px;
    }


</style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="check.html">About</a>
    </div>

<div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.jsp">HOME</a></li>
        <li color=#FFFFFF><a href="http://freshome.com/2014/12/17/10-things-every-home-should-have/">PRODUCTS</a></li>
        <li color=#FFFFFF><a href="#">DEALS</a></li>
        <li color=#FFFFFF><a href="http://www.goodhousekeeping.com/home-decor-gallery/">BLOG</a></li>
        <li color=#FFFFFF><a href="locateus.jsp">LOCATE US</a></li>
        <li color=#FFFFFF><a href="callme.jsp">CONTACT</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="login.jsp"><span class="glyphicon glyphicon-user"></span> LOGIN</a></li>
        <li><a href="register.jsp"><span class="glyphicon glyphicon-user"></span> REGISTER!</a></li>
        <li><a href="myCart"><span class="glyphicon glyphicon-shopping-cart"></span>CART</a>( ${cartSize} )</li>
      </ul>
    </div>
  </div>
</nav>



  <div class="jumbotron">
  <div class="container text-center">
   
    <h1 style= "color: #2d1606" >DOTING HOMES</h1>
    <p style= "color: #2d1606">Furnish with your fingertips!</p>
  </div>
</div>

<ul id="menu">
    <c:forEach items="${categoryList}" var="category">
      <li><a style="color:blue;" href=${category.name} > ${category.name}</a>
        <ul>
          <c:forEach items="${category.products}" var="product">
            <li><a style="background-color:#00FF00" href="<c:url value='product/get/${product.id}'/>">${product.name}</a></li>
          </c:forEach>
        </ul></li>
    </c:forEach>
  </ul>

</div>

<div>
    <c:if test="${!empty selectedProduct.name}">
      <table>
        <tr>
          <th align="left" width="80">Product ID</th>
          <th align="left" width="120">Product Name</th>
          <th align="left" width="200">Product Description</th>
          <th align="left" width="80">Price</th>
          <th align="left" width="200">Product Category</th>
          <th align="left" width="200">Product Supplier</th>
          <th align="left" width="200">Add to Cart</th>
          
        </tr>
        <tr>
          <td align="left" >${selectedProduct.id}</td>
          <td align="left" >${selectedProduct.name}</td>
          <td align="left" >${selectedProduct.description}</td>
          <td align="left" >${selectedProduct.price}</td>
          <td align="left" >${selectedProduct.category.name}</td>
          <td align="left" >${selectedProduct.supplier.name}</td>
          <td><a href="<c:url value='/cart/add/${selectedProduct.id}' />">add to cart</a></td>
              <td><a href="<c:url value='/cart/add/${product.id}' />">add product</a></td>
            </tr>
      </table>
    </c:if>
     

 <hr color="red" size="5">

  <ul id="menu">
    <c:forEach items="${categoryList}" var="category">
      <li><a style="color:blue;" href=${category.name} > ${category.name}</a>
        <ul>
          <c:forEach items="${category.products}" var="product">
            <li><a style="background-color:#000000" href="<c:url value='product/get/${product.id}'/>">${product.name}</a></li>
          </c:forEach>
        </ul></li>
    </c:forEach>
  </ul>
  <hr color="red" size="5">
  <br><br><br>
  <div>
    <c:if test="${!empty selectedProduct.name}">
      <table>
        <tr>
          <th align="left" width="80">Product ID</th>
          <th align="left" width="120">Product Name</th>
          <th align="left" width="200">Product Description</th>
          <th align="left" width="80">Price</th>
          <th align="left" width="200">Product Category</th>
          <th align="left" width="200">Product Supplier</th>
          <th align="left" width="200">ADD TO CART</th>
          
        </tr>
        <tr>
          <td align="left" >${selectedProduct.id}</td>
          <td align="left" >${selectedProduct.name}</td>
          <td align="left" >${selectedProduct.description}</td>
          <td align="left" >${selectedProduct.price}</td>
          <td align="left" >${selectedProduct.category.name}</td>
          <td align="left" >${selectedProduct.supplier.name}</td>
              <td><a href="<c:url value='/cart/add/${selectedProduct.id}' />">add to cart</a></td>
              <td><a href="<c:url value='/cart/add/${product.id}' />">add product</a></td>    
        </tr>
      </table>
    </c:if>
  </div>

<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="file:///C:/Users/admin/Desktop/horizontalwallhang.jpg" alt="wallhanging" width="460" height="345">
        <div class="carousel-caption">
          <h3>WallHangings</h3>
          <p>Shop unique and handmade items directly from creative people around the world</p>
        </div>
      </div>

      <div class="item">
        <img src="file:///C:/Users/admin/Desktop/horizontalbed.jpg" alt="cushion" width="460" height="345">
        <div class="carousel-caption">
          <h3>Cushions & Beds</h3>
          <p>Live In Utmost Comfort!</p>
        </div>
      </div>
    
      <div class="item">
        <img src="file:///C:/Users/admin/Desktop/horizontaldining.jpg" alt="dining" width="460" height="345">
        <div class="carousel-caption">
          <h3>Tables & Tossels</h3>
          <p>Luxury lives in the finer details. It's a cloth napkin at a dinner table. It's a mint on your pillow before bed.</p>
        </div>
      </div>

      <div class="item">
        <img src="file:///C:/Users/admin/Desktop/horizontallighting.jpg" alt="dining" width="460" height="345">
        <div class="carousel-caption">
          <h3>Lighting & Shadings</h3>
          <p>Lighten up your world of happinness with all new collection of lights.!</p>
        </div>
      </div>


      <div class="item">
        <img src="file:///C:/Users/admin/Desktop/horizontalcouch.jpg" alt="Flower" width="460" height="345">
        <div class="carousel-caption">
          <h3>Couch Potato :)</h3>
          <p>The best vacation is just relaxing on the couch! </p>
        </div>
      </div>
  <div class="item">
        <img src="file:///C:/Users/admin/Desktop/horizontallinens.jpg" alt="Flower" width="460" height="345">
        <div class="carousel-caption">
          <h3>Linens</h3>
          <p>Jacquard collection of linens and towels.!</p>
        </div>
      </div>
  

</div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<div class="row">

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="file:///C:/Users/admin/Desktop/row1.jpg"alt="">
                            <div class="caption">
                                <h4 class="pull-right">Rs 699</h4>
                                <h4><a href="#">Cotton DoubleBedsheets</a>
                                </h4>
                                <p> Ahmedabad Cotton Basics 100% Cotton Double Bedsheet With 2 Pillow Covers</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">15 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="file:///C:/Users/admin/Desktop/row4.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"> Rs 899</h4>
                                <h4><a href="#">New & Popular</a>
                                </h4> 
                                <p>Tied Ribbons You are my World Printed Cushion(12 inch x 12 inch) with Filler</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">12 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="file:///C:/Users/admin/Desktop/row3.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right">Rs 299</h4>
                                <h4><a href="#">Mats & Carpets</a>
                                </h4>
                                <p>SWHF Coir and Rubber Bathroom Mat: 60X35 Cm, Virgin Rubber and Extremely Durable</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">31 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>
                    </div>
  <div class = "row">
                       <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="file:///C:/Users/admin/Desktop/row5.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"> Rs 566</h4>
                                <h4><a href="#">Blending Curtains</a>
                                </h4> 
                                <p>SWHF Coir and Rubber Bathroom Mat: 60X35 Cm, Virgin Rubber and Extremely Durable</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">12 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                     <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="file:///C:/Users/admin/Desktop/row6.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"> Rs 899</h4>
                                <h4><a href="#">Kitchen & Dining</a>
                                </h4> 
                                <p>Valerio Square Dinner Blue And Off White 50 Pcs</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">12 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>
                     <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="file:///C:/Users/admin/Desktop/row7.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"> Rs 499</h4>
                                <h4><a href="#">Storage units</a>
                                </h4> 
                                <p>Fill the gap with the latest kitchen tools and kitchen accessories that meet the needs of your evolved palette. </p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">12 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>
                    </div>


 <div style="text-align: center">
<iframe width="560" height="315" src="http://www.youtube.com/embed/BNagG6Wm9W0?&hd=1&autohide=1" frameborder="0" allowfullscreen>
<object width= "560" height="315"><param name="movie" value="http://www.youtube.com/v/BNagG6Wm9W0&hd=1&autohide=1"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/BNagG6Wm9W0&hd=1&autohide=1" type="application/x-shockwave-flash" allowfullscreen="true" width="560" height="315" allowscriptaccess="always">
</embed>
</object>
</iframe>
</div>

<div class="footer">                  
 
  <p align=center>Contact information: <a href="mailto:harini.blacka@gmail.com">harini.blacka@gmail.com</a>.</p>
  <p align=center><strong>Note:</strong>We will Keep You POSTED!!</p>
  <p align=center>Copyright ©2016 Design DAIRYMILK</p> 
  <form action="thankyou.jsp" class="form-inline" style="color: #c19a6b">Get deals:
    <input type="email" class="form-control" size="100" placeholder=" Enter you Email Address">
    <a href="thankyou.jsp" style="color: #000000 "><h3>REGISTER WITH US TODAY!!</h3></a>
       
    
  </form>
</footer>



</body>
</html>
