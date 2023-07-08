/*
 * Robin Pindel
 * mod7 Comments
 * 7/2/2023
 * 
 * This file is the a Class describing how an order can be inserted into the databae
 * for in the application.
 */


package eshop.model;

import java.sql.SQLException;
import java.sql.Statement;
import eshop.beans.Customer;

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
