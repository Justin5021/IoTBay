/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uts.isd.model.dao;

import uts.isd.model.PaymentInfo;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Epsil
 */
public class PaymentInfoDBManager {
    private Statement st;

    public PaymentInfoDBManager(Connection conn) throws SQLException {
        st = conn.createStatement();
    }
    public void deletePaymentInfo(String id)throws SQLException{
        String query = "DELETE FROM IOTBAY.PAYMENTINFO WHERE PAYMENTINFOID =" + id;
        st.execute(query);
    }
}
