/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uts.isd.model.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import uts.isd.model.Supplier;

/**
 *
 * @author pei-han lee 14200099
 */
public class SupplierDBManager {
    private Statement st;

    public SupplierDBManager(Connection conn) throws SQLException {
        st = conn.createStatement();
    }

    //Create
    public void addSupplier(String address, String number, String name, String email ) throws SQLException {
        st.executeUpdate("INSERT INTO IOTBAY.SUPPLIER (SUPPLIERADDRESS, SUPPLIERPHONE, SUPPLIERNAME, SUPPLIEREMAIL) "
                + "VALUES ('" + address + "','" + number + "', " + name + ", '" + email + ")");
    }

    //Read
    public Supplier findSupplierByID(String ID) throws SQLException {
        String query = "SELECT * FROM IOTBAY.SUPPLIER WHERE SUPPLIERID = '" + ID + "'";
        ResultSet rs = st.executeQuery(query);
        while (rs.next()) {
            String supplierID = rs.getString("SUPPLIERID");

            if (ID.equals(supplierID)) {
                int id = rs.getInt("SUPPLIERID");
                String name = rs.getString("SUPPLIERNAME");
                String address = rs.getString("SUPPLIERADDRESS");
                String number  = rs.getString("SUPPLIERPHONE");
                String email = rs.getString("EMAIL");


                return new Supplier(id, name, address, number, email);
            }
        }
        return null;
    }

    public Supplier findSupplier(String email) throws SQLException {
        String fetch = "SELECT * FROM IOTBAY.Supplier WHERE SupplierEmail=" + email;
        ResultSet rs = st.executeQuery(fetch);
        while (rs.next()) {
            String supplierEmail = rs.getString(5); 
            if ( supplierEmail.equals(email) ) {
                int supplierID  = rs.getInt(1);
                String supplierName  = rs.getString(2);
                String supplierAddress  = rs.getString(3);
                String supplierPhone  = rs.getString(4);
                // Get the info from query, create a new data object                
                return new Supplier(
                    supplierID, 
                    supplierName, 
                    supplierAddress, 
                    supplierPhone, 
                    supplierEmail
                );
            }
        }
        return null;
    }

    public ArrayList<Supplier> filterSuppliers(int id, String name) throws SQLException {
        String query = "SELECT * FROM IOTBAY.SUPPLIER WHERE SUPPLIERID = '" + id + "' OR SUPPLIERNAME= '" + name + "'";
        ResultSet rs = st.executeQuery(query);
        ArrayList<Supplier> suppliers = new ArrayList();

        while (rs.next()) {
                int SupplierID = rs.getInt("SUPPLIERID");
                String address = rs.getString("SUPPLIERADDRESS");
                String number  = rs.getString("SUPPLIERPHONE");
                String SupplierName = rs.getString("SUPPLIERNAME");
                String email = rs.getString("EMAIL");

            suppliers.add(new Supplier(SupplierID, address, number, SupplierName, email));
        }
        return suppliers;
    }


    //Delete
    public void deleteSupplier(String id) throws SQLException {
        st.executeUpdate("DELETE FROM IOTBAY.SUPPLIER WHERE SUPPLIERID=" + id);
    }

    //Fetch all
    public ArrayList<Supplier> listAllSuppliers() throws SQLException {
        String query = "SELECT * FROM IOTBAY.SUPPLIER ORDER BY SupplierID";
        ResultSet rs = st.executeQuery(query);
        ArrayList<Supplier> suppliers = new ArrayList();

        while (rs.next()) {
            int supplierID = rs.getInt("SUPPLIERID");
            String name = rs.getString("SUPPLIERNAME");
            String address = rs.getString("SUPPLIERADDRESS");
            String number  = rs.getString("SUPPLIERPHONE");
            String email = rs.getString("SUPPLIEREMAIL");
            suppliers.add(new Supplier(supplierID, name, address, number, email));
        }
        return suppliers;
    }

    public boolean findSupplierPK(String supplierEmail) throws SQLException {
        String query = "SELECT * FROM IOTBAY.Supplier WHERE SupplierEmail="+ supplierEmail;
        ResultSet rs = st.executeQuery(query);
        while ( rs.next() ) {
            String suppEmail = rs.getString(5);
            if ( suppEmail.equals(supplierEmail) ) {
                return true;
            }
        }
        return false;
    }

    public void addSupplier(String SupplierID, String supplierAddress, String supplierPhone, String supplierEmail, String supplierName) {
        throw new UnsupportedOperationException("gggg"); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }


}
