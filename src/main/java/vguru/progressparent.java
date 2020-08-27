package vguru;

import java.util.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.mail.*;
import javax.mail.internet.*;



/**
 * Servlet implementation class progressparent
 */
public class progressparent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public progressparent() {
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
		String url="jdbc:mysql://localhost:3306/vguru";
		String uname="root";
		String pass="mysql";
		String query="select * from student where email=?";
		
		final String from = "parigaram.ram12@gmail.com";
		final String password="Zxcvbnm@12";
		//String host = "localhost";
		//Properties properties = System.getProperties();
		//properties.setProperty("mail.smtp.host", host);
		Properties prop=new Properties();
		prop.put("mail.smtp.auth","true");
		prop.put("mail.smtp.starttls.enable","true");
		prop.put("mail.smtp.host","smtp.gmail.com");
		prop.put("mail.smtp.port", "587");
		
		Session session = Session.getInstance(prop,new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication()
			{
				return new PasswordAuthentication(from,password);
			}
		});
				
	
		//Session session = Session.getDefaultInstance(properties);
		
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,uname,pass);
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, email);
			ResultSet rs=ps.executeQuery();
			rs.next();
			int s=rs.getInt("sl1")+rs.getInt("sl2")+rs.getInt("sl3")+rs.getInt("sl4")+rs.getInt("sl5");
			int m=rs.getInt("ml1")+rs.getInt("ml2")+rs.getInt("ml3")+rs.getInt("ml4")+rs.getInt("ml5");
			int a=rs.getInt("al1")+rs.getInt("al2")+rs.getInt("al3")+rs.getInt("al4")+rs.getInt("al5");
			
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(from));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(rs.getString("parent")));
			//message.addRecipient(Message.RecipientType.TO, new InternetAddress("parigaram.ram12@gmail.com"));
			message.setSubject("Progress of Your Student "+rs.getString("name"));
			message.setText("Progress \n Science="+s+"/5.\n Mathematics="+m+"/5.\n Activities="+a+"/5.\n Thank You.\n Vguru");
			Transport.send(message);
			response.sendRedirect("logout.jsp");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
