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
import uts.isd.model.Supplier;
import uts.isd.model.dao.SupplierDBManager;

/**
 *
 * @author Pei-han Lee
 */
public class AddSupplierServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();

        String SupplierID = request.getParameter("SUPPLIERID");

        String supplierAddress = request.getParameter("SUPPLIERADDRESS");
 
        String supplierPhone = request.getParameter("SUPPLIERPHONE");

        String supplierEmail = request.getParameter("EMAIL");
        
        String supplierName = (request.getParameter("SUPPLIERNAME") );
           
        SupplierDBManager supplierManager = (SupplierDBManager) session.getAttribute("supplierManager");

        Supplier supplier = null;


           try {
            supplier = supplierManager.findSupplierPK(supplierEmail);
        } catch (SQLException ex) {
            Logger.getLogger(AddSupplierServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        if (supplier != null) {
            session.setAttribute("exceptionSupplier", "Supplier already exists");
            request.getRequestDispatcher("supplier.jsp").include(request, response);
        }

        else {
            try {
                supplierManager.addSupplier(SupplierID, supplierAddress, supplierPhone, supplierEmail, supplierName);
                request.setAttribute("SUPPLIER", supplier);
                session.setAttribute("Congrads", "Supplier creation was successful!");
                request.getRequestDispatcher("supplier.jsp").include(request, response);
            } catch (SQLException ex) {
                session.setAttribute("exceptionSupplierErr", "Submission Failed");
                request.getRequestDispatcher("supplier.jsp").include(request, response);
            }

        }
        

    }
    
    

}