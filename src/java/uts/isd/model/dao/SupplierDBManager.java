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
    public void addSupplier(int ID, String address, String number, String name, String email ) throws SQLException {
        st.executeUpdate("INSERT INTO IOTBAY.SUPPLIER (SUPPLIERID, SUPPLIERADDRESS, SUPPLIERPHONE, SUPPLIERNAME, SUPPLIEREMAIL) "
                + "VALUES ('" + ID + "','" + address + "', " + number + ", '" + name + "' , '" + email + ")");
    }

    //Read
    public Supplier findSupplierByID(String ID) throws SQLException {
        String query = "SELECT * FROM IOTBAY.SUPPLIER WHERE SUPPLIERID = '" + ID + "'";
        ResultSet rs = st.executeQuery(query);
        while (rs.next()) {
            String supplierID = rs.getString("SUPPLIERID");

            if (ID.equals(supplierID)) {
                int id = rs.getInt("SUPPLIERID");
                String address = rs.getString("SUPPLIERADDRESS");
                String number  = rs.getString("SUPPLIERPHONE");
                String name = rs.getString("SUPPLIERNAME");
                String email = rs.getString("EMAIL");


                return new Supplier(id, address, number, name, email);
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
    public void deleteSupplier(int id) throws SQLException {
        st.executeUpdate("DELETE FROM IOTBAY.SUPPLIER WHERE SUPPLIERID=" + id);
    }

    //Fetch all
    public ArrayList<Supplier> fetchAll() throws SQLException {
        String query = "select * from SUPPLIER";
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

}
