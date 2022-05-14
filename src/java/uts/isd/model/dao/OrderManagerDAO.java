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
    public Orders findOrder(int orderID, int userID) throws SQLException {
        String fetch = "SELECT * FROM IOTBAY.ORDERS WHERE ORDERID = " + orderID + " and USERID='" + userID + "'";
        ResultSet rs = st.executeQuery(fetch);
        while (rs.next()) {
            String ORDERID = rs.getString(1); 
            String USERID = rs.getString(2);
            int PRODUCTID = rs.getInt(3);
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
        ArrayList<Orders> list = new ArrayList<>();
        
        String fetch = "SELECT * FROM IOTBAY.ORDERS WHERE ORDERID =";
        ResultSet rs = st.executeQuery(fetch);
        
        return null;
        
    }
 }
