package com.project.vguru.register.dao;
import java.sql.*;



import com.project.vguru.register.model.loginstudent;
public class loginDao {
	


	public boolean loginstudents(loginstudent student) throws ClassNotFoundException
	{
		
		String url="jdbc:mysql://localhost:3306/vguru";
		String uname="root";
		String pass="mysql";
		String query="select * from student where email=? and password=?";
		boolean result=false;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,uname,pass);
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, student.getEmail());
			ps.setString(2, student.getPassword());
			ResultSet rs=ps.executeQuery();  
			result=rs.next();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return result;
	}

}
