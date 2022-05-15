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
 * @author Jacky Bahary 13997263, Sung Hoon Kim 12596351
 * 
 */
public class OrderManagerDAO {
    private Statement st;
    
    public OrderManagerDAO(Connection conn) throws SQLException {
        st = conn.createStatement();
    }
    
    //finds order using orderID
    public Orders findOrder(int orderID) throws SQLException {
        String fetch = "SELECT * FROM IOTBAY.ORDERS WHERE ORDERID= " + orderID;
        ResultSet rs = st.executeQuery(fetch);
        
        while (rs.next()) {
            
            String orderDate = rs.getString("ORDERDATE");
            String orderStatus = rs.getString("ORDERSTATUS");
            int paymentID = rs.getInt("PAYMENTID");
            
            Orders order = new Orders(orderID, orderDate, orderStatus, paymentID);
            return order;
        }
        return null;
    }

    //add an order into the Orders table
    public void addOrder(int orderID, String orderDate, String orderStatus, int paymentID) throws SQLException {
        String fetch = "INSERT INTO IOTBAY.ORDERS (ORDERID, ORDERDATE, ORDERSTATUS, PAYMENTID)"
                    + "VALUES (" + orderID + ",'" + orderDate + "','" + orderStatus + "','" + paymentID + "')";
        st.execute(fetch);
                
    }
    //update an order from the Orders table
    public void updateOrder(int orderID, String orderDate, String orderStatus, int paymentID) throws SQLException {
        String fetch = "UPDATE IOTBAY.ORDERS SET ORDERID="
                + "'" + orderID + "'"
                + "'" + orderDate + "'"
                + "'" + orderStatus + "'"
                + "'" + paymentID + "'";
        st.executeUpdate(fetch);
    }
    
    //delete an order from the Orders table
    public void deleteOrder(int id) throws SQLException {
        String fetch = "DELETE FROM IOTBAY.ORDERS WHERE ORDERID=" + id;
        st.executeUpdate(fetch);
    }
    
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
