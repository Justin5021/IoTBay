/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.isd.model.dao;

import uts.isd.model.Cart;
import uts.isd.model.Product;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Jacky Bahary 13997263
 */
public class CartManagerDAO {
    private Statement st;

    public CartManagerDAO(Connection conn) throws SQLException {
        st = conn.createStatement();
    }
    
    // Create - add a new product
    public void addToCart(int userID, int productID, int cartQuantity ) throws SQLException{
        
        String fetch = "SELECT * FROM IOTBAY.CART WHERE USERID = " + userID + " AND PRODUCTID =" + productID;
        ResultSet rs = st.executeQuery(fetch);
        int i = 0;
        while(rs.next()){
            i++;
        }
        if(i > 0){
            System.out.println("Product exists! " + productID);
            st.executeUpdate("UPDATE IOTBAY.CART SET CARTQUANTITY = " + cartQuantity + " WHERE PRODUCTID = " + productID + " AND USERID = " + userID);
            }
        else{
            System.out.println("Item doesn't exist! " + productID);
            st.executeUpdate("INSERT INTO IOTBAY.CART(USERID, PRODUCTID, CARTQUANTITY) VALUES(" + userID + ", " + productID + ", " + cartQuantity + ")");
        
        }
    } 
    
    public ArrayList<Cart> viewCart(int userID) throws SQLException {
        String fetch = "SELECT * FROM IOTBAY.CART WHERE USERID = " + userID;
        ResultSet rs = st.executeQuery(fetch);
        ArrayList<Cart> cartList = new ArrayList<Cart>();
        while(rs.next()){
            String uID = rs.getString(1);
            String pID = rs.getString(2);
            String cQuantity = rs.getString(3);
            cartList.add(new Cart(Integer.parseInt(uID), Integer.parseInt(pID), Integer.parseInt(cQuantity)));
        }
        return cartList;   
    }
    
}
