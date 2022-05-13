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

/**
 *
 * @author Jacky Bahary 13997263
 */
public class OrderDBManager {
    private final Statement st; //used to execute SQL queries within java code
    private Connection conn;
    
    public OrderDBManager(Connection conn) throws SQLException {
        st = conn.createStatement();
        this.conn = conn;
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
}
