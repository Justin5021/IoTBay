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
public class Payment implements Serializable{
    private int paymentID, paymentInfoID;
    private float paymentTotal;
    
    public Payment(
            int paymentID,
            int paymentInfoID,
            float paymentTotal){
        this.paymentID = paymentID;
        this.paymentInfoID = paymentInfoID;
        this.paymentTotal = paymentTotal;
    }
    
    public int getPaymentID() {
        return paymentID;
    }
    
    public void setPaymentID(int paymentID) {
        this.paymentID = paymentID;
    }
    
    public int getPaymentInfoID() {
        return paymentInfoID;
    }
    
    public void setPaymentInfoID(int paymentInfoID) {
        this.paymentInfoID = paymentInfoID;
    }
    
    public float getPaymentTotal() {
        return paymentTotal;
    }
    
    public void setPaymentTotal(float paymentTotal) {
        this.paymentTotal = paymentTotal;
    }
}
