<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>DOTING HOMES!</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <style>
    
    .navbar {
      font-family: Copperplate,Copperplate Gothic Light,fantasy;
      font-size: 15px;
      background-color:  #330000;
      margin-bottom: 50px;
      border-radius: 10px;
      border-width:   5px;
      border-color: #cdae88;
      background-color: ;
      font-style: normal;
      font-weight: 10;
      
      
    }
    
   
     .jumbotron {
      margin-bottom: 20px;
    }
   
   
 .footer.transparent.footer-inverse .footer {
    border-width: 0px;
    -webkit-box-shadow: 0px 0px;
    box-shadow: 0px 0px;
    background-color: rgba(0,0,0,0.0);
    background-image: -webkit-gradient(linear, 50.00% 0.00%, 50.00% 100.00%, color-stop( 0% , rgba(0,0,0,0.00)),color-stop( 100% , rgba(0,0,0,0.00)));
    background-image: -webkit-linear-gradient(270deg,rgba(0,0,0,0.00) 0%,rgba(0,0,0,0.00) 100%);
    background-image: linear-gradient(180deg,rgba(0,0,0,0.00) 0%,rgba(0,0,0,0.00) 100%);
}
   table {
    font-family: "Copperplate","Copperplate Gothic Light",fantasy;
      font-size: 15px;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
} 
  </style>

<title>DOTING HOMES</title>
</head>
<body>
<body background = "file:///C:/Users/admin/Desktop/adminback.jpg">
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



<h4 style= "font-family: Copperplate,Copperplate Gothic Light,fantasy;
      font-size: 25px">Please enter your Shipping details </h4> <br><br>

<form:form action="ship"  method="post">
    <table>
      <tr style= "font-family: Copperplate,Copperplate Gothic Light,fantasy;
      font-size: 15px">
        <td>name</td>
        <td><input type="text" name="name">
      
        </td>
      </tr>
      <tr style= "font-family: Copperplate,Copperplate Gothic Light,fantasy;
      font-size: 15px">
      
      </tr>
      <tr style= "font-family: Copperplate,Copperplate Gothic Light,fantasy;
      font-size: 15px">
        <td>contact number</td>
        <td><input type="text" name="contact"></td>
      </tr>
      <tr style= "font-family: Copperplate,Copperplate Gothic Light,fantasy;
      font-size: 15px">
      
      </tr>
      <tr style= "font-family: Copperplate,Copperplate Gothic Light,fantasy;
      font-size: 15px">
        <td>address line 1</td>
        <td><input type="text" name="ad1"></td>
      </tr>
      <tr>
      
      </tr>
      <tr style= "font-family: Copperplate,Copperplate Gothic Light,fantasy;
      font-size: 15px">
        <td>address line 2</td>
        <td><input type="text" name="ad2"></td>
      </tr>
      
      <tr style= "font-family: Copperplate,Copperplate Gothic Light,fantasy;
      font-size: 15px">
        <td>Email:</td>
        <td><input type="email" name="mail"></td>
      </tr>
      <br>
      <tr style= "font-family: Copperplate,Copperplate Gothic Light,fantasy;
      font-size: 15px">
        <td>city</td>
        <td><input type="text" width="20" height="10" name="city"></td>
      </tr>
      
      <tr style= "font-family: Copperplate,Copperplate Gothic Light,fantasy;
      font-size: 15px">
        <td>state</td>
        <td><input type="text" width="20" height="10" name="state"></td>
      </tr>
      <tr style= "font-family: Copperplate,Copperplate Gothic Light,fantasy;
      font-size: 15px">
        <td>zip code</td>
        <td><input type="text" width="20" height="10" name="zip"></td>
      </tr>
      
      

      <tr style= "font-family: Copperplate,Copperplate Gothic Light,fantasy;
      font-size: 15px">
        <td><input type="submit" value="Register">
        </td></br>
        <td><input type="reset" value="Reset">
        </td>
        <br>
      </tr>
      
    </table>

  </form:form>  
<div class="footer transparent footer-inverse">
<footer class="container-fluid text-center">
  <p style="color: #c19a6b">DOTING HOMES<h3>Furnish with your fingertips!</h3></p>  
  <form action="thankyou.jsp" class="form-inline" style="color: #c19a6b">Get deals:
    <input type="email" class="form-control" size="100" placeholder=" Enter you Email Address">
    <a href="thankyou.jsp" style="color: #000000 "><h3>REGISTER WITH US TODAY!!</h3></a>
       
    
  </form>
</footer>
<div class="row"><div class="container-fluid"> <br></div></div>
<div class="row"><div class="container-fluid"> <br></div></div>
</body>
</html>