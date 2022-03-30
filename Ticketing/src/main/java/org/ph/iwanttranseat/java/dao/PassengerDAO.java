package org.ph.iwanttranseat.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.ph.iwanttranseat.java.model.PassengerModel;

public class PassengerDAO {

	private static final String SELECT_ALL_PASSENGERS = "SELECT * FROM passenger WHERE isDeleted = FALSE";
	private static final String SELECT_PASSENGER_BY_ID = "SELECT * FROM passenger WHERE user_id = ?";
	private static final String SELECT_PASSENGER_BY_EMAIL = "SELECT * FROM passenger WHERE email = ?";
	private static final String SELECT_PASSENGER_BY_EMAIL_AND_PASSWORD = "SELECT * FROM passenger WHERE email = ? AND password = ?";
	private static final String UPDATE_PASSENGER = "UPDATE passenger set firstname = ?, lastname = ?, email = ?, phone_number = ?, age = ?, birth_date = ? where user_id = ?;";
	private static final String UPDATE_PASSWORD = "UPDATE passenger set password = ?  where email = ?;";
	private static final String DELETE_PASSENGER_BY_ID = "UPDATE passenger SET isDeleted = ? WHERE user_id = ?";

	public int registerPassenger(PassengerModel passenger) throws ClassNotFoundException {
		String INSERT_USERS_SQL = "INSERT INTO passenger"
				+ "  (firstname, lastname, email, phone_number, age, password, birth_date, isDeleted, date_created) VALUES "
				+ " (?, ?, ?, ?, ?, ?, ?, ?, ?);";

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

	public PassengerModel selectPassenger(long passengerId) {
		PassengerModel passengerModel = null;
		// Step 1: Establishing a Connection
		try (Connection connection = JDBCUtils.getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PASSENGER_BY_ID);) {
			preparedStatement.setLong(1, passengerId);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int id = rs.getInt("user_id");
				String firstname = rs.getString("firstname");
				String lastname = rs.getString("lastname");
				String email = rs.getString("email");
				String phone_number = rs.getString("phone_number");
				String age = rs.getString("age");
				String password = rs.getString("password");
				LocalDate birth_date = rs.getDate("birth_date").toLocalDate();

				passengerModel = new PassengerModel(id, firstname, lastname, email, phone_number, age, password,
						birth_date);
			}
		} catch (SQLException exception) {
			JDBCUtils.printSQLException(exception);
		}
		return passengerModel;
	}

	public PassengerModel selectPassenger(String passengerEmail) {
		PassengerModel passengerModel = null;
		// Step 1: Establishing a Connection
		try (Connection connection = JDBCUtils.getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PASSENGER_BY_EMAIL);) {
			preparedStatement.setString(1, passengerEmail);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int id = rs.getInt("user_id");
				String firstname = rs.getString("firstname");
				String lastname = rs.getString("lastname");
				String email = rs.getString("email");
				String phone_number = rs.getString("phone_number");
				String age = rs.getString("age");
				String password = rs.getString("password");
				LocalDate birth_date = rs.getDate("birth_date").toLocalDate();

				passengerModel = new PassengerModel(id, firstname, lastname, email, phone_number, age, password,
						birth_date);
			}
		} catch (SQLException exception) {
			JDBCUtils.printSQLException(exception);
		}
		return passengerModel;
	}

	public boolean validateOldPassword(String passengerEmail, String oldPassword) {
		boolean isMatch = false;

		// Step 1: Establishing a Connection
		try (Connection connection = JDBCUtils.getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection
						.prepareStatement(SELECT_PASSENGER_BY_EMAIL_AND_PASSWORD);) {
			preparedStatement.setString(1, passengerEmail);
			preparedStatement.setString(2, oldPassword);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			isMatch = rs.next();
			
		} catch (SQLException exception) {
			JDBCUtils.printSQLException(exception);
		}
		return isMatch;
	}

	public List<PassengerModel> selectAllPassengers() {
		// using try-with-resources to avoid closing resources (boiler plate code)
		List<PassengerModel> passengers = new ArrayList<>();

		// Step 1: Establishing a Connection
		try (Connection connection = JDBCUtils.getConnection();

				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_PASSENGERS);) {
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int user_id = rs.getInt("user_id");
				String firstname = rs.getString("firstname");
				String lastname = rs.getString("lastname");
				String email = rs.getString("email");
				String phone_number = rs.getString("phone_number");
				String age = rs.getString("age");
				String password = rs.getString("password");
				LocalDate birth_date = rs.getDate("birth_date").toLocalDate();

				passengers.add(new PassengerModel(user_id, firstname, lastname, email, phone_number, age, password,
						birth_date));

			}
		} catch (SQLException exception) {
			JDBCUtils.printSQLException(exception);
		}
		return passengers;
	}

	public boolean updatePassenger(PassengerModel passengerModel) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = JDBCUtils.getConnection();
				PreparedStatement statement = connection.prepareStatement(UPDATE_PASSENGER);) {
			statement.setString(1, passengerModel.getPassengerFirstname());
			statement.setString(2, passengerModel.getPassengerLastname());
			statement.setString(3, passengerModel.getPassengerEmail());
			statement.setString(4, passengerModel.getPassengerPhoneNumber());
			statement.setString(5, passengerModel.getPassengerAge());
			statement.setDate(6, JDBCUtils.getSQLDate(passengerModel.getPassengerBirthDate()));
			statement.setLong(7, passengerModel.getId());
			rowUpdated = statement.executeUpdate() > 0;
		}
		return rowUpdated;
	}
	
	public boolean changePassword(PassengerModel passengerModel) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = JDBCUtils.getConnection();
				PreparedStatement statement = connection.prepareStatement(UPDATE_PASSWORD);) {
			statement.setString(1, passengerModel.getPassengerPassword());
			statement.setString(2, passengerModel.getPassengerEmail());
			rowUpdated = statement.executeUpdate() > 0;
			System.out.println(rowUpdated);
		}
		return rowUpdated;
	}

	public void deletedPassenger(PassengerModel passenger) throws SQLException {
		try (Connection connection = JDBCUtils.getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_PASSENGER_BY_ID);) {
			statement.setBoolean(1, true);
			statement.setInt(2, passenger.getId());
			statement.executeUpdate();
		}
	}

}
