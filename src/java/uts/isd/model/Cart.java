/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.isd.model;

import java.io.Serializable;

/**
 * @author Jacky Bahary 13997263
 */
public class Cart implements Serializable {
        private int userID, productID, cartQuantity;

    public Cart(
            int userID, 
            int productID,
            int cartQuantity) {
        this.userID = userID;
        this.productID = productID;
        this.cartQuantity = cartQuantity;
    }

    public int getUserID() {
        return userID;
    }
    
    public void setUserID(int userID) {
        this.userID = userID;
    }
    
    public int getProductID() {
        return productID;
    }
    
    public void setProductID(int productID) {
        this.productID = productID;
    }
    
    public int getCartQuantity() {
        return cartQuantity;
    }
    
    public void setCartQuantity(int cartQuantity) {
        this.cartQuantity = cartQuantity;
    }
}

