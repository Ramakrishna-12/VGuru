<%@ page import="java.sql.*" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="home.css">
<style>
body
{
	background-color:#678dac;
}

table
{
	border-collapse: collapse;
	width:80%;
}
td
{
color:#f5fbf5;
border:1px solid #f5fbf5;


}

</style>
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

<form id="logout" action="logout.jsp">
<input type="submit" value="Logout">
</form>



<form id="covid" action="https://www.covid19india.org/" target="_blank">
<input type="submit" value="Covid-19">
</form>
</header>






<table>
<tr>
<td>Email</td>
<td>Name</td>
<td>Science / 5</td>
<td>Mathematics / 5</td>
<td>Activities / 5</td>
</tr>
<%


String url="jdbc:mysql://localhost:3306/vguru";
String uname="root";
String pass="mysql";
String query="select * from student";
Connection con;
try {
	Class.forName("com.mysql.jdbc.Driver");
	 con = DriverManager.getConnection(url,uname,pass);
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(query);
	
	
	
	while(rs.next())
	{
		
	%>
		
		<td><%out.print(rs.getString(4)); %></td>
	<td><%out.print(rs.getString(2));  %></td>
	<td><%out.print(rs.getInt(7)+rs.getInt(8)+rs.getInt(9)+rs.getInt(10)+rs.getInt(11)); %></td>
	<td><%out.print(rs.getInt(12)+rs.getInt(13)+rs.getInt(14)+rs.getInt(15)+rs.getInt(16));  %></td>
	<td><%out.print(rs.getInt(17)+rs.getInt(18)+rs.getInt(19)+rs.getInt(20)+rs.getInt(21));  %></td>
	</tr>
		
		
		
	<%
	
	}

} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}


%>
</table>
</body>
</html>