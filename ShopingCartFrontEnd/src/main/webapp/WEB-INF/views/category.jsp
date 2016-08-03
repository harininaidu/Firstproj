<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<html>
<head>

<style type="text/css">
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
/* table {
    font-family: arial, sans-serif;
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
} */
</style>
<title>DOTING HOMES</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <style>
    
    .navbar {
      font-family: Copperplate,Copperplate Gothic Light,fantasy;
      font-size: 15px;
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

 <body background = "file:///C:/Users/admin/Desktop/catback.jpg">
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
        <li><a href="callme.jsp" style="color: #c19a6b;">CONTACT US</p></a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="login.jsp" style="color: #c19a6b;"><span class="glyphicon glyphicon-user" class="text-danger"></span>Login</a></li>
        <li><a href="shoppingcart.html" style="color: #c19a6b;"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
      </ul>
    </div>
  </div>
</nav>


  <h1 style="font-family: Copperplate,Copperplate Gothic Light,fantasy;font-size: 15px">Add a Category</h1>

  <c:url var="addAction" value="/category/add"></c:url>

  <form:form action="${addAction}" commandName="category">
    <table>
      <tr style="font-family: Copperplate,Copperplate Gothic Light,fantasy;font-size: 15px">
        <td><form:label path="id">
            <spring:message text="ID" />
          </form:label></td>
        <c:choose>
          <c:when test="${!empty category.id}">
            <td><form:input path="id" disabled="true" readonly="true" />
            </td>
          </c:when>

          <c:otherwise>
            <td><form:input path="id" pattern =".{6,7}" required="true" title="id should contains 6 to 7 characters" /></td>
          </c:otherwise>
        </c:choose>
      <tr style="font-family: Copperplate,Copperplate Gothic Light,fantasy;font-size: 15px">
      <form:input path="id" hidden="true"  />
        <td><form:label path="name">
            <spring:message text="Name" />
          </form:label></td>
        <td><form:input path="name" required="true" /></td>
      </tr>
      <tr style="font-family: Copperplate,Copperplate Gothic Light,fantasy;font-size: 15px">
        <td><form:label path="description">
            <spring:message text="Description" />
          </form:label></td>
        <td><form:input path="description" required="true" /></td>
      </tr>
      <tr style="font-family: Copperplate,Copperplate Gothic Light,fantasy;font-size: 15px">
        <td colspan="2"><c:if test="${!empty category.name}">
            <input type="submit"
              value="<spring:message text="Edit Category"/>" />
          </c:if> <c:if test="${empty category.name}">
            <input type="submit" value="<spring:message text="Add Category"/>" />
          </c:if></td>
      </tr>
    </table>
  </form:form>
  <br>
  <h3 style="font-family: Copperplate,Copperplate Gothic Light,fantasy;font-size: 25px">Category List</h3>
  <c:if test="${!empty categoryList}">
    <table class="tg">
      <tr>
        <th width="80" style = "font-family:Copperplate,Copperplate Gothic Light,fantasy;font-size: 15px">Category ID</th>
        <th width="120">Category Name</th>
        <th width="120">Category Description</th>
        <th width="60">Edit</th>
        <th width="60">Delete</th>
      </tr>
      <c:forEach items="${categoryList}" var="category">
        <tr>
          <td>${category.id}</td>
          <td>${category.name}</td>
          <td>${category.description}</td>
          <td><a href="<c:url value='category/edit/${category.id}' />">Edit</a></td>
          <td><a href="<c:url value='category/remove/${category.id}' />">Delete</a></td>
        </tr>
      </c:forEach>
    </table>
  </c:if>
   <div class="footer transparent footer-inverse">
<footer class="container-fluid text-center">
  <p style="color: #c19a6b">DOTING HOMES Copyright</p>  
 
</footer>
<div class="row"><div class="container-fluid"> <br></div></div>
<div class="row"><div class="container-fluid"> <br></div></div>
</body>
</html>