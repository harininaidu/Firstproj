<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>

<head>
<title>DOTING HOMES</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <style>
    
    .navbar {
      background-color:  #330000;
      font-family: "Copperplate","Copperplate Gothic Light",fantasy;
      font-size: 15px;
      margin-bottom: 50px;
      border-radius: 10px;
      border-width:   5px;
      border-color: #cdae88;
    
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
    
  </style>

<title>DOTING HOMES</title>
</head>

<body background = "file:///C:/Users/admin/Desktop/adminback.jpg">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="NewFile.html" style="color: #c19a6b " >HOME FURNISHINGS</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="index.jsp" style="color:#c19a6b " >HOME</p></a></li>
        <li><a href="productList.jsp" style="color: #c19a6b ">PRODUCTS</p></a></li>
        <li><a href="index.jsp" style="color: #c19a6b ">BLOG</p></a></li>
        <li><a href="" style="color: #c19a6b ">DEALS</p></a></li>
        <li><a href="index.jsp" style="color: #c19a6b;">CONTACT US</p></a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="login.jsp" style="color: #c19a6b;"><span class="glyphicon glyphicon-user" class="text-danger"></span>Login</a></li>
        <li><a href="shoppingcart.html" style="color: #c19a6b;"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
      </ul>
    </div>
  </div>
</nav>



  <h2 style = "font-family: Copperplate,Copperplate Gothic Light,fantasy;font-size: 35px">Please fill the details</h2>

  <form:form action="register"  method="post">
    <table>
      <tr style = "font-family: Copperplate,Copperplate Gothic Light,fantasy;font-size: 20px">
        <td >User ID:</td>
        <td><input type="text" name="id">
      
        </td>
      </tr>
      <tr>
      
      </tr>
      <tr  style = "font-family: Copperplate,Copperplate Gothic Light,fantasy;font-size: 20px">
        <td>User Name:</td>
        <td><input type="text" name="name"></td>
      </tr>
      <tr>
      
      </tr>
      <tr  style = "font-family: Copperplate,Copperplate Gothic Light,fantasy;font-size: 20px">
        <td>Password:</td>
        <td><input type="text" name="password"></td>
      </tr>
      <tr>
      
      </tr>
      <tr  style = "font-family: Copperplate,Copperplate Gothic Light,fantasy;font-size: 20px">
        <td>Mobile No:</td>
        <td><input type="text" name="contactNumber"></td>
      </tr>
      
      <tr  style = "font-family: Copperplate,Copperplate Gothic Light,fantasy;font-size: 20px">
        <td>Email:</td>
        <td><input type="email" name="mailID"></td>
      </tr>
      <br>
      <tr  style = "font-family: Copperplate,Copperplate Gothic Light,fantasy;font-size: 20px">
        <td>Addres:</td>
        <td><input type="texta" width="20" height="10" name="address"></td>
      </tr>
      <tr>
      
      </tr>
      

      <tr  style = "font-family: Copperplate,Copperplate Gothic Light,fantasy;font-size: 25px">
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
  <p style = "font-family: Copperplate,Copperplate Gothic Light,fantasy;font-size: 15px">Doting Homes Copyright</p>  
  <form class="form-inline" style="color: #c19a6b;font-family: Copperplate,Copperplate Gothic Light,fantasy;font-size: 15px">Get deals:
    <input type="email" class="form-control" size="50" placeholder="Email Address">
    <button type="button" class="btn btn-danger" style = "font-family: Copperplate,Copperplate Gothic Light,fantasy;font-size: 35px">Subscribe</button>
  </form>
</footer>
<div class="row"><div class="container-fluid"> <br></div></div>
<div class="row"><div class="container-fluid"> <br></div></div>
</body>
</html>