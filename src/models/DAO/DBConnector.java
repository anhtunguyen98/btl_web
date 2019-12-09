package models.DAO;
import java.sql.Connection;
import java.sql.*;
public class DBConnector {
		public static Connection createConnection() {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
			    // db parameters
			    String url       = "jdbc:mysql://localhost:3306/baitaplon";
			    String user      = "root";
			    String password  = "anhtu234";
			    
			    // create a connection to the database
			    Connection conn = DriverManager.getConnection(url, user, password);
			    // more processing here
			    return conn;
			    // ...    
			} catch(SQLException e) {
			   System.out.println(e.getMessage());
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null; 
		}
		 
		

}
