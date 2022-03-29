package org.ph.iwanttranseat.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.ph.iwanttranseat.java.model.BusPersonnelModel;
import org.ph.iwanttranseat.java.model.ConductorModel;
import org.ph.iwanttranseat.java.model.DriverModel;

public class BusPersonnelDao {

	private static final String SELECT_BUSPERSONNEL_DRIVERS = "SELECT busPersonnel_id, firstname, lastname, position, status FROM bus_personnel WHERE isDeleted = FALSE";
	private static final String SELECT_BUSPERSONNEL_BY_ID = "SELECT * FROM bus_personnel WHERE busPersonnel_id =?";
	private static final String INSERT_BUSPERSONNEL_SQL = "INSERT INTO bus_personnel (firstname, lastname, position, status, isDeleted) VALUES"
			+ " (?, ?, ?, ?, ?);";
	private static final String UPDATE_BUSPERSONNEL = "UPDATE bus_personnel SET firstname = ?, lastname = ?, position = ?, status = ?"
			+ "WHERE busPersonnel_id = ?";
	private static final String DELETE_BUSPERSONNEL = "UPDATE bus_personnel SET isDeleted = ? WHERE busPersonnel_id = ?";

	// Select All Bus Personnels
	public List<BusPersonnelModel> selectAllBusPersonnel() {
		List<BusPersonnelModel> busPersonnels = new ArrayList<>();

		try (Connection connection = JDBCUtils.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BUSPERSONNEL_DRIVERS)) {
			System.out.println(preparedStatement);

			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				int busPersonnel_id = rs.getInt("busPersonnel_id");
				String firstname = rs.getString("firstname");
				String lastname = rs.getString("lastname");
				String position = rs.getString("position");
				String status = rs.getString("status");
				busPersonnels.add(new BusPersonnelModel(busPersonnel_id, firstname, lastname, position, status));
			}
		} catch (SQLException exception) {
			JDBCUtils.printSQLException(exception);
		}
		return busPersonnels;
	}

	// Select a BusPersonnel by ID
	public BusPersonnelModel selectBusPersonnelByID(int busPersonnel_id) {
		BusPersonnelModel busPersonnel = null;
		try (Connection connection = JDBCUtils.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BUSPERSONNEL_BY_ID);) {
			preparedStatement.setInt(1, busPersonnel_id);
			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				int busPersonnelID = rs.getInt("busPersonnel_id");
				String firstname = rs.getString("firstname");
				String lastname = rs.getString("lastname");
				String position = rs.getString("position");
				String status = rs.getString("status");
				busPersonnel = new BusPersonnelModel(busPersonnelID, firstname, lastname, position, status);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return busPersonnel;
	}

	// Add new Personnel
	public void insertBusPersonnel(BusPersonnelModel busPersonnel) {
		System.out.println(INSERT_BUSPERSONNEL_SQL);

		try (Connection connection = JDBCUtils.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_BUSPERSONNEL_SQL)) {
			preparedStatement.setString(1, busPersonnel.getFirstname());
			preparedStatement.setString(2, busPersonnel.getLastname());
			preparedStatement.setString(3, busPersonnel.getPosition());
			preparedStatement.setString(4, busPersonnel.getStatus());
			preparedStatement.setBoolean(5, busPersonnel.isDeleted());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
			System.out.println("Updated");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// Update BusPersonnel's Profile
	public boolean updateBusPersonnel(BusPersonnelModel busPersonnel) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = JDBCUtils.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_BUSPERSONNEL);) {

			preparedStatement.setString(1, busPersonnel.getFirstname());
			preparedStatement.setString(2, busPersonnel.getLastname());
			preparedStatement.setString(3, busPersonnel.getPosition());
			preparedStatement.setString(4, busPersonnel.getStatus());
			preparedStatement.setInt(5, busPersonnel.getBusPersonnel_id());

			rowUpdated = preparedStatement.executeUpdate() > 0;
		}
		return rowUpdated;
	}

	public void deleteBusPersonnel(BusPersonnelModel busPersonnel) throws SQLException {
		try (Connection connection = JDBCUtils.getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_BUSPERSONNEL);) {
			statement.setBoolean(1, true);
			statement.setInt(2, busPersonnel.getBusPersonnel_id());
			statement.executeUpdate();
		}
	}

	// populate "select driver"
	private static final String SELECT_DRIVER = "SELECT busPersonnel_id, CONCAT(firstname, ' ',lastname) "
			+ "AS driver FROM bus_personnel WHERE position = \"driver\" AND status = \"available\" AND isDeleted <> 1 ORDER BY busPersonnel_id;";

	public static List<DriverModel> selectTravelDriver() {
		List<DriverModel> travelDriver = new ArrayList<>();
		try {
			Connection connection = JDBCUtils.getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_DRIVER);
			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {

				int busPersonnel_id = rs.getInt("busPersonnel_id");
				String driver = rs.getString("driver");
				System.out.println(driver);
				travelDriver.add(new DriverModel(busPersonnel_id, driver));

			}
		} catch (SQLException exception) {
			JDBCUtils.printSQLException(exception);
		}
		return travelDriver;
	}
	
	// populate "select conductor"
		private static final String SELECT_CONDUCTOR = "SELECT busPersonnel_id, CONCAT(firstname, ' ',lastname) "
				+ "AS conductor FROM bus_personnel WHERE position = \"conductor\" AND status = \"available\" AND isDeleted <> 1 ORDER BY busPersonnel_id;";

		public static List<ConductorModel> selectTravelConductor() {
			List<ConductorModel> travelConductor = new ArrayList<>();
			try {
				Connection connection = JDBCUtils.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CONDUCTOR);
				System.out.println(preparedStatement);
				ResultSet rs = preparedStatement.executeQuery();
				while (rs.next()) {

					int busPersonnel_id = rs.getInt("busPersonnel_id");
					String conductor = rs.getString("conductor");
					System.out.println(conductor);
					travelConductor.add(new ConductorModel(busPersonnel_id, conductor));

				}
			} catch (SQLException exception) {
				JDBCUtils.printSQLException(exception);
			}
			return travelConductor;
		}
}
