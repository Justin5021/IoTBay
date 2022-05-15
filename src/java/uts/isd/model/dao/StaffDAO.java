package uts.isd.model.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import uts.isd.model.Staff;

/**
 * @author Justin 13595766
 */
public class StaffDAO {

    private Statement st;

    public StaffDAO(Connection conn) throws SQLException {
        st = conn.createStatement();
    }

    public Staff findStaff(String email, String password) throws SQLException {
        String fetch = "SELECT * FROM IOTBAY.Staff WHERE StaffEmail= '" + email + "' and StaffPass='" + password + "' ";
        ResultSet rs = st.executeQuery(fetch);
        while (rs.next()) {
            String staffEmail = rs.getString(4); 
            String staffPass = rs.getString(5);
            if ( staffEmail.equals(email) && staffPass.equals(password) ) {
                int staffID  = rs.getInt(1);
                String staffFirstName  = rs.getString(2);
                String staffLastName  = rs.getString(3);
                String staffPhone  = rs.getString(6);
                String staffCountry  = rs.getString(7);
                // Get the info from query, create a new data object                
                return new Staff(
                    staffID, 
                    staffFirstName, 
                    staffLastName, 
                    staffEmail, 
                    staffPass, 
                    staffPhone,
                    staffCountry    
                );
            }
        }
        return null;
    }

    public void addStaff(String firstName, String lastName, String email, String pass, String phoneNum, String country) throws SQLException{
        String query = 
                "INSERT INTO IOTBAY.STAFF(STAFFFIRSTNAME, STAFFLASTNAME, STAFFEMAIL, STAFFPASS, STAFFPHONE, STAFFCOUNTRY) " +
                "VALUES('" + firstName + "', '" + lastName + "', '" + email + "', '" + pass + "', '" + phoneNum + "', '" + country + "')";
        st.execute(query);
    }

    public int getStaffID(String email, String password) throws SQLException {
        String fetch = "SELECT * FROM IOTBAY.Staff WHERE StaffEmail = '" + email + "' AND StaffPass = '" + password + "'";
        ResultSet rs = st.executeQuery(fetch);
        while (rs.next()) {
            int staffID = rs.getInt(1);
            String emails = rs.getString(4);
            String passwords = rs.getString(5);
            if ((password.equals(passwords)) && email.equals(emails)) {
                return staffID;
            }
        }
        return 0;
    }

    public boolean checkStaff(String email) throws SQLException {
        String fetch = "SELECT * FROM IOTBAY.Staff WHERE StaffEmail= '" + email + "'";
        ResultSet rs = st.executeQuery(fetch);
        while ( rs.next() ) {
            String userEmail = rs.getString(4);
            if ( userEmail.equals(email) ) {
                return true;
            }
        }
        return false;
    }
}
