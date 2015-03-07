package booq.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import booq.beans.Book;

public class BookQueries {
	public static ArrayList<Book> searchBooks(DBConnectionPool connPool,
											  String keyword) {
		
		ArrayList<Book> books = new ArrayList<Book>();
		try {
			Connection conn = connPool.getConnection();
			try {
				Statement s = conn.createStatement();
				String sql = "select bookId, title, author, price, genreName from Book inner join Genre on Book.genreId = Genre.genreId"
			            + " where title like '%" + keyword.trim() + "%'"
			            + " or author like '%" + keyword.trim() + "%'";
				
			} catch (Exception e) { e.printStackTrace(); }
		} catch (Exception e) { e.printStackTrace(); }
		
		
		
		
	}
}
