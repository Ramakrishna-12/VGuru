package com.project.vguru.register.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.vguru.register.dao.loginDao;
import com.project.vguru.register.model.loginstudent;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	private loginDao logindao =new loginDao();
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();  
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		//request.setAttribute("email", email);
		loginstudent student = new loginstudent();
		student.setEmail(email);
		student.setPassword(password);
		try
		{
			if(logindao.loginstudents(student))
			{
				HttpSession session=request.getSession();
				session.setAttribute("username", email);
				response.sendRedirect("home.jsp");
				
							}
			else
			{
				out.print("Sorry username or password error");  
				response.sendRedirect("index.jsp");
				//RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
				//rd.forward(request, response);
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
		response.sendRedirect("index.jsp");
		//RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
		//rd.forward(request, response);
	}

}
