//package uts.isd.controller;
//
//import java.io.IOException;
//import java.sql.SQLException;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//import uts.isd.model.User;
//import uts.isd.model.dao.UserManagerDAO;
//
///**
// * @author Justin 13595766
// */
//
//public class RegisterServlet extends HttpServlet {
//    @Override
//    public void doPost(HttpServletRequest request, HttpServletResponse response) 
//            throws ServletException, IOException {
//        HttpSession session = request.getSession();
//
//        String firstName = request.getParameter("fname");
//        String lastName = request.getParameter("lname");
//        String email = request.getParameter("email");
//        String password = request.getParameter("pass");
//        String phoneNumber = request.getParameter("phonenum");
//        String streetNumber = request.getParameter("streetnum");
//        String streetName = request.getParameter("streetname");
//        String streetType = request.getParameter("streettype");
//        String suburb = request.getParameter("suburb");
//        String state = request.getParameter("state");
//        String postcode = request.getParameter("postcode");
//        String country = request.getParameter("country");
//        UserManagerDAO manager = (UserManagerDAO) session.getAttribute("manager");
//        //Validating inputs
//        RegisterUpdateValidator validate = new RegisterUpdateValidator();
//        
//        session.setAttribute("emailUsed",validate.validateEmail(email));
//        session.setAttribute("passNoMatch", validate.validatePassword(password));
//        session.setAttribute("phoneNoErr", validate.validatePhone(request.getParameter("number")));
//        session.setAttribute("postcodeErr", validate.validatePostCode(request.getParameter("postcode")));
//        session.setAttribute("streetNoErr", validate.validateStreetNo(request.getParameter("street-number")));
//        session.setAttribute("fnameErr", validate.validateFname(request.getParameter("fname")));
//        session.setAttribute("lnameErr", validate.validateLname(request.getParameter("lname")));
//        //this if statement checks if there are no errors, then registers user
//        if((validate.validateEmail(email)==null) && (validate.validatePassword(password)==null) && (validate.validatePhone(request.getParameter("number"))== null) 
//            && (validate.validatePostCode(request.getParameter("postcode"))== null) &&(validate.validateStreetNo(request.getParameter("street-number"))== null) 
//                &&(validate.validateLname(request.getParameter("lname"))== null) &&(validate.validateFname(request.getParameter("fname"))== null)){
//            int phoneNumber = Integer.parseInt(request.getParameter("number"));
//            int streetNumber = Integer.parseInt(request.getParameter("street-number"));
//            int postcode = Integer.parseInt(request.getParameter("postcode"));
//            if (password.equals(password1)) { //checks if password and confirm password are true
//                try {
//                    if (manager.checkUserEmail(email)) { //email has not been used
//
//                        manager.addUser(firstName, lastName, email, password, phoneNumber, streetNumber, streetName, streetType, suburb, state, postcode, country, );
//                        //getUserID
//                        int userID = manager.getUserID(email, password);
//                        User user = new User(userID, firstName, lastName, email, password, phoneNumber, streetNumber, streetName, streetType, suburb, state, postcode, country);
//                        //manager.addCustomer(userID);
//                        int userI = manager.getUserID(email, password);
//                        manager.addCustomer(userI);
//                        manager.addlogsregister(userI);
//                        session.setAttribute("user", user);
//                        //set errorsvariables back to null;
//                        
//                        
//                        request.getRequestDispatcher("welcome.jsp").include(request, response);
//                    } else {
//                        session.setAttribute("emailUsed", "Email has already been used please sign in");
//                        request.getRequestDispatcher("register.jsp").include(request, response);
//
//                    }
//                } catch (SQLException ex) {
//                    //Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
//                    ex.getMessage();
//                }
//            } else {
//                session.setAttribute("passNoMatch", "Passwords do not Match");
//                request.getRequestDispatcher("register.jsp").include(request, response);
//            } 
//        } else{
//            request.getRequestDispatcher("register.jsp").include(request, response);
//        }
//    }
//}
