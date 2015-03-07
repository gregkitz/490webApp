package booq.model;

import java.sql.SQLException; 
import java.sql.Statement; 
import booq.beans.Customer; 



public class CreateOrder {
   public static void insertOrder(){ 
	   
	   
   } 
   
	
	
}
public class OrderPeer {

  public static void insertOrder(Statement stmt, long orderId,
      Customer customer) throws SQLException {
    String sql = "insert into orders (order_id, delivery_name,"
        + " delivery_address, cc_name, cc_number, cc_expiry) values ('"
        + orderId + "','" + customer.getContactName() + "','"
        + customer.getDeliveryAddress() + "','"
        + customer.getCcName() + "','" + customer.getCcNumber()
        + "','" + customer.getCcExpiryDate() + "')"
        ;
    stmt.executeUpdate(sql);
    }
  }
