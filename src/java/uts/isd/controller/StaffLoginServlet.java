package uts.isd.controller;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import uts.isd.model.Staff;
import uts.isd.model.dao.StaffDAO;

/**
 * @author Justin 13595766
 */

public class StaffLoginServlet extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Validator validator = new Validator();
        String email = request.getParameter("email");
        String password = request.getParameter("pass");
        StaffDAO manager = (StaffDAO) session.getAttribute("staffManager");
        Staff staff;
        validator.clear(session);
        if (!validator.validateEmail(email)) {
            session.setAttribute("emailErr", "Error: Incorrect Email");
            request.getRequestDispatcher("staffLogin.jsp").include(request, response);
        } else if (!validator.validatePassword(password)) {
            session.setAttribute("passErr", "Error: Incorrect Password");
            request.getRequestDispatcher("staffLogin.jsp").include(request, response);
        } else {
            try {
                // Find the matching user
                staff = manager.findStaff(email, password);
                if ( staff != null ) {
                    session.setAttribute("staff", staff);
                    request.getRequestDispatcher("staffWelcome.jsp").include(request, response);
                } else {
                    session.setAttribute("existErr", "Error: User Does Not Exist");
                    request.getRequestDispatcher("staffLogin.jsp").include(request, response);
                }
            } catch (SQLException | NullPointerException ex) {
                System.out.println(ex.getMessage() == null ? "Incorrect Email or Password" : "Welcome");
            }
        }
    }
}