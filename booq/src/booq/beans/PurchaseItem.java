package booq.beans;

public class PurchaseItem {
	private int id;
	
	//shipping info
	private int shippingId;
	private Customer cus;
	private String ccName;
	private String ccNumber;
	private String ccExpire;
	
	//item info
	private Book book;
	private int  quantity;

	
	//getters
	public int 	    getShippingId() { return shippingId; }
	public int 	    getId() 		{ return id; }
	public Customer getCustomer()	{ return cus; }
    public String   getCcName() 	{ return ccName; }
    public String   getCcNumber() 	{ return ccNumber; }
    public String   getCcExpire() 	{ return ccExpire; }
    public Book     getBook() 	    { return book; }
    public int      getQuantity() 	{ return quantity; }
    
    //setters
    public void setShippingId(int shippingId) { this.shippingId = shippingId; }
    public void setId(int id) 				  { this.id = id; }
    public void setCustomer(Customer cus)	  { this.cus = cus; }
    public void setCcName(String ccName) 	  { this.ccName = ccName; }
    public void setCcNumber(String ccNumber)  { this.ccNumber = ccNumber; }
    public void setCcExpire(String ccExpire)  { this.ccExpire = ccExpire; }
    public void setBook(Book book) 			  { this.book = book; }
    public void setQuantity(int quantity) 	  { this.quantity = quantity; }
}
