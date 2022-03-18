package org.ph.iwanttranseat.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.ph.iwanttranseat.java.model.DriverModel;

public class DriverDAO {
	private static final String INSERT_DRIVER_SQL = "INSERT INTO drivers (driverFirstname, driverLastname, driverStatus) VALUES"
			+ " ( ?, ?, ?);";
	private static final String SELECT_ALL_DRIVERS = "select * from drivers;";
	private static final String UPDATE_DRIVER = "update employee set driverFirstname = ?, driverLastname= ?, driverStatus =? where id = ?;";

	// Adding new Driver
	public void insertDriver(DriverModel driver) {
		System.out.println(INSERT_DRIVER_SQL);

		try (Connection connection = JDBCUtils.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_DRIVER_SQL)) {
			preparedStatement.setString(1, driver.getDriverFirstname());
			preparedStatement.setString(2, driver.getDriverLastname());
			preparedStatement.setString(3, driver.getDriverStatus());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//Select All Drivers
			public List<DriverModel> selectAllDrivers(){
			List<DriverModel> drivers = new ArrayList<>();
			try (Connection connection = JDBCUtils.getConnection();

					
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_DRIVERS);) {
				System.out.println(preparedStatement);
				
				ResultSet rs = preparedStatement.executeQuery();
				
				while (rs.next()) {
					int id = rs.getInt("id");
					String driverFirstname = rs.getString("driverFirstname");
					String driverLastname = rs.getString("driverLastname");
					String driverStatus = rs.getString("driverStatus");
					drivers.add(new DriverModel(id, driverFirstname, driverLastname, driverStatus));
				}
			} catch (SQLException exception) {
				JDBCUtils.printSQLException(exception);
			}
			return drivers;
		}
	
	//Update Driver's Profile
			public boolean updateDriver(DriverModel driver) throws SQLException {
				boolean rowUpdated;
				try (Connection connection = JDBCUtils.getConnection();
						PreparedStatement statement = connection.prepareStatement(UPDATE_DRIVER);) {
						statement.setInt(1, driver.getId());
						statement.setString(2, driver.getDriverFirstname());
						statement.setString(3, driver.getDriverLastname());
						statement.setString(4, driver.getDriverStatus());
					rowUpdated = statement.executeUpdate() > 0;
				}
				return rowUpdated;
			}
}

