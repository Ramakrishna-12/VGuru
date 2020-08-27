<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google-signin-client_id" content="683868809553-cij80f2er6la68v07p6pkjer1tp0vm25.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js" async defer></script>

<title>VGuru</title>

<link rel="stylesheet" type="text/css" href="style.css">

</head>
<body>
	<form action="LoginServlet" method="get">
		<input type="email" name="email" placeholder="mail@example.com" required=""><br>
		<input type="password" name="password" placeholder="password" required=""><br>
		<button type="submit" id="signin">SIGN IN</button><br>
	</form>
	
	<form id="log">
	<input type="hidden" id="mail" name="mail">
	</form>
	
	<a href="register.jsp" id="register">don't have an account? Register!</a><a href="admin.jsp"> Admin?</a>
	<p>OR</p>
	<div class="g-signin2" data-onsuccess="onSignIn"></div>
</body>

<script type="text/javascript">

	function onSignIn(googleUser)
	{
		
		document.getElementById("mail").value=googleUser.getBasicProfile().getEmail();
		gapi.auth2.getAuthInstance().signOut()
		document.getElementById("log").action="googlelogin";
		document.getElementById("log").method="get";
		document.getElementById("log").submit();
		
	}

</script>
</html>