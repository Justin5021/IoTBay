/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uts.isd.model.dao;

import uts.isd.model.Product;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author pei-han & jacky
 */
public class ProductDBManager {
    private Statement st;

    public ProductDBManager(Connection conn) throws SQLException {
        st = conn.createStatement();
    }
    
    public Product findProduct(int id) throws SQLException {
        String query = "SELECT * FROM IOTBAY.PRODUCT WHERE PRODUCTID= " + id;
        ResultSet rs = st.executeQuery(query);
       
        while(rs.next()) {
            int productID = rs.getInt("PRODUCTID");
            int serialNum = rs.getInt("PRODUCTSERIALNUM");
            int quantity = rs.getInt("PRODUCTQUANTITY");
            int supplierID = rs.getInt("SUPPLIERID");
            float price = rs.getFloat("PRODUCTPRICE");
            String name = rs.getString("PRODUCTNAME");
            String category = rs.getString("PRODUCTCATEGORY");
            String brand = rs.getString("PRODUCTBRAND");
            String image = rs.getString("PRODUCTIMAGEURL");
            
            Product product = new Product(productID, serialNum, name, category, brand, price, quantity, image, supplierID);
            return product;
        }
        return null;
    } 
    
    
    // Create - add a new product
    public void addProduct(int productID, int serialNum, int quantity, int supplierID, float price, String name, String category, String brand, String image ) throws SQLException{
        String query = 
                "INSERT INTO IOTBAY.PRODUCT(PRODUCTID, PRODUCTSERIALNUM, PRODUCTQUANTITY, SUPPLIERID, PRODUCTPRICE, PRODUCTNAME, PRODUCTCATEGORY, PRODUCTBRAND, PRODUCTIMAGEURL) " +
                "VALUES('" + productID + "', " + serialNum + ", '" + quantity + "', '" + supplierID + "', " + price + ", " + name + ", " + category + ", " + brand + ", " + image + ")";
        st.execute(query);
    }
    
    // Read - list all products
    public ArrayList<Product> listAllProducts() throws SQLException {
        String query = "SELECT * FROM IOTBAY.PRODUCT ORDER BY PRODUCTID";
        ResultSet rs = st.executeQuery(query);
        ArrayList<Product> list = new ArrayList<>();
        
        while(rs.next()) {
            int productID = rs.getInt("PRODUCTID");
            int serialNum = rs.getInt("PRODUCTSERIALNUM");
            int quantity = rs.getInt("PRODUCTQUANTITY");
            int supplierID = rs.getInt("SUPPLIERID");
            float price = rs.getFloat("PRODUCTPRICE");
            String name = rs.getString("PRODUCTNAME");
            String category = rs.getString("PRODUCTCATEGORY");
            String brand = rs.getString("PRODUCTBRAND");
            String image = rs.getString("PRODUCTIMAGEURL");
            
            list.add(new Product(productID, serialNum, name, category, brand, price, quantity, image, supplierID));
        }
        return list;
    }
    
    // Read - Search & List Product by NAME
    public ArrayList<Product> searchProductsbyName(String search) throws SQLException {
        String query = "SELECT * FROM IOTBAY.PRODUCT WHERE PRODUCTNAME LIKE " + "%" + search + "%";
        ResultSet rs = st.executeQuery(query);
        ArrayList<Product> list = new ArrayList<>();
        
        while(rs.next()) {
            int productID = rs.getInt("PRODUCTID");
            int serialNum = rs.getInt("PRODUCTSERIALNUM");
            int quantity = rs.getInt("PRODUCTQUANTITY");
            int supplierID = rs.getInt("SUPPLIERID");
            float price = rs.getFloat("PRODUCTPRICE");
            String name = rs.getString("PRODUCTNAME");
            String category = rs.getString("PRODUCTCATEGORY");
            String brand = rs.getString("PRODUCTBRAND");
            String image = rs.getString("PRODUCTIMAGEURL");
            
            list.add(new Product(productID, serialNum, name, category, brand, price, quantity, image, supplierID));
        }
        return list;
    }
        
    // Read - Search & List Product by Category
    public ArrayList<Product> searchProductsbyType(String search) throws SQLException {
        String query = "SELECT * FROM IOTBAY.PRODUCT WHERE PRODUCTCATEGORY LIKE " + "%" + search + "%";
        ResultSet rs = st.executeQuery(query);
        ArrayList<Product> list = new ArrayList<>();
        
        while(rs.next()) {
            int productID = rs.getInt("PRODUCTID");
            int serialNum = rs.getInt("PRODUCTSERIALNUM");
            int quantity = rs.getInt("PRODUCTQUANTITY");
            int supplierID = rs.getInt("SUPPLIERID");
            float price = rs.getFloat("PRODUCTPRICE");
            String name = rs.getString("PRODUCTNAME");
            String category = rs.getString("PRODUCTCATEGORY");
            String brand = rs.getString("PRODUCTBRAND");
            String image = rs.getString("PRODUCTIMAGEURL");
            
            list.add(new Product(productID, serialNum, name, category, brand, price, quantity, image, supplierID));
        }
        return list;
    }
        
    // Read - Search & List Product by NAME and Category
    public ArrayList<Product> searchProducts(String searchName, String searchcategory) throws SQLException {
        
        // Set defaults if search name and/or type is empty
        if (searchName == null) {
            searchName = "";
        }
        if (searchcategory == null) {
            searchcategory = "";
        }
         
        String query = 
                "SELECT * FROM IOTBAY.PRODUCT " +
                "WHERE LOWER(PRODUCTNAME) LIKE " + "'%" + searchName + "%'" +
                "AND LOWER(PRODUCTCATEGORY) LIKE " + "'%" + searchcategory + "%'";
        ResultSet rs = st.executeQuery(query);
        ArrayList<Product> list = new ArrayList<>();
        
        while(rs.next()) {
            int productID = rs.getInt("PRODUCTID");
            int serialNum = rs.getInt("PRODUCTSERIALNUM");
            int quantity = rs.getInt("PRODUCTQUANTITY");
            int supplierID = rs.getInt("SUPPLIERID");
            float price = rs.getFloat("PRODUCTPRICE");
            String name = rs.getString("PRODUCTNAME");
            String category = rs.getString("PRODUCTCATEGORY");
            String brand = rs.getString("PRODUCTBRAND");
            String image = rs.getString("PRODUCTIMAGEURL");
            
            list.add(new Product(productID, serialNum, name, category, brand, price, quantity, image, supplierID));
        }
        return list;
    }

    // Update - Update a single product
    public void updateProduct(int productID, int serialNum, String name, String category, String brand, float price, int quantity, String image, int supplierID) throws SQLException {
        String query = 
                "UPDATE IOTBAY.PRODUCT SET" +
                " PRODUCTSERIALNUM= " + serialNum + ", " +
                " PRODUCTNAME= " + "'" + name + "'" + ", " +
                " PRODUCTCATEGORY= " + "'" + category + "'" + ", " +
                " PRODUCTBRAND= " + "'" + brand + "'" + ", " +
                " PRODUCTPRICE= " + price + ", " +
                " PRODUCTQUANTITY= " + quantity + ", " +
                " PRODUCTIMAGEURL= " + "'" + image + "'" + ", " +
                " SUPPLIERID = " + supplierID + " " +
                "WHERE PRODUCTID = " + productID;
        
        st.execute(query);
    }
    
    // Delete - Delete a single product
    public void deleteProduct(String id) throws SQLException {
        String query = "DELETE FROM IOTBAY.PRODUCT WHERE PRODUCTID =" + id;
        st.execute(query);
    }
}
