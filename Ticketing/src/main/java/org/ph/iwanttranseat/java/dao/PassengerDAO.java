package org.ph.iwanttranseat.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;

import org.ph.iwanttranseat.java.model.PassengerModel;



public class PassengerDAO {
	
	public int registerPassenger(PassengerModel passenger) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO users" +
            "  (firstname, lastname, email, phone_number, age, password, birth_date, isDeleted, date_created) VALUES " +
            " (?, ?, ?, ?, ?, ?, ?, ?, ?);";

        int result = 0;
        try (Connection connection = JDBCUtils.getConnection();
            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(1, passenger.getPassengerFirstname());
            preparedStatement.setString(2, passenger.getPassengerLastname());
            preparedStatement.setString(3, passenger.getPassengerEmail());
            preparedStatement.setString(4, passenger.getPassengerPhoneNumber());
            preparedStatement.setString(5, passenger.getPassengerAge());
            preparedStatement.setString(6, passenger.getPassengerPassword());
            preparedStatement.setDate(7, JDBCUtils.getSQLDate(passenger.getPassengerBirthDate()));
            preparedStatement.setBoolean(8, false);
            preparedStatement.setDate(9, JDBCUtils.getSQLDate(LocalDate.now()));
  

            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
            JDBCUtils.printSQLException(e);
        }
        return result;
    }

}
