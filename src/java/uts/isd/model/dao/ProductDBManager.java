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
 * @author roddi
 */
public class ProductDBManager {
    private Statement st;

    public ProductDBManager(Connection conn) throws SQLException {
        st = conn.createStatement();
    }
    
    public Product findProduct(int id) throws SQLException {
        String query = "SELECT * FROM IOTUSER.PRODUCT WHERE PROD_ID= " + id;
        ResultSet rs = st.executeQuery(query);
        
        while(rs.next()) {
            int id = rs.getInt("productID");
            int serialNum = rs.getInt("productSerialNum");
            int quantity = rs.getInt("productQuantity");
            int supplierID = rs,getInt("supplierID");
            float price = rs.getFloat("productPrice");
            String name = rs.getString("productName");
            String category = rs.getString("productCategory");
            String brand = rs.getString("productBrand");
            String image = rs.getString("productImageURL");
            
            Product product = new Product(id, serialNum, quantity, supplierID, price, category, brand, image);
            return product;
        }
        return null;
    } 
    
    
    // Create - add a new product
    public void addProduct(int id, int serialNum, int quantity, int supplierID, float price, String name, String category, String brand, String image ) throws SQLException{
        String query = 
                "INSERT INTO IOTUSER.PRODUCT(PRODUCTID, PRODUCTSERIALNUM, PRODUCTQUANTITY, SUPPLIERID, PRODUCTPRICE, PRODUCTNAME, PRODUCTCATEGORY, PRODUCTBRAND, PRODUCTIMAGEURL) " +
                "VALUES('" + id + "', " + serialNum + ", '" + quantity + "', '" + supplierID + "', " + price + ", " + name + ", " + category + ", " + brand + ", " + image + ")";
        st.execute(query);
    }
    
    // Read - list all products
    public ArrayList<Product> listAllProducts() throws SQLException {
        String query = "SELECT * FROM IOTUSER.PRODUCT ORDER BY PROD_ID";
        ResultSet rs = st.executeQuery(query);
        ArrayList<Product> list = new ArrayList<>();
        
        while(rs.next()) {
            int id = rs.getInt("productID");
            int serialNum = rs.getInt("productSerialNum");
            int quantity = rs.getInt("productQuantity");
            int supplierID = rs,getInt("supplierID");
            float price = rs.getFloat("productPrice");
            String name = rs.getString("productName");
            String category = rs.getString("productCategory");
            String brand = rs.getString("productBrand");
            String image = rs.getString("productImageURL");
            
            list.add(new Product(id, serialNum, quantity, supplierID, price, category, brand, image));
        }
        return list;
    }
    
    // Read - Search & List Product by NAME
    public ArrayList<Product> searchProductsbyName(String search) throws SQLException {
        String query = "SELECT * FROM IOTUSER.PRODUCT WHERE PRODUCT_NAME LIKE " + "%" + search + "%";
        ResultSet rs = st.executeQuery(query);
        ArrayList<Product> list = new ArrayList<>();
        
        while(rs.next()) {
            int id = rs.getInt("productID");
            int serialNum = rs.getInt("productSerialNum");
            int quantity = rs.getInt("productQuantity");
            int supplierID = rs,getInt("supplierID");
            float price = rs.getFloat("productPrice");
            String name = rs.getString("productName");
            String category = rs.getString("productCategory");
            String brand = rs.getString("productBrand");
            String image = rs.getString("productImageURL");
            
            list.add(new Product(id, serialNum, quantity, supplierID, price, category, brand, image));
        }
        return list;
    }
        
    // Read - Search & List Product by Category
    public ArrayList<Product> searchProductsbyType(String search) throws SQLException {
        String query = "SELECT * FROM IOTUSER.PRODUCT WHERE PRODUCTCATEGORY LIKE " + "%" + search + "%";
        ResultSet rs = st.executeQuery(query);
        ArrayList<Product> list = new ArrayList<>();
        
        while(rs.next()) {
            int id = rs.getInt("productID");
            int serialNum = rs.getInt("productSerialNum");
            int quantity = rs.getInt("productQuantity");
            int supplierID = rs,getInt("supplierID");
            float price = rs.getFloat("productPrice");
            String name = rs.getString("productName");
            String category = rs.getString("productCategory");
            String brand = rs.getString("productBrand");
            String image = rs.getString("productImageURL");
            
            list.add(new Product(id, serialNum, quantity, supplierID, price, category, brand, image));
        }
        return list;
    }
        
    // Read - Search & List Product by NAME and Category
    public ArrayList<Product> searchProducts(String searchName, String category) throws SQLException {
        
        // Set defaults if search name and/or type is empty
        if (searchName == null) {
            searchName = "";
        }
        if (searchCategory == null) {
            searchCategory = "";
        }
         
        String query = 
                "SELECT * FROM IOTUSER.PRODUCT " +
                "WHERE LOWER(productName) LIKE " + "'%" + searchName + "%'" +
                "AND LOWER(productCategory) LIKE " + "'%" + searchCategory + "%'";
        ResultSet rs = st.executeQuery(query);
        ArrayList<Product> list = new ArrayList<>();
        
        while(rs.next()) {
            int id = rs.getInt("productID");
            int serialNum = rs.getInt("productSerialNum");
            int quantity = rs.getInt("productQuantity");
            int supplierID = rs,getInt("supplierID");
            float price = rs.getFloat("productPrice");
            String name = rs.getString("productName");
            String category = rs.getString("productCategory");
            String brand = rs.getString("productBrand");
            String image = rs.getString("productImageURL");
            
            list.add(new Product(id, serialNum, quantity, supplierID, price, category, brand, image));
        }
        return list;
    }

    // Update - Update a single product
    public void updateProduct(int id, int serialNum, int quantity, int supplierID, float price, String name, String category, String brand, String image ) throws SQLException {
        String query = 
                "UPDATE IOTUSER.PRODUCT SET " +
                " PRODUCTID= '" + id + "', " +
                " PRODUCT= " + price + ", " +
                " = '" + desc + "', " +
                " = '" + type + "', " +
                " = " + quant + " " +
                "WHERE PROD_ID = " + id;
        
        st.execute(query);
    }
    
    // Delete - Delete a single product
    public void deleteProduct(String id) throws SQLException {
        String query = "DELETE FROM IOTUSER.PRODUCT WHERE PROD_ID =" + id;
        st.execute(query);
    }
}
