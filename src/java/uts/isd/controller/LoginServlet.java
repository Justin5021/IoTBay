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
import uts.isd.model.Staff;
import uts.isd.model.dao.UserManagerDAO;

/**
 * @author Justin 13595766
 */

public class LoginServlet extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        String email = request.getParameter("email").toLowerCase();
        String password = request.getParameter("pass");
        UserManagerDAO manager = (UserManagerDAO) session.getAttribute("manager");
        User user;

        try {
            // Find the matching user
            user = manager.findUser(email, password);
            int userID = manager.getUserID(email, password);
            if ( user != null ) {
                manager.addLoginLog(userID);
                session.setAttribute("user", user);
                request.getRequestDispatcher("welcome.jsp").include(request, response);
            } else {
                session.setAttribute("incorrectpass", "Incorrect Email or Password");
                request.getRequestDispatcher("login.jsp").include(request, response);
            }
        } catch (SQLException | NullPointerException ex) {
            System.out.println(ex.getMessage() == null ? "Incorrect Email or Password" : "Welcome");
        }
    }

}