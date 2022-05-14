package uts.isd.model.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import uts.isd.model.User;

/**
 * @author Justin 13595766
 */
public class UserManagerDAO {
    
    private Statement st;

    public UserManagerDAO(Connection conn) throws SQLException {
        st = conn.createStatement();
    }

    public User findUser(String email, String password) throws SQLException {
        String fetch = "SELECT * FROM IOTBAY.Users WHERE Email= '" + email + "' and Pass='" + password + "' ";
        ResultSet rs = st.executeQuery(fetch);
        while (rs.next()) {
            String userEmail = rs.getString(4); 
            String userPass = rs.getString(5);
            if ( userEmail.equals(email) && userPass.equals(password) ) {
                int userID  = rs.getInt(1);
                String userFirstName  = rs.getString(2);
                String userLastName  = rs.getString(3);
                String userPhone  = rs.getString(6);
                String userStreetNum  = rs.getString(7);
                String userStreetName  = rs.getString(8);
                String userStreetType  = rs.getString(9);
                String userSuburb  = rs.getString(10);
                String userState  = rs.getString(11);
                String userPostcode  = rs.getString(12);
                String userCountry  = rs.getString(13);
                // Get the info from query, create a new data object                
                return new User(
                    userID, 
                    userFirstName, 
                    userLastName, 
                    userEmail, 
                    userPass, 
                    userPhone, 
                    userStreetNum,
                    userStreetName,    
                    userStreetType,    
                    userSuburb,    
                    userState,    
                    userPostcode,    
                    userCountry    
                );
            }
        }
        return null;
    }

    // Add a new user into the Users table
    public void addUser(String firstName, String lastName, String email, String password,
                        int phoneNumber, int streetNumber, String streetName, String streetType,
                        String suburb, String state, int postcode, String country) throws SQLException {       
        st.executeUpdate(
                "INSERT INTO IOTBAY.Users VALUES (FIRSTNAME, LASTNAME, EMAIL, PASSWORD, PHONENUMBER,"
                + " STREETNUMBER, STREETNAME, STREETTYPE, SUBURB, STATE, POSTCODE, COUNTRY) VALUES ("
                + "'" + firstName + "'," + "'" + lastName + "'," + "'" + email + "',"
                + "'" + password + "'," + "" + phoneNumber + "," + "" + streetNumber + "," + "'" + streetName + "',"
                + "'" + streetType + "'," + "'" + suburb + "'," + "'" + state + "'," + "" + postcode + ","
                + "'" + country + "'"
                + ")");
    }

    // Update a users details into the database   
    public void updateUser(int Id, String firstName, String lastName, String email, String password,
            int phoneNumber, int streetNumber, String streetName, String streetType,
            String suburb, String state, int postcode, String country) throws SQLException {

        String fetch = "UPDATE IOTBAY.Users "
                + "SET FIRSTNAME=" + "'" + firstName + "',"
                + "LASTNAME=" + "'" + lastName + "',"
                + "EMAIL=" + "'" + email + "',"
                + "PASSWORD=" + "'" + password + "',"
                + "PHONENUMBER=" + "" + phoneNumber + ","
                + "STREETNUMBER=" + "" + streetNumber + ","
                + "STREETNAME=" + "'" + streetName + "',"
                + "STREETTYPE=" + "'" + streetType + "',"
                + "SUBURB=" + "'" + suburb + "',"
                + "STATE=" + "'" + state + "',"
                + "POSTCODE=" + "" + postcode + ","
                + "COUNTRY=" + "'" + country + "'"
                + "WHERE USERID=" + Id;
        System.out.print(fetch);
        st.executeUpdate(fetch);
    }

    //delete a user from the database   
    public void deleteUser(int Id) throws SQLException {
        String fetch = "DELETE FROM IOTBAY.Users WHERE USERID=" + Id;
        st.executeUpdate(fetch);
    }

