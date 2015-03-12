package booq.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import booq.beans.Book;

public class StatisticsQueries { //NOT FINISHED
	public static ArrayList<String> getStats(DBConnectionPool connPool) {
		ArrayList<String> stats = new ArrayList<String>();
		String query = "";
		try {
			Connection conn = null;
			try {
				conn = connPool.getConnection();
			} catch (Exception e) { e.printStackTrace(); }
			
			if (conn != null) {
				Statement s = conn.createStatement();
				ResultSet rs = s.executeQuery(query);
				while (rs.next()) {
		              Book book = new Book();
		              book.setId(rs.getInt(1));
		              book.setTitle(rs.getString(2));
		              book.setAuthor(rs.getString(3));
		              book.setPrice(rs.getDouble(4));
		              book.setStock(rs.getInt(5));
		              book.setGenreName(rs.getString(6));
		              book.setGenreId(rs.getInt(7));
		              book.setDescription(rs.getString(8));
		              book.setPicturePath(rs.getString(9)); 
				}
				rs.close();
				s.close();
			}
			connPool.closeAll();
		} catch (SQLException e) { e.printStackTrace(); }
		
		return stats;
	}
}
