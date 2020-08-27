<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="home.css">
<title>VGuru</title>
</head>
<body>

<%
	response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
	if(session.getAttribute("username")==null)
	{
		response.sendRedirect("index.jsp");
	}
    String a=(String) session.getAttribute("username");
%>
<header>
<h1>VGuru</h1>

<form id="logout" method="post" action="progressparent">
<input type="hidden" name="email" value=<%out.println(a); %>>
<input type="submit" value="Logout">
</form>

<form id="profile" method="post" action="profile">
<input type="hidden" name="name1" value=<% out.print(a); %> >
<input type="submit" value="Profile">
</form>

<form id="covid" action="https://www.covid19india.org/" target="_blank">
<input type="submit" value="Covid-19">
</form>
</header>
<div id="w">
<div>
<img src="science.jpg">
</div>
<div>
<form id="science" method="post" action="science">
<input type="hidden" name="name1" value=<% out.print(a); %> >
<input type="submit" value="Click Here">
</form>
</div>
</div>

<div id="w">
<img src="maths.jpg">
<form id="maths" method="post" action="maths">
<input type="hidden" name="name1" value=<% out.print(a); %> >
<input type="submit" value="Click Here">
</form>
</div>
<div id="w">
<img src="activities.jpg">
<form id="activities" method="post" action="activities">
<input type="hidden" name="name1" value=<% out.print(a); %> >
<input type="submit" value="Click Here">
</form>
</div>
</body>
</html>