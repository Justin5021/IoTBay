/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.isd.model.dao;

import uts.isd.model.Orders;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Jacky Bahary 13997263
 */
public class OrderManagerDAO {
    private Statement st;
    
    public OrderManagerDAO(Connection conn) throws SQLException {
        st = conn.createStatement();
    }
    
    //finds order using orderID and userID
    public Orders findOrder(int id) throws SQLException {
        String fetch = "SELECT * FROM IOTBAY.ORDERS WHERE ORDERID= " + id;
        ResultSet rs = st.executeQuery(fetch);
        
        while (rs.next()) {
            int orderID = rs.getInt("ORDERID"); 
            int orderDate = rs.getInt("ORDERDATE");
            String orderStatus = rs.getString("ORDERSTATUS");
            String paymentID = rs.getString("PAYMENTID");
            
            Orders order = new Orders(orderID, orderDate, orderStatus, paymentID);
            return order;
        }
        return null;
    }
    
    
//    //add order to assigned USER
//    public int addOrder(Orders order) throws SQLException {
//        String a = "INSERT INTO IOTUSER.\"ORDER\" (ID,PROD_ID,ORDER_DATE,ORDER_DETAILS,ORDERER_NAME,QUANTITY,PRICE,TOTAL_PRICE,BILLING_ADDRESS,SHIPPING_ADDRESS,STATUS)";
//        String b=  "VALUES (" +order.getUserID()+"," +order.getProdID()+",'" +order.getOrderDate()+"','" +order.getOrderDetails()+"','" +order.getOrdererName()+"'," +order.getQuantity()+"," +order.getPrice()+"," +order.getTotalPrice()+",'" +order.getBillingAddress()+"','" +order.getShippingAddress()+"','" +order.getStatus()+"')";
////        st.executeUpdate(a +b);
//        PreparedStatement ps = conn.prepareStatement(a+b,
//        Statement.RETURN_GENERATED_KEYS);
//        ps.execute();
//        ResultSet rs = ps.getGeneratedKeys();
//        if (rs.next()) {
//            return rs.getInt(1);
//        }
//        return -1;
//        
//
//    }
    //fetching order using UserID
    public ArrayList<Orders> fetchOrders(int userID) throws SQLException {
        String fetch = "SELECT * FROM IOTBAY.ORDERS WHERE ORDERID =";
        ResultSet rs = st.executeQuery(fetch);
                ArrayList<Orders> list = new ArrayList<>();
        
        while (rs.next()) {
            int orderID = rs.getInt("ORDERID"); 
            int orderDate = rs.getInt("ORDERDATE");
            String orderStatus = rs.getString("ORDERSTATUS");
            String paymentID = rs.getString("PAYMENTID");
            
            list.add(new Orders(orderID, orderDate, orderStatus, paymentID));
        }
        return list;
        
    }
 }
