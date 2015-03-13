package booq.beans;

import java.util.ArrayList;
import java.util.Iterator;

import booq.beans.CartItem;

public class Order {
	public Order() {
		items = new ArrayList<CartItem>();
	}
	
	private int id;
	private ArrayList<CartItem> items;
	private int custId;
	private String date;
	
	public int 	    getId() 		{ return id; }
	public ArrayList<CartItem> getItems() { return items; }
	public int 		getCustId()		{ return custId; }
	public String   getDate() 		{ return date; }
    
    public void setId(int id) 				  { this.id = id; }
    public void setItems(ArrayList<CartItem> items) { this.items = items; }
    public void setCustId(int id) 			  { custId = id; }
    public void setDate(String date) 		  { this.date = date; }
    
    public void display() {
		System.out.println("DISPLAYING ORDER " + id);
		System.out.println("CustId: " + custId);
		Iterator<CartItem> i = items.iterator();
		while (i.hasNext()) {
			CartItem c = i.next();
			c.display();
		}
		System.out.println("Date: " + date);
    }
}
