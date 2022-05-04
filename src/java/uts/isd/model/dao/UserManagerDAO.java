package uts.isd.model.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import uts.isd.model.User;

/**
 *
 * @author Justin
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
            String suburb, String state, int postcode, String country) throws SQLException {                   //code for add-operation       
        st.executeUpdate("INSERT INTO \"USERS\" (FIRSTNAME, LASTNAME, EMAIL, PASSWORD, PHONENUMBER,"
                + " STREETNUMBER, STREETNAME, STREETTYPE, SUBURB, STATE, POSTCODE, COUNTRY) VALUES ("
                + "'" + firstName + "'," + "'" + lastName + "'," + "'" + email + "',"
                + "'" + password + "'," + "" + phoneNumber + "," + "" + streetNumber + "," + "'" + streetName + "',"
                + "'" + streetType + "'," + "'" + suburb + "'," + "'" + state + "'," + "" + postcode + ","
                + "'" + country + "'"
                + ")");
    }

    // List all the users found in the Users Table
    public List<User> getUsers() throws SQLException {
        String fetch = "SELECT * FROM \"USERS\"";
        ResultSet rs = st.executeQuery(fetch);
        List<User> users = new ArrayList<>();
        while (rs.next()) {
            users.add(new User(
                    rs.getInt("UserID"),
                    rs.getString("FirstName"),
                    rs.getString("LastName"),
                    rs.getString("Email"),
                    rs.getString("Pass"),
                    rs.getString("PhoneNumber"),
                    rs.getString("StreetNumber"),
                    rs.getString("StreetName"),
                    rs.getString("StreetType"),
                    rs.getString("Suburb"),
                    rs.getString("State"),
                    rs.getString("Postcode"),
                    rs.getString("Country")
            ));
        }
        System.out.print("LIST OF USERS");
        System.out.print(users);
        return users;
    }

    // Get a User by their ID from the database
    public User getUserById(int id) throws SQLException {
        String fetch = "SELECT * FROM \"USERS\" WHERE USERID=" + id;
        ResultSet rs = st.executeQuery(fetch);
        while (rs.next()) {
            if (id == rs.getInt("USERID")) {
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
    
    //update a user details in the database   
    public void updateUser(int userId, String firstName, String lastName, String email, String password,
            int phoneNumber, int streetNumber, String streetName, String streetType,
            String suburb, String state, int postcode, String country) throws SQLException {

        String fetch = "UPDATE \"USERS\" "
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
                + " WHERE USERID=" + userId;

        System.out.print(fetch);
        st.executeUpdate(fetch);

    }

    //delete a user from the database   
    public void deleteUser(int id) throws SQLException {
        String fetch = "DELETE FROM \"USERS\" WHERE USERID=" + id;
        st.executeUpdate(fetch);
    }

}
