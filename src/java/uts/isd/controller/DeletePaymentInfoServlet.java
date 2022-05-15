/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package uts.isd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import uts.isd.model.PaymentInfo;
import uts.isd.model.User;
import uts.isd.model.dao.PaymentInfoDBManager;

/**
 *
 * @author Epsil
 */
@WebServlet(name = "DeletePaymentInfoServlet", urlPatterns = {"/DeletePaymentInfoServlet"})
public class DeletePaymentInfoServlet extends HttpServlet {

    HttpSession session;
    PaymentInfoDBManager paymentIDManager;
    User user;
    
@Override   
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        session = request.getSession();
        paymentIDManager = (PaymentInfoDBManager)session.getAttribute("paymentIDManager");
        String id = request.getParameter("productID");
       
        try {    
            paymentIDManager.deletePaymentInfo(id);
            } 
        catch (SQLException ex) {           
            Logger.getLogger(DeletePaymentInfoServlet.class.getName()).log(Level.SEVERE, null, ex);       
        }
    request.getRequestDispatcher("staffMain.jsp").include(request, response);
    }    
}
