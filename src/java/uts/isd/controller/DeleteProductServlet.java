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
import uts.isd.model.User;
import uts.isd.model.dao.ProductDBManager;

/**
 *
 * @author pei-han lee 14200099
 */
public class DeleteProductServlet extends HttpServlet {
    HttpSession session;
    ProductDBManager productDBManager;
    User user;
    
@Override   
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    session = request.getSession();
        

        user = (User)session.getAttribute("user");
        
        if (user != null && user.getClass().getSimpleName().equals("Staff")) {
            productDBManager = (ProductDBManager)session.getAttribute("productDBManager");
            String id = request.getParameter("id");

        try {    
            productDBManager.deleteProduct(id);
            session.setAttribute("productErr", "Product " + id + " deleted");
             } catch (SQLException ex) {           
                            Logger.getLogger(DeleteProductServlet.class.getName()).log(Level.SEVERE, null, ex);       
                           }
    }
        response.sendRedirect("ProductListServlet");
     }
}