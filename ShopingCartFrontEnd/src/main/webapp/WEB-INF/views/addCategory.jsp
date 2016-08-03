<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="Header.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Category</title>
</head>
<style>
body
{
  background-image: url("file:///C:/Users/admin/Desktop/catback.jpg");
}
</style>

<body>

  <h2 style = "font-family: Copperplate,Copperplate Gothic Light,fantasy;font-size: 35px">ADD Category</h2>

  <form:form action="../addCategory" method="post">
    <table>
      <tr style = "font-family: Copperplate,Copperplate Gothic Light,fantasy;font-size: 20px">
        <td>Category ID:</td>
        <td><input type="text" name="id"></td>
      </tr>
      <tr style = "font-family: Copperplate,Copperplate Gothic Light,fantasy;font-size: 20px">
        <td>Category Name:</td>
        <td><input type="text" name="name"></td>
      </tr>
      <tr style = "font-family: Copperplate,Copperplate Gothic Light,fantasy;font-size: 20px">
        <td>Category Description:</td>
        <td><input type="text" name="description"></td>
      </tr>

      <tr style = "font-family: Copperplate,Copperplate Gothic Light,fantasy;font-size: 20px">
        <td ><input type="submit" value="Add">
        <td><input type="reset" value="Reset">
      </tr>
      
    </table>

  </form:form>

</body>
</html>