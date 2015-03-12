package booq.beans;

public class CartItem {
	private int id;
	private int bookId;
	private int  quantity;
	private Book book; 
	
	//constructor
	public CartItem(){}
	
	public CartItem (int quantity, Book book) { //use book queries to get the book if you want it
		this.book = book; 
		this.quantity = quantity; 
	}

	//getters
	public int 	    getId() 		{ return id; }
	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public int 	    getBookId() 		{ return bookId; }
    public int      getQuantity() 	{ return quantity; }
    
    //setters
    public void setId(int id) 			  { this.id = id; }
    public void setBookId(int bookId) 	  { this.bookId = bookId; }
    public void setQuantity(int quantity) { this.quantity = quantity; }
}
