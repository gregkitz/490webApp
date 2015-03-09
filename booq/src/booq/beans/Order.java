package booq.beans;

import java.util.ArrayList;

import booq.beans.CartItem;

public class Order {
	private int id;
	private ArrayList<CartItem> items;
	private Customer cus;
	private String date;
	
	public int 	    getId() 		{ return id; }
	public ArrayList<CartItem> getItems() { return items; }
	public Customer getCustomer()	{ return cus; }
	public String   getDate() 		{ return date; }
    
    public void setId(int id) 				  { this.id = id; }
    public void setItems(ArrayList<CartItem> items) { this.items = items; }
    public void setCustomer(Customer cus)	  { this.cus = cus; }
    public void setDate(String date) 		  { this.date = date; }
}
