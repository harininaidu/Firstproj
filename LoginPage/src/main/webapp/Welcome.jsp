<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<Style>
h2{  
color:white; 
background-color: purple;  
padding:5px;  
font-size: 50px;
text-align: center; 
} 
body {  
	background-color : #1a3300;
	font-family : "Courier New", Courier, monospace;
	color:#ffff00;
	font-size: 30px;
	text-align: center;
}
</Style>
<body>

<%  out.println("WELCOME");
out.println(request.getParameter("userID")+("!!"));
out.println("you are now logged in!!"); 
%>
</body>
</html>