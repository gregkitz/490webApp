package booq.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException; 
import java.sql.Statement; 
import java.util.ArrayList;

import booq.beans.CartItem;
import booq.beans.Order;

public class CreateOrder {
	
	private static final String query1Base =
			"insert into MainOrder (customerId, orderDate) values (";
	private static final String query2Base =
			"insert into CartItem (bookId, quantity) values (";
	private static final String query3Base =
			"insert into OrderLink (orderId, itemId) values (";
	
	public static Order insert(DBConnectionPool connPool, Order order) {		
		String query3, query2, query1 = query1Base
				+ order.getCustId() + ", "
				+ "now())";
		String query1Helper = "select id, orderDate from MainOrder order by id desc limit 1";
		String query2Helper = "select id from CartItem order by id desc limit 1";
		
		try {
			Connection conn = null;
			try {
				conn = connPool.getConnection();
			} catch (Exception e) { e.printStackTrace(); }
			
			if (conn != null) {
				Statement s = conn.createStatement();				
				s.executeUpdate(query1);
				ResultSet rs = s.executeQuery(query1Helper);
				if (rs.next()) {
					order.setId(rs.getInt(1));
					order.setDate(rs.getString(2));
				}
				
				
				for (int i = 0; i < order.getItems().size(); i++) {
					query2 = query2Base
							+ order.getItems().get(i).getBookId() + ", "
							+ order.getItems().get(i).getQuantity() + ")";
					s.executeUpdate(query2);
					rs = s.executeQuery(query2Helper);
					if (rs.next()) {
						order.getItems().get(i).setId(rs.getInt(1));
					}
					query3 = query3Base
							+ order.getId() + ", "
							+ order.getItems().get(i).getId() + ")";
					s.executeUpdate(query3);
				}
				rs.close();
				s.close();
			}
			connPool.closeAll();
	   	} catch (SQLException e) { e.printStackTrace(); }
		
		return order;
	}
	
	public static ArrayList<Order> getOrders(DBConnectionPool connPool) {
		ArrayList<Order> orders = new ArrayList<Order>();
		String query1 = "select * from OrderLink order by orderId";
		
		try {
			Connection conn = null;
			try {
				conn = connPool.getConnection();
			} catch (Exception e) { e.printStackTrace(); }
			
			if (conn != null) {
				Statement s = conn.createStatement();
				ResultSet rs = s.executeQuery(query1);
				ResultSet rs2;
				int mainOrderId = 0;
				int itemId = 1;
				Order order = new Order();
				while (rs.next()) {					
					if (mainOrderId != rs.getInt(1)) { //if we have a new order
						int oldId = mainOrderId;
						mainOrderId = rs.getInt(1);
						itemId = rs.getInt(2);
						
						String query2 = "select * from MainOrder where id = " + mainOrderId;
						if (oldId != 0) { orders.add(order); }
						order = new Order();
						
						
						rs2 = s.executeQuery(query2);
						if (rs2.next()) {
							order.setId(rs2.getInt(1));
							order.setCustId(rs2.getInt(2));
							order.setDate(rs2.getString(3));
						}
					}
					
					String query3 = "select * from CartItem where id = " + itemId;
					rs2 = s.executeQuery(query3);
					if (rs2.next()) {
						CartItem item = new CartItem();
						item.setId(rs2.getInt(1));
						item.setBookId(rs2.getInt(2));
						item.setQuantity(rs2.getInt(3));
						order.getItems().add(item);
					}
					
					rs2.close();
					
					orders.add(order);
					
				}
				//rs.close();
				s.close();
			}
			connPool.closeAll();
		} catch (SQLException e) { e.printStackTrace(); }
		
		return orders;
	}
	
}
