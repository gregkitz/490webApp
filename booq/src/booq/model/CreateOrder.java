package booq.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException; 
import java.sql.Statement; 
import java.util.ArrayList;

import booq.beans.Book;
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
				+ order.getCustomer().getId() + ", "
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
							+ order.getItems().get(i).getBook().getId() + ", "
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
				s.close();
			}
			connPool.closeAll();
	   	} catch (SQLException e) { e.printStackTrace(); }
		
		return order;
	}
	
	public static ArrayList<Order> getOrders(DBConnectionPool connPool) {
		ArrayList<Order> orders = new ArrayList<Order>();
		String query1 = "select * from OrderLink order by orderId";
		String query2 = "select * from MainOrder";
		String query3 = "select * from CartItem";
		try {
			Connection conn = null;
			try {
				conn = connPool.getConnection();
			} catch (Exception e) { e.printStackTrace(); }
			
			if (conn != null) {
				Statement s = conn.createStatement();
				ResultSet rs = s.executeQuery(query1);
				while (rs.next()) {
		              Order order = new Order();
		              book.setId(rs.getInt(1));
		              book.setTitle(rs.getString(2));
		              book.setAuthor(rs.getString(3));
		              book.setPrice(rs.getDouble(4));
		              book.setStock(rs.getInt(5));
		              book.setGenreName(rs.getString(6));
		              book.setGenreId(rs.getInt(7));
		              book.setDescription(rs.getString(8));
		              book.setPicturePath(rs.getString(9)); 
		              orders.add(order);
				}
				rs.close();
				s.close();
			}
			connPool.closeAll();
		} catch (SQLException e) { e.printStackTrace(); }
		
		return orders;
	}
	
}
