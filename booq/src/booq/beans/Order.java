package booq.beans;

import java.util.ArrayList;

import booq.beans.CartItem;

public class Order {
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
}
