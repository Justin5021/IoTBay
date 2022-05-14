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
import uts.isd.model.Staff;
import uts.isd.model.dao.StaffDAO;

/**
 * @author Justin 13595766
 */

public class StaffRegisterServlet extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Validator validator = new Validator();
        String firstName = request.getParameter("fname");
        String lastName = request.getParameter("lname");
        String email = request.getParameter("email");
        String password = request.getParameter("pass");
        String phoneNumber = request.getParameter("phonenum");
        String country = request.getParameter("country");
        String confirmed = request.getParameter("cpass");
        StaffDAO manager = (StaffDAO) session.getAttribute("staffManager");
        validator.clear(session);
        
        if ( !password.equals(confirmed) ) { // Check that Password and Confirmed Password are the same
            session.setAttribute("matchErr", "Passwords do not match");
            request.getRequestDispatcher("staffRegister.jsp").include(request, response);
        } else if ( !validator.validateEmail(email) ) {
            session.setAttribute("emailErr", "Error: Incorrect Email Format");
            request.getRequestDispatcher("staffRegister.jsp").include(request, response);
        } else if ( !validator.validateFirstName(firstName) )  {
            session.setAttribute("fnameErr", "Error: Incorrect Name Format");
            request.getRequestDispatcher("staffRegister.jsp").include(request, response);
        } else if ( !validator.validateLastName(lastName) )  {
            session.setAttribute("lnameErr", "Error: Incorrect Name Format");
            request.getRequestDispatcher("staffRegister.jsp").include(request, response);
        } else if ( !validator.validatePassword(password) )  {
            session.setAttribute("passErr", "Error: Incorrect Password Format");
            request.getRequestDispatcher("staffRegister.jsp").include(request, response);
        } else if ( !validator.validatePhone(phoneNumber) )  {
            session.setAttribute("phoneErr", "Error: Incorrect Phone Format");
            request.getRequestDispatcher("staffRegister.jsp").include(request, response);
        } else {
            try {
                if ( manager.checkStaff(email) ) {
                    session.setAttribute("existErr", "Email has been taken!");
                    request.getRequestDispatcher("staffRegister.jsp").include(request, response);
                } else {
                    // the error is in the addUser function in UserManagerDAO, it's not being inserted into the db when called
                    manager.addStaff(firstName, lastName, email, password, phoneNumber, country );
                    int staffID = manager.getStaffID(email, password);
                    Staff staff = new Staff(staffID, firstName, lastName, email, password, phoneNumber, country);
                    session.setAttribute("staff", staff);
                    request.getRequestDispatcher("staffWelcome.jsp").include(request, response);
                }
            } catch (SQLException | NullPointerException ex) {
                System.out.println(ex.getMessage() == null ? "Something went wrong" : "It works");
            }
        }
    }
}
