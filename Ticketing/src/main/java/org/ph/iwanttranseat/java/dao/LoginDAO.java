package org.ph.iwanttranseat.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.ph.iwanttranseat.java.model.LoginBean;



public class LoginDAO {
	
	public boolean validate(LoginBean loginBean) throws ClassNotFoundException {
        boolean status = false;



        try (Connection connection = JDBCUtils.getConnection();
            PreparedStatement preparedStatement = connection
            .prepareStatement("SELECT * FROM passenger WHERE email = ? AND password = ? ")) {
            preparedStatement.setString(1, loginBean.getEmail());
            preparedStatement.setString(2, loginBean.getPassword());

            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            status = rs.next();

        } catch (SQLException e) {
            // process sql exception
            JDBCUtils.printSQLException(e);
        }
        return status;
    }
	
	public boolean validateAdmin(LoginBean loginBean) throws ClassNotFoundException {
        boolean status = false;



        try (Connection connection = JDBCUtils.getConnection();
            PreparedStatement preparedStatement = connection
            .prepareStatement("SELECT * FROM admin WHERE username = ? AND password = ? ")) {
            preparedStatement.setString(1, loginBean.getEmail());
            preparedStatement.setString(2, loginBean.getPassword());

            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            status = rs.next();

        } catch (SQLException e) {
            // process sql exception
            JDBCUtils.printSQLException(e);
        }
        return status;
    }
	
	public boolean validateOperator(LoginBean loginBean) throws ClassNotFoundException {
        boolean status = false;



        try (Connection connection = JDBCUtils.getConnection();
            PreparedStatement preparedStatement = connection
            .prepareStatement("SELECT * FROM operator WHERE operator_username = ? AND operator_password = ? ")) {
            preparedStatement.setString(1, loginBean.getEmail());
            preparedStatement.setString(2, loginBean.getPassword());

            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            status = rs.next();

        } catch (SQLException e) {
            // process sql exception
            JDBCUtils.printSQLException(e);
        }
        return status;
    }

}
