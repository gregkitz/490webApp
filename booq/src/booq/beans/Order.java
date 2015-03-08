package booq.beans;

import java.util.ArrayList;

import booq.beans.CartItem;

public class Order {
	private ArrayList<CartItem> items;
	private String date;
	
	//shipping info
	private int shippingId;
	private Customer cus;
	private String ccName;
	private String ccNumber;
	private String ccExpire;
	
	
	public String   getDate() { return date; }
	public int 	    getShippingId() { return shippingId; }
	public Customer getCustomer()	{ return cus; }
    public String   getCcName() 	{ return ccName; }
    public String   getCcNumber() 	{ return ccNumber; }
    public String   getCcExpire() 	{ return ccExpire; }
    
    public void setDate(String date) 		  { this.date = date; }
    public void setShippingId(int shippingId) { this.shippingId = shippingId; }
    public void setCustomer(Customer cus)	  { this.cus = cus; }
    public void setCcName(String ccName) 	  { this.ccName = ccName; }
    public void setCcNumber(String ccNumber)  { this.ccNumber = ccNumber; }
    public void setCcExpire(String ccExpire)  { this.ccExpire = ccExpire; }
}
