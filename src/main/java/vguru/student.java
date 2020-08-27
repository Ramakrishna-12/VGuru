package vguru;

import java.sql.*;

public class student 
{
	public static void main(String args[]) throws Exception
	{
		String url="jdbc:mysql://localhost:3306/vguru";
		String uname="root";
		String pass="mysql";
		String query="select name from student where email='hello@gmail.com' and password='1234567'";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,uname,pass);
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery(query);
		if(rs.next())
			System.out.println(rs.getString("name"));	
		st.close();
		con.close();
		
	}
}
