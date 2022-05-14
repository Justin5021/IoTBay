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
//    ArrayList<Product> productList;
//    HttpSession session;
//    ProductDBManager productDBManager;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // create product array
        ArrayList<Product> productList = new ArrayList<>();
        
        //get session
        HttpSession session = request.getSession();
        
        //get product manager
        ProductDBManager productDBManager = (ProductDBManager)session.getAttribute("productManager");
        
        try {
          productList = productDBManager.listAllProducts();
          if (!productList.isEmpty()) {
              session.setAttribute("products", productList);
              request.getRequestDispatcher("browsing.jsp").include(request, response);
          }
          else {
              session.setAttribute("empty", "Empty List");
              request.getRequestDispatcher("main.jsp").include(request, response);
          }
          } 
        catch (SQLException | NullPointerException ex) {
              System.out.println(ex.getMessage());
        }
        
    }
}
