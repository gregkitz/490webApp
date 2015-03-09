package booq.model;

import java.sql.Connection;
import java.sql.SQLException; 
import java.sql.Statement; 
import booq.beans.Order;

public class CreateOrder {
	
	private static final String query1Base =
			"insert into MainOrder (id, customerId, orderDate) values (";
	private static final String query2Base =
			"insert into CartItem (id, bookId, quantity) values (";
	private static final String query3Base =
			"insert into OrderLink (orderId, itemId) values (";
	
	public static void insert(DBConnectionPool connPool, Order order) {		
		try {
			Connection conn = null;
			try {
				conn = connPool.getConnection();
			} catch (Exception e) { e.printStackTrace(); }
			
			if (conn != null) {
				Statement s = conn.createStatement();
				
				String query1 = query1Base + order.getId() + ", "
						+ order.getCustomer().getId() + ", "
						+ order.getDate() + ")";
				String query2 = "";
				String query3 = "";
				
				s.executeUpdate(query1);
				
				for (int i = 0; i < order.getItems().size(); i++) {
					query2 = query2Base + order.getItems().get(i).getId() + ", "
							+ order.getItems().get(i).getBook().getId() + ", "
							+ order.getItems().get(i).getQuantity() + ")";
					query3 = query3Base + order.getId() + ", "
							+ order.getItems().get(i).getId();
					s.executeUpdate(query2);
					s.executeUpdate(query3);
				}
				s.close();
			}
			connPool.closeAll();
	   	} catch (SQLException e) { e.printStackTrace(); }
	}
}
