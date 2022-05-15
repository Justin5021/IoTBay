/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uts.isd.model;

import java.io.Serializable;

/**
 *
 * @author Jacky Bahary 13997263
 */
public class OrderLine implements Serializable{
    private int productID, orderID, orderLineQuantity;
    
    public OrderLine(
            int productID,
            int orderID,
            int orderLineQuantity){
        this.productID = productID;
        this.orderID = orderID;
        this.orderLineQuantity = orderLineQuantity;
    }
    
    public int getProductID() {
        return productID;
    }
    
    public void setProductID(int productID) {
        this.productID = productID;
    }
    
    public int getOrderID() {
        return orderID;
    }
    
    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }
    
    public int getOrderLineQuantity() {
        return orderLineQuantity;
    }
    
    public void setOrderLineQuantity(int orderLineQuantity) {
        this.orderLineQuantity = orderLineQuantity;
    }
}

