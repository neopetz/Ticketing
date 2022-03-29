package org.ph.iwanttranseat.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.ph.iwanttranseat.java.model.AdminModel;

public class AdminDAO {
	private String query = "SELECT * FROM admin WHERE username = ? AND password = ?;";
	
	public boolean validate(AdminModel adminModel) throws ClassNotFoundException {
		
		boolean haveAccess = false;
		
		try (Connection connection = JDBCUtils.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(query)) {
			
			preparedStatement.setString(1, adminModel.getUsername());
			preparedStatement.setString(2, adminModel.getPassword());
			
			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			haveAccess = rs.next();
		} catch (SQLException e) {
			JDBCUtils.printSQLException(e);
		}
		
		return haveAccess;
	}
}
