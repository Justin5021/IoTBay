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
public class Supplier implements Serializable{
    private int supplierID;
    private String supplierAddress, supplierPhone;
    
    public Supplier(
            int supplierID,
            String supplierAddress,
            String supplierPhone){
        this.supplierID = supplierID;
        this.supplierAddress = supplierAddress;
        this.supplierPhone = supplierPhone;
    }
    
    public int getSupplierID() {
        return supplierID;
    }
    
    public void setSupplierID(int supplierID) {
        this.supplierID = supplierID;
    }
    
    public String getSupplierAddress() {
        return supplierAddress;
    }
    
    public void setSupplierAddress(String supplierAddress) {
        this.supplierAddress = supplierAddress;
    }
    
    public String getSupplierPhone() {
        return supplierPhone;
    }
    
    public void setSupplierPhone(String supplierPhone) {
        this.supplierPhone = supplierPhone;
    }
}
