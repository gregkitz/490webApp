package booq.beans;

public class CartItem {
	private int id;
	private int bookId;
	private int  quantity;
	
	//constructor
	public CartItem(){}
	
	public CartItem (int quantity, int bookId) { //use book queries to get the book if you want it
		this.bookId = bookId; 
		this.quantity = quantity; 
	}

	//getters
	public int 	    getId() 		{ return id; }
	public int 	    getBookId() 		{ return bookId; }
    public int      getQuantity() 	{ return quantity; }
    
    //setters
    public void setId(int id) 			  { this.id = id; }
    public void setBookId(int bookId) 	  { this.bookId = bookId; }
    public void setQuantity(int quantity) { this.quantity = quantity; }
}
