package booq.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class GenreQueries {
	//returns all genres in a list
	//where genreId is index, and the value is genreName
	public static ArrayList<String> getGenres(DBConnectionPool connPool) {
		String query = "select id, genreName from Genre";
		ArrayList<String> genres = new ArrayList<String>();
		
		try {
			Connection conn = null;
			try {
				conn = connPool.getConnection();
			} catch (Exception e) { e.printStackTrace(); }
			
			if (conn != null) {
				Statement s = conn.createStatement();
				ResultSet rs = s.executeQuery(query);
				while (rs.next()) {
		              genres.add(rs.getInt(1), rs.getString(2));
				}
				rs.close();
				s.close();
			}
			connPool.closeAll();
		} catch (SQLException e) { e.printStackTrace(); }
		
		return genres;
	}
}
