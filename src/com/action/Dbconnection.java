
package com.action;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author java2
 */
public class Dbconnection {

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood", "root", "root");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return con;
    }
}
