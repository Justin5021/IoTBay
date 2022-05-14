package uts.isd.controller;

import java.io.IOException;
import java.sql.SQLException;
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

public class LoginServlet extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Validator validator = new Validator();
        String email = request.getParameter("email");
        String password = request.getParameter("pass");
        UserManagerDAO manager = (UserManagerDAO) session.getAttribute("userManager");
        User user;
        validator.clear(session);

        if (!validator.validateEmail(email)) {
            session.setAttribute("emailErr", "Error: Incorrect Email");
            request.getRequestDispatcher("login.jsp").include(request, response);
        } else if (!validator.validatePassword(password)) {
            session.setAttribute("passErr", "Error: Incorrect Password");
            request.getRequestDispatcher("login.jsp").include(request, response);
        } else {
            try {
                // Find the matching user
                user = manager.findUser(email, password);
                int userID = manager.getUserID(email, password);
                if ( user != null ) {
                    manager.addLoginLog(userID);
                    session.setAttribute("user", user);
                    request.getRequestDispatcher("welcome.jsp").include(request, response);
                } else {
                    session.setAttribute("existErr", "Error: User Does Not Exist");
                    request.getRequestDispatcher("login.jsp").include(request, response);
                }
            } catch (SQLException | NullPointerException ex) {
                System.out.println(ex.getMessage() == null ? "Incorrect Email or Password" : "Welcome");
            }
        }
    }

}
