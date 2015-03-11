package booq.beans;

public class CartItem {
	private int id;
	private Book book;
	private int  quantity;
	
	//constructor
	public CartItem (int quantity, Book book){
		if (book != null){
			this.book = book; 
		}
		this.quantity = quantity; 
	}

	//getters
	public int 	    getId() 		{ return id; }
    public Book     getBook() 	    { return book; }
    public int      getQuantity() 	{ return quantity; }
    
    //setters
    public void setId(int id) 				  { this.id = id; }
    public void setBook(Book book) 			  { this.book = book; }
    public void setQuantity(int quantity) 	  { this.quantity = quantity; }
}
