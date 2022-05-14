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
import uts.isd.model.Product;
import uts.isd.model.dao.ProductDBManager;

/**
 *
 * @author Jacky Bahary 13997263
 */
public class BrowseServlet extends HttpServlet {
    ArrayList<Product> productList;
    HttpSession session;
    ProductDBManager productDBManager;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // create product array
        productList = new ArrayList<>();
        
        //get session
        session = request.getSession();
        
        //get product manager
        productDBManager = (ProductDBManager)session.getAttribute("productDBManager");
        
        try { 
            // get all products and push it into product array variable
            productList = productDBManager.listAllProducts();
            
            // if product array is not empty, then show product list
            if (!productList.isEmpty()) {
                session.setAttribute("products", productList);
            }
        } catch (SQLException ex) {           
            Logger.getLogger(BrowseServlet.class.getName()).log(Level.SEVERE, null, ex);  
        } finally {
            //anything that happens will eventually show browsing page
            request.getRequestDispatcher("browsing.jsp").include(request, response);
            session.setAttribute("productErr", null);
        }
        
    }
}
