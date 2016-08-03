<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<html>
<head>
<title>Product Page</title>
<style type="text/css">
body{
  background-image: url("file:///C:/Users/admin/Desktop/prodback.jpg");
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
<head>
<title>DOTING HOMES</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <style>
    
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


  <h1 style = "font-family: Copperplate,Copperplate Gothic Light,fantasy; font-size: 25px">Add a Product</h1>

  <c:url var="addAction" value="/product/add"></c:url>

  <form:form action="${addAction}" commandName="product">
    <table>
      <tr style = "font-family: Copperplate,Copperplate Gothic Light,fantasy; font-size: 15px">
        <td><form:label path="id">
            <spring:message text="ID" />
          </form:label></td>
        <c:choose>
          <c:when test="${!empty product.id}">
            <td><form:input path="id" disabled="true" readonly="true" />
            </td>
          </c:when>

          <c:otherwise>
            <td><form:input path="id" patttern =".{6,7}" required="true" title="id should contains 6 to 7 characters" /></td>
          </c:otherwise>
        </c:choose>
      <tr style = "font-family: Copperplate,Copperplate Gothic Light,fantasy; font-size: 15px">
      <form:input path="id" hidden="true"  />
        <td><form:label path="name">
            <spring:message text="Name" />
          </form:label></td>
        <td><form:input path="name" required="true" /></td>
      </tr>
      
      
      <tr style = "font-family: Copperplate,Copperplate Gothic Light,fantasy; font-size: 15px">
        <td><form:label path="price">
            <spring:message text="Price" />
          </form:label></td>
        <td><form:input path="price" required="true" /></td>
      </tr>
      
      <tr style = "font-family: Copperplate,Copperplate Gothic Light,fantasy; font-size: 15px">
        <td><form:label path="description">
            <spring:message text="Description" />
          </form:label></td>
        <td><form:input path="description" required="true" /></td>
      </tr>
      
      <tr style = "font-family: Copperplate,Copperplate Gothic Light,fantasy; font-size: 15px">
        <td><form:label path="supplier">
            <spring:message text="Supplier" />
          </form:label></td>
        <%-- <td><form:input path="supplier.name" required="true" /></td> --%>
         <td><form:select path="supplier.name" items="${supplierList}" itemValue="name" itemLabel="name" /></td>
      </tr>
      <tr style = "font-family: Copperplate,Copperplate Gothic Light,fantasy; font-size: 15px">
        <td><form:label path="category">
            <spring:message text="Category" />
          </form:label></td>
        <%-- <td><form:input path="category.name" required="true" /></td> --%>
        <td><form:select path="category.name" items="${categoryList}" itemValue="name" itemLabel="name" /></td>
      </tr>
      <tr style = "font-family: Copperplate,Copperplate Gothic Light,fantasy; font-size: 15px">
        <td colspan="2"><c:if test="${!empty product.name}">
            <input type="submit"
              value="<spring:message text="Edit Product"/>" />
          </c:if> <c:if test="${empty product.name}">
            <input type="submit" value="<spring:message text="Add Product"/>" />
          </c:if></td>
      </tr>
    </table>
  </form:form>
  <br>
  <h3 style = "font-family: Copperplate,Copperplate Gothic Light,fantasy; font-size: 25px">Product List</h3>
  <c:if test="${!empty productList}">
    <table class="tg">
      <tr>
        <th width="80">Product ID</th>
        <th width="120">Product Name</th>
        <th width="200">Product Description</th>
        <th width="80">Price</th>
        <th width="80">Product Category</th>
        <th width="80">Product Supplier</th>
        <th width="60">Edit</th>
        <th width="60">Delete</th>
      </tr>
      <c:forEach items="${productList}" var="product">
        <tr>
          <td>${product.id}</td>
          <td>${product.name}</td>
          <td>${product.description}</td>
          <td>${product.price}</td>
          <td>${product.category.name}</td>
          <td>${product.supplier.name}</td>
          <td><a href="<c:url value='product/edit/${product.id}' />">Edit</a></td>
          <td><a href="<c:url value='product/remove/${product.id}' />">Delete</a></td>
        </tr>
      </c:forEach>
    </table>
  </c:if>
   <div class="footer transparent footer-inverse">
<footer class="container-fluid text-center">
  <p style="color: #c19a6b">Doting Homes Copyright</p>  
 
</footer>
<div class="row"><div class="container-fluid"> <br></div></div>
<div class="row"><div class="container-fluid"> <br></div></div>
</body>
</html>