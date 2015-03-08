package booq.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class GenreQueries {
	public static String[] getGenres(DBConnectionPool connPool) {
		String query = "select id, genreName from Genre";
		String[] genres = new String[500];
		
		try {
			Connection conn = null;
			try {
				conn = connPool.getConnection();
			} catch (Exception e) { e.printStackTrace(); }
			
			if (conn != null) {
				Statement s = conn.createStatement();
				ResultSet rs = s.executeQuery(query);
				while (rs.next()) {
		              genres[rs.getInt(1)] = rs.getString(2);
				}
				rs.close();
				s.close();
			}
			connPool.closeAll();
		} catch (SQLException e) { e.printStackTrace(); }
		
		return genres;
	}
}
