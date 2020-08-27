<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<form action="adminlogin" method="post">
		<input type="email" name="email" placeholder="mail@example.com" required=""><br>
		<input type="password" name="password" placeholder="password" required=""><br>
		<button type="submit" id="signin">SIGN IN</button><br>
	</form>
</body>
</html>