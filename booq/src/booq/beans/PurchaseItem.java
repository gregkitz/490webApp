package booq.beans;

public class PurchaseItem {
	private int id;
	
	//shipping info
	private Customer cus;
	private String ccName;
	private String ccNumber;
	private String ccExpire;
	
	//item info
	private int    bookId;
	private String title;
	private String author;
	private int    quantity;
	private double price;
	
	//getters
	public int 	    getId() 		{ return id; }
	public Customer getCustomer()	{ return cus; }
    public String   getCcName() 	{ return ccName; }
    public String   getCcNumber() 	{ return ccNumber; }
    public String   getCcExpire() 	{ return ccExpire; }
    public int      getBookId() 	{ return bookId; }
    public String   getTitle() 		{ return title; }
    public String   getAuthor() 	{ return author; }
    public int      getQuantity() 	{ return quantity; }
    public double   getPrice() 		{ return price; }
    
    //setters
    public void setId(int id) 					{ this.id = id; }
    public void setCustomer(Customer cus)		{ this.cus = cus; }
    public void setCcName(String ccName) 		{ this.ccName = ccName; }
    public void setCcNumber(String ccNumber) 	{ this.ccNumber = ccNumber; }
    public void setCcExpire(String ccExpire) 	{ this.ccExpire = ccExpire; }
    public void setBookId(int bookId) 			{ this.bookId = bookId; }
    public void setTitle(String title) 			{ this.title = title; }
    public void setAuthor(String author) 		{ this.author = author; }
    public void setQuantity(int quantity) 		{ this.quantity = quantity; }
    public void setPrice(double price) 			{ this.price = price; }
}
