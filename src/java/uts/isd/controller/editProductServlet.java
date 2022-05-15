/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.isd.controller;

import java.io.IOException;
import java.sql.SQLException;
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
 * @author Jacky Bahary
 */
public class editProductServlet extends HttpServlet {
    
    @Override   
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        
        //get session
        HttpSession session = request.getSession();

        ProductDBManager productManager = (ProductDBManager) session.getAttribute("productManager");
        
        int productID = Integer.parseInt(request.getParameter("productID"));
        
        Product productFound;
        
        try {
          productFound = productManager.findProduct(productID);
          System.out.println(productFound.getProductName());
          session.setAttribute("product", productFound);
          System.out.println("Product Found");
        } 
        catch (SQLException | NullPointerException ex) {
              System.out.println(ex.getMessage());
              Logger.getLogger(editProductServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        request.getRequestDispatcher("editProduct.jsp").include(request, response);
        
    }
    
}
