package teamProject;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Authentication extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection dbConnection = null;
		Statement sqlStatement = null;
		
		String username = "Invalid";
		String usertype = "Invalid";
		
		try{
			Class.forName("com.mysql.jdbc.Driver");

			dbConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/teamproject", "root", "csss");
			sqlStatement = dbConnection.createStatement();
			
			String sql = "SELECT * FROM account WHERE username='" + request.getParameter("username") + 
					"' AND BINARY password='" + request.getParameter("password") + "'";
			ResultSet rs = sqlStatement.executeQuery(sql);
			
			while(rs.next()){
				username = rs.getString("username");
				usertype = rs.getString("account_type");
			}
			System.out.print("Auth.java: "+username +", "+ usertype+"\n");
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			session.setAttribute("usertype", usertype);
						
			rs.close();
			sqlStatement.close();
			dbConnection.close();

		}catch(Exception e){System.err.print(e.getMessage());}
	response.sendRedirect("index.jsp");
	}
}
