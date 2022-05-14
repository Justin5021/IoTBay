/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.isd.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import uts.isd.model.dao.OrderManagerDAO;
import uts.isd.model.Orders;
import uts.isd.model.User;

/**
 *
 * @author hooni
 */
@WebServlet(name = "OrderHistoryServlet", urlPatterns = {"/OrderHistoryServlet"})
public class OrderHistoryServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        int userID = ((User) session.getAttribute("user")).getUserID();
        
        OrderManagerDAO orderManager = (OrderManagerDAO) session.getAttribute("orderManager");

        try {
            ArrayList<Orders> orders = orderManager.fetchOrders(userID);
            session.setAttribute("orders", orders);
            request.getRequestDispatcher("orderHistory.jsp").include(request, response);

        } catch (SQLException ex) {
            Logger.getLogger(OrderHistoryServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        

    }
}
