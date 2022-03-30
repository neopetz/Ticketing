package org.ph.iwanttranseat.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.ph.iwanttranseat.java.model.OperatorModel;

public class OperatorDAO {
	
	private static final String INSERT_OPERATOR_SQL="INSERT INTO `operator` (operator_firstname, operator_lastname, operator_username, operator_password) VALUES ( ?, ?, ?, ?);";
	private static final String UPDATE_OPERATOR = "update operator set operator_firstname = ?, operator_lastname = ?, operator_username = ?, operator_password = ? where id = ?;";
	private static final String SELECT_OPERATOR_BY_ID = "SELECT * FROM operator WHERE id =?;";
	private static final String SELECT_ALL_OPERATOR = "select id, operator_firstname, operator_lastname, operator_username, operator_password from operator WHERE isDeleted = FALSE";
	private static final String DELETE_OPERATOR_BY_ID = "UPDATE operator SET isDeleted = ? WHERE id = ?";
	
	
	public void insertOperator(OperatorModel operatorModel) throws SQLException {
		System.out.println(INSERT_OPERATOR_SQL);
		
		try(Connection connection = JDBCUtils.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_OPERATOR_SQL)) {
								  preparedStatement.setString(1, operatorModel.getOperator_firstname());
								  preparedStatement.setString(2, operatorModel.getOperator_lastname());
								  preparedStatement.setString(3, operatorModel.getOperator_username());
								  preparedStatement.setString(4, operatorModel.getOperator_password());
									 
								  System.out.println(preparedStatement);
								  preparedStatement.executeUpdate();
		} catch (SQLException e) {
			JDBCUtils.printSQLException(e);
		}
		
	}
	

	public OperatorModel selectOperator(long operatorId) {
		OperatorModel operatorModel = null;
	        // Step 1: Establishing a Connection
	        try (Connection connection = JDBCUtils.getConnection();
	            // Step 2:Create a statement using connection object
	            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_OPERATOR_BY_ID);) {
	            preparedStatement.setLong(1, operatorId);
	            System.out.println(preparedStatement);
	            // Step 3: Execute the query or update query
	            ResultSet rs = preparedStatement.executeQuery();

	            // Step 4: Process the ResultSet object.
	            while (rs.next()) {
	                int id = rs.getInt("id");
	                String operator_firstname = rs.getString("operator_firstname");
	                String operator_lastname = rs.getString("operator_lastname");
	                String operator_username = rs.getString("operator_username");
	                String operator_password = rs.getString("operator_password");
	                
	                operatorModel = new OperatorModel(id, operator_firstname, operator_lastname, operator_username, operator_password);
	            }
	        } catch (SQLException exception) {
	            JDBCUtils.printSQLException(exception);
	        }
	        return operatorModel;
	}
	

	public List<OperatorModel> selectAllOperator() {
		 // using try-with-resources to avoid closing resources (boiler plate code)
        List < OperatorModel > todosOperator = new ArrayList < > ();

        // Step 1: Establishing a Connection
        try (Connection connection = JDBCUtils.getConnection();

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_OPERATOR);) {
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int id = rs.getInt("id");
                String operator_firstname = rs.getString("operator_firstname");
                String operator_lastname = rs.getString("operator_lastname");
                String operator_username = rs.getString("operator_username");
                String operator_password = rs.getString("operator_password");
                todosOperator.add(new OperatorModel(id, operator_firstname, operator_lastname, operator_username, operator_password));
                
            }
        } catch (SQLException exception) {
            JDBCUtils.printSQLException(exception);
        }
        return todosOperator;
	}


//	public boolean deleteSchedule(int id) throws SQLException {
//		 boolean rowDeleted;
//	        try (Connection connection = JDBCUtils.getConnection(); 
//	        		PreparedStatement statement = connection.prepareStatement(DELETE_SCHEDULE_BY_ID);) {
//	            statement.setInt(1, id);
//	            rowDeleted = statement.executeUpdate() > 0;
//	        }
//	        return rowDeleted;
//	}

	
	
	public void deletedOperator(OperatorModel operator) throws SQLException {
		try (Connection connection = JDBCUtils.getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_OPERATOR_BY_ID);) {
			statement.setBoolean(1, true);
			statement.setInt(2, operator.getId());
			statement.executeUpdate();
		}
	}
	

	public boolean updateOperator(OperatorModel operatorModel) throws SQLException {
		 boolean rowUpdated;
	        try (Connection connection = JDBCUtils.getConnection(); PreparedStatement statement = connection.prepareStatement(UPDATE_OPERATOR);) {
				  statement.setString(1, operatorModel.getOperator_firstname());
				  statement.setString(2, operatorModel.getOperator_lastname());
				  statement.setString(3, operatorModel.getOperator_username());
				  statement.setString(4, operatorModel.getOperator_password());
	              statement.setLong(5, operatorModel.getId());
	            rowUpdated = statement.executeUpdate() > 0;
	        }
	        return rowUpdated;
	    }
}
