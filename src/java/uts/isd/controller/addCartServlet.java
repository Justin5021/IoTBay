/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.isd.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import uts.isd.model.Cart;
import uts.isd.model.dao.CartManagerDAO;
import uts.isd.model.User;

/**
 *
 * @author Jacky Bahary 13997263
 */
public class addCartServlet extends HttpServlet {
    @Override   
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        int productID = Integer.parseInt(request.getParameter("productID"));
        int cartQuantity = Integer.parseInt(request.getParameter("cartQuantity"));

        CartManagerDAO cartManager = (CartManagerDAO) session.getAttribute("cartManager");

        int uID = user.getUserID();
        
        try{
            cartManager.addToCart(uID, productID, cartQuantity); //adding to cart
            System.out.println("Added to Database"); 
        }catch(SQLException ex){
            Logger.getLogger(addCartServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        request.getRequestDispatcher("browsing.jsp").include(request, response);
        
    }
    
}
