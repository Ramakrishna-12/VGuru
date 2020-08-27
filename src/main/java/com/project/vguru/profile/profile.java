package com.project.vguru.profile;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.project.vguru.register.model.Students;

/**
 * Servlet implementation class profile
 */
public class profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public profile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd=request.getRequestDispatcher("profile.jsp");
		rd.forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String emal=request.getParameter("name1");
		String url="jdbc:mysql://localhost:3306/vguru";
		String uname="root";
		String pass="mysql";
		String query="select * from student where email=?";

		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,uname,pass);
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, emal);
			ResultSet rs=ps.executeQuery();
			Students s=new Students();
			if(rs.next())
			{
				s.setParentemail(rs.getString("parent"));
				s.setEmail(rs.getString("email"));
				s.setName(rs.getString("name"));
				s.setPhone(rs.getString("phone"));
			}
			request.setAttribute("data", s);
			RequestDispatcher rd=request.getRequestDispatcher("profile.jsp");
			rd.forward(request, response);	
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