    // List all the users found in the Users Table
    public ArrayList<User> getUsers() throws SQLException {
        String fetch = "SELECT * FROM IOTBAY.Users";
        ResultSet rs = st.executeQuery(fetch);
        ArrayList<User> temp = new ArrayList<>();
        while (rs.next()) {
            temp.add(new User(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5),
                    rs.getString(6),
                    rs.getString(7),
                    rs.getString(8),
                    rs.getString(9),
                    rs.getString(10),
                    rs.getString(11),
                    rs.getString(12),
                    rs.getString(13)
            ));
        }
        System.out.print("LIST OF USERS");
        System.out.print(temp);
        return temp;
    }

    // Get a User by their ID from the database
    public User getUserById(int Id) throws SQLException {
        String fetch = "SELECT * FROM IOTBAY.Users WHERE USERID=" + Id;
        ResultSet rs = st.executeQuery(fetch);
        while (rs.next()) {
            if (Id == rs.getInt("USERID")) {
                return new User(
                        rs.getInt("USERID"),
                        rs.getString("FIRSTNAME"),
                        rs.getString("LASTNAME"),
                        rs.getString("EMAIL"),
                        rs.getString("PASSWORD"),
                        rs.getString("PHONENUMBER"),
                        rs.getString("STREETNUMBER"),
                        rs.getString("STREETNAME"),
                        rs.getString("STREETTYPE"),
                        rs.getString("SUBURB"),
                        rs.getString("STATE"),
                        rs.getString("POSTCODE"),
                        rs.getString("COUNTRY")
                );
            }
        }
        return null;
    }

    public int getUserID(String email, String password) throws SQLException {
        String fetch = "SELECT * FROM IOTBAY.Users WHERE Email = '" + email + "' AND Pass = '" + password + "'";
        ResultSet rs = st.executeQuery(fetch);

        while (rs.next()) {
            int userID = rs.getInt(1);
            String emails = rs.getString(4);
            String passwords = rs.getString(5);

            if ((password.equals(passwords)) && email.equals(emails)) {
                return userID;
            }
        }
        return 0;
    }

    public boolean checkUser(String email, String password) throws SQLException {
        String fetch = "SELECT * FROM IOTBAY.Users WHERE Email= '" + email + "' and Pass='" + password + "' ";
        ResultSet rs = st.executeQuery(fetch);
        while ( rs.next() ) {
            String userEmail = rs.getString(4); 
            String userPass = rs.getString(5);
            if ( userEmail.equals(email) && userPass.equals(password) ) {
                return true;
            }
        }
        return false;
    }

    /* Following Section is for Log Tracking */    
    // Adds Registered Log
    public void addRegisterLog(int userID) throws SQLException {
        String registered = "Registered";
        String fetch = "INSERT INTO IOTBAY.UserLogs (USERID, STATUS ,CurrentTime) VALUES (" + userID + ",'" + registered + "',CURRENT_TIMESTAMP)";
        st.execute(fetch);
    }

    public void addLogoutLog(int userID) throws SQLException {
        String loggedOut = "Logged Out";
        String fetch = "INSERT INTO IOTBAY.UserLogs (USERID, STATUS ,CurrentTime) VALUES (" + userID + ",'" + loggedOut + "',CURRENT_TIMESTAMP)";
        st.execute(fetch);
    }

    //adds a loging log to the account log table when signing in
    public void addLoginLog(int userID) throws SQLException {
        String loggedIn = "Logged In";
        String fetch = "INSERT INTO IOTBAY.UserLogs (USERID, STATUS ,CurrentTime) VALUES (" + userID + ",'" + loggedIn + "',CURRENT_TIMESTAMP)";
        st.execute(fetch);
    }

    //returns an Array list of the account logs related to the userID
    public ArrayList getLogs(int userID) throws SQLException {

        ArrayList loglist = new ArrayList();

        String fetch = "SELECT * FROM IOTBAY.UserLogs WHERE UserID =" + userID;
        ResultSet rs = st.executeQuery(fetch);

        while (rs.next()) {
            String action = rs.getString(2);

            loglist.add(action);

        }

        return loglist;
    }
    //returns account log times in the account log table related to userID
    public ArrayList getTLogs(int userID) throws SQLException {

        ArrayList loglist = new ArrayList();

        String fetch = "SELECT * FROM IOTBAY.UserLogs WHERE UserID =" + userID;
        ResultSet rs = st.executeQuery(fetch);

        while (rs.next()) {

            String timedate = rs.getString(3);

            loglist.add(timedate);

        }

        return loglist;
    }
}
