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
import uts.isd.model.dao.SupplierDBManager;

/**
 *
 * @author pei-han lee 14200099
 */
public class DeleteSupplierServlet extends HttpServlet {
    HttpSession session;
    SupplierDBManager supplierDBManager;
    User user;
    
@Override   
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    session = request.getSession();
        

        user = (User)session.getAttribute("user");
        
        if (user != null && user.getClass().getSimpleName().equals("Staff")) {
            supplierDBManager = (SupplierDBManager)session.getAttribute("supplierDBManager");
            String ID = request.getParameter("id");

        try {    
            supplierDBManager.deleteSupplier(ID);
            session.setAttribute("SupplierErr", "Supplier " + ID + " Deleted");
             } catch (SQLException ex) {           
                            Logger.getLogger(DeleteSupplierServlet.class.getName()).log(Level.SEVERE, null, ex);       
                           }
    }
        response.sendRedirect("SupplierServlet");
     }
}