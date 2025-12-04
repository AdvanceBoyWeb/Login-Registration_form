package com.company.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
     private static final String URL = "jdbc:mysql://localhost:3306/loginform";
     private static final String USERNAME = "";
     private static final String PASSWORD = "";

     static {
          try {
               // Load the MySql JDBc driver.
               Class.forName("com.mysql.cj.jdbc.Driver");
          } catch (ClassNotFoundException e) {
               e.printStackTrace();
          }
     }

     public static Connection getConnection() throws SQLException {
          return DriverManager.getConnection(URL, USERNAME, PASSWORD);
     }
}
