package booq.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import booq.beans.Book;

public class BookQueries {
	private static final String queryBase =
		"select Book.id, title, author, price, stock, "
		+ "genreName, genreId, description from Book inner join Genre on "
		+ "Book.genreId = Genre.id where ";
	
	public static ArrayList<Book> searchBooks(DBConnectionPool connPool,
								  String keyword) {
		String query = queryBase + "title like '%"	+ keyword.trim()
				+ "%' or author like '%" + keyword.trim() + "%'";
		return getBooks(connPool, query);
	}
	
	public static ArrayList<Book> getBooksByGenre(DBConnectionPool connPool,
		      int genreId) {
		String query = queryBase + "Book.genreId = " + genreId;
		return getBooks(connPool, query);
	}
	
	public static Book getBook(DBConnectionPool connPool, int bookId) {
		String query = queryBase + "bookId = "
				+ bookId;
		return getBooks(connPool, query).remove(0);
	}
	
	private static ArrayList<Book> getBooks(DBConnectionPool connPool,
		      String query) {
		ArrayList<Book> books = new ArrayList<Book>();
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
		              books.add(book);
				}
				rs.close();
				s.close();
			}
			connPool.closeAll();
		} catch (SQLException e) { e.printStackTrace(); }
		
		return books;
	}
	
}
