package booq.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import booq.beans.Rating;

public class RatingQueries {
	
	private static final String queryBase =
			"select bookId, customerId, ratingDate, rating, " 
			+ "description from Ratings	";
	
	public static ArrayList<Rating> getRatingsByBook
	(DBConnectionPool connPool, int bookId) {
		String query = queryBase + "where bookId = " + bookId;
		return getRatings(connPool, query);
	}
	
	public static ArrayList<Rating> getRatingsByCustomer
	(DBConnectionPool connPool, int custId) {
		String query = queryBase + "where customerId = " + custId;
		return getRatings(connPool, query);
	}
	
	public static ArrayList<Rating> getTopRating
	(DBConnectionPool connPool, int size) {
		String query = queryBase + "order by rating desc limit " + size;
		return getRatings(connPool, query);
	}
	
	private static ArrayList<Rating> getRatings
	(DBConnectionPool connPool, String query) {
		ArrayList<Rating> ratings = new ArrayList<Rating>();
		try {
			Connection conn = null;
			try {
				conn = connPool.getConnection();
			} catch (Exception e) { e.printStackTrace(); }
			
			if (conn != null) {
				Statement s = conn.createStatement();
				ResultSet rs = s.executeQuery(query);
				while (rs.next()) {
		            Rating rating = new Rating();
		            rating.setBookId(rs.getInt(1));
		            rating.setCustId(rs.getInt(2));
		            rating.setDate(rs.getString(3));
		            rating.setRatingNum(rs.getInt(4));
		            rating.setDes(rs.getString(5));
		            ratings.add(rating);
				}
				rs.close();
				s.close();
			}
			connPool.closeAll();
		} catch (SQLException e) { e.printStackTrace(); }
		
		return ratings;
	}
	
	public static void insert(DBConnectionPool connPool, Rating rating) {
		String query = "insert into Ratings(bookId, customerId, ratingDate, rating) values ("
				+ rating.getBookId() + ", "
				+ rating.getCustId() + ", "
				+ "now(), "
				+ rating.getRatingNum() + ")";
		
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
