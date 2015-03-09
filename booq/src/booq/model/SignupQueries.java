package booq.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SignupQueries {
	//returns the id of the Customer
	//returns -1 if not found
	public static int validateCredentials(DBConnectionPool connPool,
										  String email, String passwd) {
		String query = "select id from Customer where email = '" + email
				+ "' and passwd = '" + passwd + "'";
		int custId = -1;
		
		try {
			Connection conn = null;
			try {
				conn = connPool.getConnection();
			} catch (Exception e) { e.printStackTrace(); }
			
			if (conn != null) {
				Statement s = conn.createStatement();
				ResultSet rs = s.executeQuery(query);
				if (rs.next()) {
					custId = rs.getInt(1);
				}
				rs.close();
				s.close();
			}
			connPool.closeAll();
		} catch (SQLException e) { e.printStackTrace(); }
		
		return custId;
	}
}
