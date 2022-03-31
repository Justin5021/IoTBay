/*
 * Staff is a JavaBean which stores the Staff Model Data
 */
package uts.isd.model;

import java.io.Serializable;

/**
 * @author Justin Chin, 13595766
 */
public class Staff implements Serializable {
    //    private int staffID;
    private String firstName, lastName, email, phoneNumber, country, password;

    public Staff(
//            int staffID, 
            String firstName, 
            String lastName, 
            String email, 
            String password, 
            String phoneNumber,  
            String country) {
//        this.staffID = staffID;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.phoneNumber = phoneNumber;
        this.country = country;
    }

//    public int getUserID() {
//        return userID;
//    }
//    
//    public void setUserID(int userID) {
//        this.userID = userID;
//    }
    
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
}
