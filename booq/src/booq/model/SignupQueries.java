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
		return getIntQuery(connPool, query);
	}
	
	public static int getAddrId(DBConnectionPool connPool, Customer c) {
		String query = "select id from Address where streetAddr = '"
				+ c.getStreetAddr() + "' and city = '" + c.getCity() + "'";
		return getIntQuery(connPool, query);
	}
	
	private static int getIntQuery(DBConnectionPool connPool, String query) {
		int id = -1;
		
		try {
			Connection conn = null;
			try {
				conn = connPool.getConnection();
			} catch (Exception e) { e.printStackTrace(); }
			
			if (conn != null) {
				Statement s = conn.createStatement();
				ResultSet rs = s.executeQuery(query);
				if (rs.next()) {
					id = rs.getInt(1);
				}
				rs.close();
				s.close();
			}
			connPool.closeAll();
		} catch (SQLException e) { e.printStackTrace(); }
		
		return id;
	}
	
	public static int insert(DBConnectionPool connPool, Customer c) {
		int custId = -1;
		String query1 = "insert into Customer (id, email, cName, passwd,	"
				+ "ccName, ccNumber, ccExpire) values ("
				+ c.getId() 	  + ", '"
				+ c.getEmail()    + "', '"
				+ c.getcName()    + "', '"
				+ c.getPasswd()   + "', '"
				+ c.getCcName()	  + "', '"
				+ c.getCcNumber() + "', '"
				+ c.getCcExpire() + "')";
		System.out.println(query1);
		String query2 = "insert into Address (id, streetAddr, city, state, "
				+ "country, zip, apptNo) values ("
				+ c.getAddrId() 	+ ", '"
				+ c.getStreetAddr() + "', '"
				+ c.getCity() 		+ "', '"
				+ c.getState() 		+ "', '"
				+ c.getCountry() 	+ "', '"
				+ c.getZip() 		+ "', '"
				+ c.getApptNo() 	+ "')";
		String query3 = "select id from Customer where email = '" + c.getEmail()
				+ "' and passwd = '" + c.getPasswd() + "'";
		System.out.println(query3);
		String query4 = "select id from Address where streetAddr = '"
				+ c.getStreetAddr() + "' and city = '" + c.getCity() + "'";
		
		try {
			Connection conn = null;
			try {
				conn = connPool.getConnection();
			} catch (Exception e) { e.printStackTrace(); }
			
			if (conn != null) {
				Statement s = conn.createStatement();
				s.executeUpdate(query1);
				s.executeUpdate(query2);
				ResultSet rs;
				rs = s.executeQuery(query3);
				while (rs.next()) {
					custId = rs.getInt(1);
				}
				
				//link customer to address
				rs = s.executeQuery(query4);
				String query5 = "";
				while (rs.next()) {
					System.out.println(rs.getInt(1));
					query5 = "update Customer set addrId = " + rs.getInt(1) + " where id = " + custId;
				}
				s.executeUpdate(query5);
				
				s.close();
			}
			connPool.closeAll();
		} catch (SQLException e) { e.printStackTrace(); }
		
		return custId;
	}
}
