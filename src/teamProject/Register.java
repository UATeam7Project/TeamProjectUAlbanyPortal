package teamProject;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Register extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection dbConnection = null;
		Statement sqlStatement = null;

		try{
			Class.forName("com.mysql.jdbc.Driver");

			dbConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/teamproject", "root", "csss");
			sqlStatement = dbConnection.createStatement();
			
			String sql = "INSERT INTO `account` " +
					"(`username`, `password`, `first_name`, `last_name`, `account_type`, `street_address`, `city`, `zipcode`)" +
					" VALUES ('" + request.getParameter("emailInput") + "', '" + request.getParameter("passwordInput") + "', " +
							"'" + request.getParameter("fNameInput") + "', '" + request.getParameter("lNameInput") + "'" +
							", '" + request.getParameter("Account_Type") + "', " +
							"'" + request.getParameter("sAddrInput") + "', '" + request.getParameter("cityInput") + "'" +
							", '" + request.getParameter("zipCodeInput") + "')";
			
			sqlStatement.executeUpdate(sql);
			
		}catch(Exception e){System.err.println(e.getMessage());}
	response.sendRedirect("index.jsp");
	}
}