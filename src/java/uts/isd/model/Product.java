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
public class Product implements Serializable{
    private int productID, productSerialNum, productQuantity, supplierID;
    private float productPrice;
    private String productName, productCategory, productBrand, productImageURL;
    
    public Product(
            int productID,
            int productSerialNum,
            int productQuantity,
            int supplierID,
            float productPrice,
            String productName,
            String productCategory,
            String productBrand,
            String productImageURL){
        this.productID = productID;
        this.productSerialNum = productSerialNum;
        this.productQuantity = productQuantity;
        this.supplierID = supplierID;
        this.productPrice = productPrice;
        this.productName = productName;
        this.productCategory = productCategory;
        this.productBrand = productBrand;
        this.productImageURL = productImageURL;
    }
    
    public int getProductID() {
        return productID;
    }
    
    public void setProductID(int productID) {
        this.productID = productID;
    }
    
    public int getProductSerialNum() {
        return productSerialNum;
    }
    
    public void setProductSerialNum(int productSerialNum) {
        this.productSerialNum = productSerialNum;
    }
    
    public int getProductQuantity() {
        return productQuantity;
    }
    
    public void setProductQuantity(int productQuantity) {
        this.productQuantity = productQuantity;
    }
    
    public int getSupplierID() {
        return supplierID;
    }
    
    public void setSupplierID(int supplierID) {
        this.supplierID = supplierID;
    }
    
    public float getProductPrice() {
        return productPrice;
    }
    
    public void setProductPrice(float productPrice) {
        this.productPrice = productPrice;
    }
    
    public String getProductName() {
        return productName;
    }
    
    public void setProductName(String productName) {
        this.productName = productName;
    }
    
    public String getProductCategory() {
        return productCategory;
    }
    
    public void setProductCategory(String productCategory) {
        this.productCategory = productCategory;
    }
    
    public String getProductBrand() {
        return productBrand;
    }
    
    public void setProductBrand(String productBrand) {
        this.productBrand = productBrand;
    }
    
    public String getProductImageURL() {
        return productImageURL;
    }
    
    public void setProductImageURL(String productImageURL) {
        this.productImageURL = productImageURL;
    }
}

