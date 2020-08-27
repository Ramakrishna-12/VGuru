package com.project.vguru.register.dao;
import java.sql.*;

import com.project.vguru.register.model.Students;
public class StudentDao 
{
	public int registerStudent(Students student) throws ClassNotFoundException, SQLException {
		String url="jdbc:mysql://localhost:3306/vguru";
		String uname="root";
		String pass="mysql";
		String query="insert into student (name,phone,parent,email,password) values (?,?,?,?,?);";
		Class.forName("com.mysql.jdbc.Driver");
		int result=0;
		try
		{
		Connection con = DriverManager.getConnection(url,uname,pass);
		PreparedStatement ps=con.prepareStatement(query);
		
		ps.setString(1,student.getName());
		ps.setString(2,student.getPhone());
		ps.setString(3, student.getParentemail());
		ps.setString(4,student.getEmail());
		ps.setString(5,student.getPassword());
		result=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return result;
}
}
