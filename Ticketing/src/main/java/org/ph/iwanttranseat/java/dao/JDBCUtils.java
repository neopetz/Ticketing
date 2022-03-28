package org.ph.iwanttranseat.java.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Time;
import java.time.LocalDate;
import java.time.LocalTime;

public class JDBCUtils {
	private static String jdbcURL = "jdbc:mysql://localhost:3306/iwanttranseat_db?useSSL=false&serverTimezone=UTC&useLegacyDatetimeCode=false";
    private static String dbUname = "root";
    private static String dbPword = "Root";
//    private static String dbPword = "101822"; 		//EDWARD
//    private static String dbPword = "nmj6y2e563fdaa"; //JOHN RAY
//    private static String dbPword = "Fujitsu.2022"; 	//JAYSON
    
    public static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, dbUname, dbPword);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public static void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }

    public static Date getSQLDate(LocalDate date) {
        return java.sql.Date.valueOf(date);
    }
    public static Time getSQLTime(LocalTime time) {
        return java.sql.Time.valueOf(time);
    }
    public static LocalDate getUtilDate(Date sqlDate) {
        return sqlDate.toLocalDate();
    }
 
}
