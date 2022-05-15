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
        int productSerialNum = Integer.parseInt(request.getParameter("productSerialNum"));
        String productName = request.getParameter("productName");
        String productCategory = request.getParameter("productCategory");
        String productBrand = request.getParameter("productBrand");
        float productPrice = Float.parseFloat(request.getParameter("productPrice"));
        int productQuantity = Integer.parseInt(request.getParameter("productQuantity"));
        String productImageURL = request.getParameter("productImageURL");
        int supplierID = Integer.parseInt(request.getParameter("supplierID"));
        
        try {
          productManager.updateProduct(productID, productSerialNum, productQuantity, supplierID, productPrice, productName, productCategory, productBrand, productImageURL);
          System.out.println("Product Updated");
        } 
        catch (SQLException | NullPointerException ex) {
              System.out.println(ex.getMessage());
              Logger.getLogger(editProductServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        request.getRequestDispatcher("staffMain.jsp").include(request, response);
        
    }
    
}
