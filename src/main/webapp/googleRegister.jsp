<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="register.css">
</head>
<body>
<%
String a=(String) request.getAttribute("email");

%>

<form action="StudentServlet" method="post">

		Full Name:<br><input type="text" name="name" placeholder="Full Name" required=""><br>
        Phone Number:<br><input type="text" name='phone' placeholder="phone number" required=""><br>
        Parent Email:<br><input type="email" name="parentemail" placeholder="example@gmail.com" required=""><br>
        Email:<br><input type="email" name="email" value=<% out.println(a); %> readonly><br>
        <br><input type="hidden" name="password" value="">
        <button type="submit" >Register</button>

</form>
</body>
</html>