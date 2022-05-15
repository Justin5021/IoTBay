package uts.isd.controller;

import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.http.HttpSession;

/**
 * @author Justin 13595766
 */

public class Validator implements Serializable{ 
    private String fnamePattern = "[a-zA-Z]*";
    private String lnamePattern = "[a-zA-Z]*";
    private String emailPattern = "^(.+)@(.+)$";
    private String passwordPattern = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]).{8,20}$"; 
    private String phonePattern = "[0-9]{8,10}";
    private String postcodePattern = "^\\d{4}$";
    private String streetNumPattern = "^\\d{1,4}$";

    public Validator() {}       

    public boolean validate(String pattern, String input) {
        Pattern regEx = Pattern.compile(pattern);       
        Matcher match = regEx.matcher(input);       
        return match.matches(); 
    }       
    public boolean checkEmpty(String email, String password) {
        return email.isEmpty() || password.isEmpty();   
    }
    public boolean validateFirstName(String name) {
        return validate(fnamePattern,name); 
    }       
    public boolean validateLastName(String name) {
        return validate(lnamePattern,name); 
    }       
    public boolean validateEmail(String email) {
        return validate(emailPattern,email);
    }
    public boolean validatePassword(String password) {
        return validate(passwordPattern,password); 
    }
    public boolean validatePhone(String phone) {
        return validate(phonePattern,phone); 
    }
    public boolean validatePostcode(String postcode) {
        return validate(postcodePattern,postcode); 
    }
    public boolean validateStreetNum(String streetNum) {
        return validate(streetNumPattern,streetNum); 
    }

    public void clear(HttpSession session) {
        session.setAttribute("existErr","");
        session.setAttribute("fnameErr","Enter First Name");
        session.setAttribute("lnameErr","Enter Last Name");
        session.setAttribute("emailErr","Enter Email");
        session.setAttribute("passErr","Enter Password");
        session.setAttribute("phoneErr","Enter Phone Number");
        session.setAttribute("postcodeErr","Enter Postcode");
        session.setAttribute("streetNumErr","Enter Street Number");
    }
    
}