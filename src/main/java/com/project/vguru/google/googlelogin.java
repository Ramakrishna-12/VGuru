package com.project.vguru.google;

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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class googlelogin
 */
public class googlelogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public googlelogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email=request.getParameter("mail");
		String url="jdbc:mysql://localhost:3306/vguru";
		String username="root";
		String pass="mysql";
		String query="select * from student where email=?";
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,pass);
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,email);
			ResultSet rs=ps.executeQuery();
			boolean r=rs.next();
			if (r)
			{
				HttpSession session=request.getSession();
				session.setAttribute("username", email);
				response.sendRedirect("home.jsp");
			}
			else
			{
				request.setAttribute("email", email);
				//response.sendRedirect("googleRegister.jsp");
				RequestDispatcher rd=request.getRequestDispatcher("googleRegister.jsp");
				rd.forward(request, response);
			}
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
