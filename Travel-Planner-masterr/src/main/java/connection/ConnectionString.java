package connection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionString {

	public static Connection getCon(){
		
		Connection connection = null;

		try {
		    Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
		    e.printStackTrace();
		}
		String jdbcURL = "jdbc:mysql://localhost:3306/travelplanner";
		String username = "root";
		
		String password = "mitesh";

		try {
		     connection = DriverManager.getConnection(jdbcURL, username, password);
		    // Proceed with operations on the connection
		    // ...
		   // connection.close(); // Close the connection when done
		} catch (SQLException e) {
		    e.printStackTrace();
		    // Handle SQL exception - Connection error
		}

		
		return connection;
	}
}
