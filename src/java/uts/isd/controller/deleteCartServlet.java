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
 * @author Jacky Bahary
 */
public class deleteCartServlet extends HttpServlet {
    @Override   
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        
        //get session
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        CartManagerDAO cartManager = (CartManagerDAO) session.getAttribute("cartManager");

        int uID = user.getUserID();
        int productID = Integer.parseInt(request.getParameter("productID"));
        
        try {
          cartManager.removeFromCart(uID, productID);
        } 
        catch (SQLException | NullPointerException ex) {
              System.out.println(ex.getMessage());
        }
        
        request.getRequestDispatcher("browsing.jsp").include(request, response);
        
    }
    
}
