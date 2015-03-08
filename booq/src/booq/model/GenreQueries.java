package booq.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import booq.beans.Genre;

public class GenreQueries {
	//returns all genres in a list
	//where genreId is index, and the value is genreName
	public static ArrayList<Genre> getGenres(DBConnectionPool connPool) {
		String query = "select id, genreName from Genre";
		ArrayList<Genre> genres = new ArrayList<Genre>();
		
		try {
			Connection conn = null;
			try {
				conn = connPool.getConnection();
			} catch (Exception e) { e.printStackTrace(); }
			
			if (conn != null) {
				Statement s = conn.createStatement();
				ResultSet rs = s.executeQuery(query);
				while (rs.next()) {
					Genre genre = new Genre();
					genre.setId(rs.getInt(1));
					genre.setName(rs.getString(2));
					genres.add(genre);
				}
				rs.close();
				s.close();
			}
			connPool.closeAll();
		} catch (SQLException e) { e.printStackTrace(); }
		
		return genres;
	}
}
