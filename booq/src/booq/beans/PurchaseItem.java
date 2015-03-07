package booq.beans;

public class PurchaseItem {
	
	private double ID;  
	private int bookId; 
	private String title;
	private String author; 
	private int quantity; 
	private double price; 
	private int shippingId;
	public double getID() {
		return ID;
	}
	public void setID(double iD) {
		ID = iD;
	}
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getShippingId() {
		return shippingId;
	}
	public void setShippingId(int shippingId) {
		this.shippingId = shippingId;
	} 
	
	
	
	
}
