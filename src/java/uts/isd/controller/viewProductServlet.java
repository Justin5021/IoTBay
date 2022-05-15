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
 * @author jacky
 */
public class viewProductServlet extends HttpServlet {
    @Override   
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        // create product array
        ArrayList<Product> productList = new ArrayList<Product>();
        
        //get session
        HttpSession session = request.getSession();

        ProductDBManager productManager = (ProductDBManager) session.getAttribute("productManager");
        
        try {
          productList = productManager.listAllProducts();
          if (!productList.isEmpty()) {
              session.setAttribute("products", productList);
              System.out.println("Products Found");
          }
          else {
              System.out.println("Products Not Found");
          }
        } 
        catch (SQLException | NullPointerException ex) {
              System.out.println(ex.getMessage());
        }
        
        request.getRequestDispatcher("products.jsp").include(request, response);
        
    }
    
}
