<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>
	
	
	
	<form id="parent">
	<input type="hidden" name="email" value=<%out.println(session.getAttribute("username")); %>>
	</form>
	
	
	<%
	
	session.removeAttribute("username");
	session.invalidate();
	response.sendRedirect("index.jsp");
	
	%>
	
</body>
<script>

document.getElementById("parent").action="progressparent";
document.getElementById("parent").method="post";
document.getElementById("parent").submit();
</script>
</html>