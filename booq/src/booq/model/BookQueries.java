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
			Statement s = conn.createStatement();
			String query = "select bookId, title, author, price, stock, genreName from Book inner join Genre on Book.genreId = Genre.genreId"
					+ " where title like '%" + keyword.trim() + "%'"
					+ " or author like '%" + keyword.trim() + "%'";
			ResultSet rs = s.executeQuery(query);
			while (rs.next()) {
	              Book book = new Book();
	              book.setId(rs.getInt(1));
	              book.setTitle(rs.getString(2));
	              book.setAuthor(rs.getString(3));
	              book.setPrice(rs.getDouble(4));
	              book.setStock(rs.getInt(4));
	              
	              books.add(book);
	              }
			
		} catch (Exception e) { e.printStackTrace(); }
		
		
		
		
	}
}
