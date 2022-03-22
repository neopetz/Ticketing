package org.ph.iwanttranseat.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.ph.iwanttranseat.java.model.DriverModel;

public class DriverDAO {
	private static final String INSERT_DRIVER_SQL = "INSERT INTO drivers (driverFirstname, driverLastname, driverStatus, isDeleted) VALUES"
			+ " (?, ?, ?, ?);";
	private static final String SELECT_DRIVER_BY_ID = "SELECT * FROM drivers WHERE id =?";
	private static final String SELECT_ALL_DRIVERS = "SELECT id, driverFirstname, driverLastname, driverStatus FROM drivers WHERE isDeleted = FALSE";
	private static final String UPDATE_DRIVER = "UPDATE drivers SET driverFirstname = ?, driverLastname = ?, driverStatus = ?" + "WHERE id = ?";
	private static final String DELETE_DRIVER = "UPDATE drivers SET isDeleted = ? WHERE id =?";
	
	
	
	// Adding new Driver
	public void insertDriver(DriverModel driver) {
		System.out.println(INSERT_DRIVER_SQL);

		try (Connection connection = JDBCUtils.getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(INSERT_DRIVER_SQL)) {
			preparedStatement.setString(1, driver.getDriverFirstname());
			preparedStatement.setString(2, driver.getDriverLastname());
			preparedStatement.setString(3, driver.getDriverStatus());
			preparedStatement.setBoolean(4, driver.isDeleted());
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
	//Select a Driver by ID
			public DriverModel selectDriverByID(int id) {
				DriverModel driver = null;
				try(Connection connection = JDBCUtils.getConnection();
						PreparedStatement preparedStatement = connection.prepareStatement(SELECT_DRIVER_BY_ID);){
					preparedStatement.setInt(1, id);
					ResultSet rs = preparedStatement.executeQuery();
					
					while(rs.next()) {
						int driverID = rs.getInt("id");
						String driverFirstname = rs.getString("driverFirstname");
						String driverLastname = rs.getString("driverLastname");
						String driverStatus = rs.getString("driverStatus");
						
						driver = new DriverModel(driverID, driverFirstname, driverLastname, driverStatus);
					}
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				return driver;
			}
	//Update Driver's Profile
			public boolean updateDriver(DriverModel driver) throws SQLException {
				boolean rowUpdated;
				try (Connection connection = JDBCUtils.getConnection();
						PreparedStatement statement = connection.prepareStatement(UPDATE_DRIVER);) {
						
						statement.setString(1, driver.getDriverFirstname());
						statement.setString(2, driver.getDriverLastname());
						statement.setString(3, driver.getDriverStatus());
						statement.setInt(4, driver.getId());
						rowUpdated = statement.executeUpdate() > 0;
				}
				return rowUpdated;
			}

			public void deletedDriver(DriverModel driver) throws SQLException {
				try (Connection connection = JDBCUtils.getConnection();
						PreparedStatement statement = connection.prepareStatement(DELETE_DRIVER);) {
					statement.setBoolean(1, true);
					statement.setInt(2, driver.getId());
					statement.executeUpdate();
				}
			}

}

