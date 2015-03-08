package booq.model;

import java.sql.Connection;
import java.sql.SQLException; 
import java.sql.Statement; 
import booq.beans.CartItem;



public class CreateOrder {
   public static void insert(DBConnectionPool connPool, CartItem order) { 
	   String query1 = "insert into MainOrder (id, bookId, quantity, "
		   + "shippingId, orderDate) values (" + order.getId() + ", "
		   + order.getBook().getId() + ", " + order.getQuantity() + ", "
		   + order.getShippingId() + ", " + order.getDate() + ")";
	   
	   String query2 = "insert into ShippingInfo (id, customerId, ccName, "
		   + "ccNumber, ccExpire) values (" + order.getShippingId() + ", "
		   + order.getCustomer().getId() + ", " + order.getCcName() + ", "
		   + order.getCcNumber() + ", " + order.getCcExpire() + ")";
	   
	   try {
			Connection conn = null;
			try {
				conn = connPool.getConnection();
			} catch (Exception e) { e.printStackTrace(); }
			
			if (conn != null) {
				Statement s = conn.createStatement();
				s.executeUpdate(query1);
				s.executeUpdate(query2);
				s.close();
			}
			connPool.closeAll();
	   } catch (SQLException e) { e.printStackTrace(); }
   } 
}
