package booq.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import booq.beans.Customer;

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
	
	public static void insert(DBConnectionPool connPool, Customer c) {
		String query = "insert into Customer (id, email, cName, passwd,	"
				+ "addrId, ccName, ccNumber, ccExpire) values ("
				+ c.getId() 	  + ", "
				+ c.getEmail()    + ", "
				+ c.getcName()    + ", "
				+ c.getPasswd()   + ", "
				+ c.getAddrId()   + ", "
				+ c.getCcName()	  + ", "
				+ c.getCcNumber() + ", "
				+ c.getCcExpire() + ")";
		
		try {
			Connection conn = null;
			try {
				conn = connPool.getConnection();
			} catch (Exception e) { e.printStackTrace(); }
			
			if (conn != null) {
				Statement s = conn.createStatement();
				s.executeUpdate(query);
				s.close();
			}
			connPool.closeAll();
		} catch (SQLException e) { e.printStackTrace(); }
	}
}
