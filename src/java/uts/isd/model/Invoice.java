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
public class Invoice implements Serializable{
    private int invoiceID, paymentID;
    private String invoiceDate;
    
    public Invoice(
            int invoiceID,
            int paymentID,
            String invoiceDate){
        this.invoiceID = invoiceID;
        this.paymentID = paymentID;
        this.invoiceDate = invoiceDate;
    }
    
    public int getInvoiceID() {
        return invoiceID;
    }
    
    public void setInvoiceID(int invoiceID) {
        this.invoiceID = invoiceID;
    }
    
    public int getPaymentID() {
        return paymentID;
    }
    
    public void setPaymentID(int paymentID) {
        this.paymentID = paymentID;
    }
    
    public String getInvoiceDate() {
        return invoiceDate;
    }
    
    public void setInvoiceDate(String invoiceDate) {
        this.invoiceDate = invoiceDate;
    }
}

