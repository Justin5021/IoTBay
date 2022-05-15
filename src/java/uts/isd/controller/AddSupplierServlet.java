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
 * @author Pei-han Lee
 */
public class AddSupplierServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String supplierName = (request.getParameter("suppname") );
        String supplierAddress = request.getParameter("suppaddress");
        String supplierPhone = request.getParameter("suppphone");
        String supplierEmail = request.getParameter("suppemail");
        SupplierDBManager manager = (SupplierDBManager) session.getAttribute("supplierManager");

        try {
            if ( !(manager.findSupplierPK(supplierEmail)) ) {
                manager.addSupplier(supplierAddress, supplierPhone, supplierEmail, supplierName);
                session.setAttribute("Congratulations", "Supplier creation was successful!");
                request.getRequestDispatcher("supplier.jsp").include(request, response);
            } else {
                session.setAttribute("exceptionCreateSupplierErr", "Creation Failed");
                request.getRequestDispatcher("supplier.jsp").include(request, response);
            }
        } catch (SQLException | NullPointerException ex) {
            System.out.println(ex.getMessage() == null ? "Failed to Add new Supplier" : "Succesful Creation");
        }
    }
}