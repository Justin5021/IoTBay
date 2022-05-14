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
import uts.isd.model.dao.UserManagerDAO;

/**
 * @author Justin 13595766
 */

public class LogoutServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        UserManagerDAO manager = (UserManagerDAO) session.getAttribute("userManager");
        User user = (User) session.getAttribute("user");
        String email = user.getEmail();
        String password = user.getPassword();
        int userID;
        try {
            userID = manager.getUserID(email, password);
            manager.addLogoutLog(userID);
        } catch (SQLException ex) {
            Logger.getLogger(LogoutServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        session.invalidate();
        request.getRequestDispatcher("index.jsp").include(request,response);
    }

}