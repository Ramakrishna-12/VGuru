package com.project.vguru.progress;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class scienceupdate
 */
public class scienceupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public scienceupdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email=request.getParameter("email");
		String lec=request.getParameter("l");
		String url="jdbc:mysql://localhost:3306/vguru";
		String uname="root";
		String pass="mysql";
		String query="update student set "+lec+" = 1 where email=?";
		
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,uname,pass);
		PreparedStatement ps=con.prepareStatement(query);
		ps.setString(1,email);
		ps.executeUpdate();
		
		//System.out.println(ps.executeUpdate());
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		request.setAttribute("mail", email);
		RequestDispatcher rd=request.getRequestDispatcher("science");
		rd.forward(request, response);
		//response.sendRedirect("science");
	}

}
