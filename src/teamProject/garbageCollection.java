package teamProject;
import java.sql.*;
public class garbageCollection {

		public static String init(String add,String city,String zip,String email,String phone, String time, String ap) 
		{
			Connection conn = null;
	        Statement stmt = null;
	        ResultSet rs = null;
	        String id=" ";
	        try {
	        	String dbURL ="jdbc:mysql://localhost:3306/teamproject";
	            String username = "root";
	            String password = "csss";
	            Class.forName("com.mysql.jdbc.Driver");
	            conn =DriverManager.getConnection(dbURL, username, password);
	            stmt = conn.createStatement();
	            stmt.executeUpdate("INSERT INTO scheduled_times " + "VALUES ('"+email+"','"+add+"'," +
	            		"'"+city+"','"+zip+"','"+time+ap+"',  '"+phone+"')");
	            if (stmt.execute("select * from scheduled_times")) {
	                rs = stmt.getResultSet();
	            } else {
	                System.err.println("select failed");
	            }
	            
	        } catch (ClassNotFoundException ex) {
	            System.err.println("Failed to load mysql driver");
	            System.err.println(ex);
	        } catch (SQLException ex) {
	            System.out.println("SQLException: " + ex.getMessage()); 
	            System.out.println("SQLState: " + ex.getSQLState()); 
	            System.out.println("VendorError: " + ex.getErrorCode()); 
	        } finally {
	            if (rs != null) {
	                try {
	                    rs.close();
	                } catch (SQLException ex) { /* ignore */ }
	                rs = null;
	            }
	            if (stmt != null) {
	                try {
	                    stmt.close();
	                } catch (SQLException ex) { /* ignore */ }
	                stmt = null;
	            }
	            if (conn != null) {
	                try {
	                    conn.close();
	                } catch (SQLException ex) { /* ignore */ }
	                conn = null;
	            }
	        }
	        return id;
	}

}