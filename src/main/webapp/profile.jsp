<%@page import="com.project.vguru.register.model.Students"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>VGuru</title>
<link rel="stylesheet" type="text/css" href="home.css">
</head>
<body>
<%
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
	if(session.getAttribute("username")==null)
	{
		response.sendRedirect("index.jsp");
	}
    String a=(String) session.getAttribute("username");
    
    Students s=(Students) request.getAttribute("data");
    
%>
<header>
<a href="home.jsp"><h1>VGuru</h1></a>  

<form id="logout" method="post" action="progressparent">
<input type="hidden" name="email" value=<%out.println(a); %>>
<input type="submit" value="Logout">
</form>

<form id="covid" action="https://www.covid19india.org/" target="_blank">
<input type="submit" value="Covid-19">
</form>

</header>
<table>
<tr><td>Name:</td><td><%out.println(s.getName()); %></td></tr>
<tr><td>Phone number:</td><td><%out.println(s.getPhone()); %></td></tr>
<tr><td>Parent Email:</td><td><%out.println(s.getParentemail()); %></td></tr>
<tr><td>Email:</td><td><%out.println(s.getEmail()); %></td></tr>
</table>
</body>






</html>