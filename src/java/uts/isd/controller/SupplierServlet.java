package uts.isd.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import uts.isd.model.Supplier;
import uts.isd.model.dao.SupplierDBManager;

/**
 * @author User
 */
public class SupplierServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // create product array
        ArrayList<Supplier> supplierList = new ArrayList<>();
        
        //get session
        HttpSession session = request.getSession();
        
        //get product manager
        SupplierDBManager supplierManager = (SupplierDBManager)session.getAttribute("supplierManager");
            try {
                supplierList = supplierManager.listAllSuppliers();
                if (!supplierList.isEmpty()) {
                    session.setAttribute("supplier", supplierList);
                    request.getRequestDispatcher("supplier.jsp").include(request, response);
                }
                else {
                    session.setAttribute("empty", "Empty List");
                    request.getRequestDispatcher("staffMain.jsp").include(request, response);
                }
            } catch (SQLException | NullPointerException ex) {
                //System.out.println(ex.getMessage() == null ? "Incorrect Email or Password" : "Welcome");
                System.out.println(ex.getMessage());
            }
        
    }
}
