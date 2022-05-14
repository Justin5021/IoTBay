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
    private String supplierAddress, supplierPhone, supplierName, supplierEmail;
    
    public Supplier(
            int supplierID,
            String supplierName,
            String supplierAddress,
            String supplierPhone,
            String supplierEmail){
        this.supplierID = supplierID;
        this.supplierName = supplierName;
        this.supplierAddress = supplierAddress;
        this.supplierPhone = supplierPhone;
        this.supplierEmail = supplierEmail;
    }
    
    public Supplier(
            String supplierName,
            String supplierAddress,
            String supplierPhone,
            String supplierEmail){
        this.supplierAddress = supplierAddress;
        this.supplierPhone = supplierPhone;
        this.supplierName = supplierName;
        this.supplierEmail = supplierEmail;
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
    
    public String getSupplierName() {
        return supplierName;
    }
    
    public void setSupplierName(String supplierName) {
        this.supplierName = supplierName;
    }
    
    public String getSupplierEmail() {
        return supplierEmail;
    }
    
    public void setSupplierEmail(String supplierEmail) {
        this.supplierEmail = supplierEmail;
    }
}
