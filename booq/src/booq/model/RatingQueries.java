package booq.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import booq.beans.Rating;

public class RatingQueries {
	public static ArrayList<Rating> getRatings(DBConnectionPool connPool, int bookId) {
		String query = "select bookId";
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
}
