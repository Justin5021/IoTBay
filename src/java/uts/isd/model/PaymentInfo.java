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
public class PaymentInfo implements Serializable{
    private int paymentInfoID, userID;
    private String cardHolderName, cardNumber, cardCountry, cardCVC, cardExpiryDate;
    
    public PaymentInfo(
            int paymentInfoID,
            int userID,
            String cardHolderName,
            String cardNumber,
            String cardCountry,
            String cardCVC,
            String cardExpiryDate){
        this.paymentInfoID = paymentInfoID;
        this.userID = userID;
        this.cardHolderName = cardHolderName;
        this.cardNumber = cardNumber;
        this.cardCountry = cardCountry;
        this.cardCVC = cardCVC;
        this.cardExpiryDate = cardExpiryDate;
    }
    
    public int getPaymentInfoID() {
        return paymentInfoID;
    }
    
    public void setPaymentInfoID(int paymentInfoID) {
        this.paymentInfoID = paymentInfoID;
    }
    
    public int getUserID() {
        return userID;
    }
    
    public void setUserID(int userID) {
        this.userID = userID;
    }
    
    public String getCardHolderName() {
        return cardHolderName;
    }
    
    public void setCardHolderName(String cardHolderName) {
        this.cardHolderName = cardHolderName;
    }
    
    public String getCardNumber() {
        return cardNumber;
    }
    
    public void setCardNumber(String cardNumber) {
        this.cardNumber = cardNumber;
    }
    
    public String getCardCountry() {
        return cardCountry;
    }
    
    public void setCardCountry(String cardCountry) {
        this.cardCountry = cardCountry;
    }
    
    public String getCardCVC() {
        return cardCVC;
    }
    
    public void setCardCVC(String cardCVC) {
        this.cardCVC = cardCVC;
    }
    
    public String getCardExpiryDate() {
        return cardExpiryDate;
    }
    
    public void setCardExpiryDate(String cardExpiryDate) {
        this.cardExpiryDate = cardExpiryDate;
    }
    
}

