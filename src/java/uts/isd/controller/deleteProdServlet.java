/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
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
import uts.isd.model.dao.ProductDBManager;

/**
 *
 * @author Jacky Bahary 13997263
 */
public class deleteProdServlet extends HttpServlet {
    HttpSession session;
    ProductDBManager productManager;
    
@Override   
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        session = request.getSession();
        productManager = (ProductDBManager)session.getAttribute("productManager");
        String id = request.getParameter("productID");
       
        try {    
            productManager.deleteProduct(id);
            } 
        catch (SQLException ex) {           
            Logger.getLogger(DeleteProductServlet.class.getName()).log(Level.SEVERE, null, ex);       
        }
    request.getRequestDispatcher("staffMain.jsp").include(request, response);
    }    
}
