<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DOTING HOMES!</title>
<style type="text/css">
.navbar {
font-family: "Copperplate","Copperplate Gothic Light",fantasy;
      font-size: 15px;
      background-color:#330000;
      margin-bottom: 50px;
      border-radius: 10px;
      border-width:   5px;
      border-color: #cdae88;
      background-color: ;
      font-style: normal;
      font-weight: 10;
      
      
    }

.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
}

.tg td {
font-family: "Copperplate","Copperplate Gothic Light",fantasy;
      font-size: 15px;
     
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fff;
}

.tg th {
font-family: "Copperplate","Copperplate Gothic Light",fantasy;
      font-size: 15px;
     
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #f0f0f0;
}

.tg .tg-4eph {
	background-color: #f9f9f9
}
#bg {
  position: fixed; 
  top: -50%; 
  left: -50%; 
  width: 200%; 
  height: 200%;
}
#bg img {
  position: absolute; 
  top: 0; 
  left: 0; 
  right: 0; 
  bottom: 0; 
  margin: auto; 
  min-width: 50%;
  min-height: 50%;
}
</style>
</head>
<%-- <%@include file="Header.jsp" %> 
 --%> 
 <body background = "file:///C:/Users/admin/Desktop/supback.jpg">
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
<c:forEach items="${cartList}" var="cart">
<a href="<c:url value='cart/remove/${cart.id}' />">Delete</a>
</c:forEach>
<div>
<h5 style = "font-family: Copperplate,Copperplate Gothic Light,fantasy;
      font-size: 15px">PLEASE ENTER SHIPPING DETAILS</h5>
 
 <form:form action="ship"  method="post">
		<table>
			<tr style="  font-family: Copperplate,Copperplate Gothic Light,fantasy;
      font-size: 15px">
				<td>name</td>
				<td><input type="text" name="name">
			
				</td>
			</tr>
			<tr>
			
			</tr>
			<tr  style="  font-family: Copperplate,Copperplate Gothic Light,fantasy;
      font-size: 15px">
				<td>contact number</td>
				<td><input type="text" name="contact"></td>
			</tr>
			<tr>
			
			</tr>
			<tr  style="  font-family: Copperplate,Copperplate Gothic Light,fantasy;
      font-size: 15px">
				<td>address line 1</td>
				<td><input type="text" name="ad1"></td>
			</tr>
			<tr>
			
			</tr>
			<tr  style="  font-family: Copperplate,Copperplate Gothic Light,fantasy;
      font-size: 15px">
				<td>address line 2</td>
				<td><input type="text" name="ad2"></td>
			</tr>
			
			<tr  style="  font-family: Copperplate,Copperplate Gothic Light,fantasy;
      font-size: 15px">
				<td>Email:</td>
				<td><input type="email" name="mail"></td>
			</tr>
			<br>
			<tr>
				<td>city</td>
				<td><input type="text" width="20" height="10" name="city"></td>
			</tr>
			
			<tr  style="  font-family: Copperplate,Copperplate Gothic Light,fantasy;
      font-size: 15px">
				<td>state</td>
				<td><input type="text" width="20" height="10" name="state"></td>
			</tr>
			<tr>
				<td>zip code</td>
				<td><input type="text" width="20" height="10" name="zip"></td>
			</tr>
			
			

			<tr  style="  font-family: Copperplate,Copperplate Gothic Light,fantasy;
      font-size: 15px">
				<td><input type="submit" value="Register">
				</td></br>
				<td><input type="reset" value="Reset">
				</td>
				<br>
			</tr>
			
		</table>

	</form:form>  
 </div>


	<div class="footer transparent footer-inverse">
<footer class="container-fluid text-center">
  <p style="color: #c19a6b">Online Store Copyright:<h3>AN SD INC ENTERPRISE</h3></p>  
  <form action="thankyou.jsp" class="form-inline" style="color: #c19a6b">Get deals:
    <input type="email" class="form-control" size="100" placeholder=" Enter you Email Address">
    <a href="thankyou.jsp" style="color: #000000 "><h3>REGISTER WITH US TODAY!!</h3></a>
       
    
  </form>
  

<p id="demo"></p>
</footer>
<div class="row"><div class="container-fluid"> <br></div></div>
<div class="row"><div class="container-fluid"> <br></div></div>
</body>
</html>