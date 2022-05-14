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
    public void addCart(int userID, int productID, int cartQuantity ) throws SQLException{
        String query = 
                "INSERT INTO IOTBAY.CART(USERID, PRODUCTID, CARTQUANTITY) " +
                "VALUES('" + userID + "', " + productID + ", '" + cartQuantity + "')";
        st.execute(query);
    } 
    
}
