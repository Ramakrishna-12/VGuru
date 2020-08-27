package com.project.vguru.progress;

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



/**
 * Servlet implementation class science
 */
public class science extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public science() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email=request.getParameter("name1");
		if (email==null)
		{
			email=(String) request.getAttribute("mail");
		}
		String url="jdbc:mysql://localhost:3306/vguru";
		String uname="root";
		String pass="mysql";
		String query="select * from student where email=?";

		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,uname,pass);
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, email);
			ResultSet rs=ps.executeQuery();
			
			scienceprogress s=new scienceprogress();
			if(rs.next())
			{
				s.setSl1(rs.getInt("sl1"));
				s.setSl2(rs.getInt("sl2"));
				s.setSl3(rs.getInt("sl3"));
				s.setSl4(rs.getInt("sl4"));
				s.setSl5(rs.getInt("sl5"));
			}
			request.setAttribute("sdata", s);
			RequestDispatcher rd=request.getRequestDispatcher("science.jsp");
			rd.forward(request, response);	
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
