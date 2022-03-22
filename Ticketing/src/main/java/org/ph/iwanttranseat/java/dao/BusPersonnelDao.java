package org.ph.iwanttranseat.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.ph.iwanttranseat.java.model.BusPersonnelModel;

public class BusPersonnelDao {

	private static final String SELECT_BUSPERSONNEL_DRIVERS = "SELECT id, firstname, lastname, position, status FROM bus_personnel WHERE isDeleted = FALSE";
	private static final String SELECT_BUSPERSONNEL_BY_ID = "SELECT * FROM bus_personnel WHERE id =?";
	private static final String INSERT_BUSPERSONNEL_SQL = "INSERT INTO bus_personnel (firstname, lastname, position, status, isDeleted) VALUES"
			+ " (?, ?, ?, ?, ?);";
	private static final String UPDATE_BUSPERSONNEL = "UPDATE bus_personnel SET firstname = ?, lastname = ?, position = ?, status = ?"
			+ "WHERE id = ?";
	private static final String DELETE_BUSPERSONNEL = "UPDATE bus_personnel SET isDeleted = ? WHERE id = ?";

	// Select All Bus Personnels
	public List<BusPersonnelModel> selectAllBusPersonnel() {
		List<BusPersonnelModel> busPersonnels = new ArrayList<>();

		try (Connection connection = JDBCUtils.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BUSPERSONNEL_DRIVERS)) {
			System.out.println(preparedStatement);

			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				int id = rs.getInt("id");
				String firstname = rs.getString("firstname");
				String lastname = rs.getString("lastname");
				String position = rs.getString("position");
				String status = rs.getString("status");
				busPersonnels.add(new BusPersonnelModel(id, firstname, lastname, position, status));
			}
		} catch (SQLException exception) {
			JDBCUtils.printSQLException(exception);
		}
		return busPersonnels;
	}

	// Select a BusPersonnel by ID
	public BusPersonnelModel selectBusPersonnelByID(int id) {
		BusPersonnelModel busPersonnel = null;
		try (Connection connection = JDBCUtils.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BUSPERSONNEL_BY_ID);) {
			preparedStatement.setInt(1, id);
			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				int busPersonnelID = rs.getInt("id");
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
			preparedStatement.setInt(5, busPersonnel.getId());
			
			rowUpdated = preparedStatement.executeUpdate() > 0;
		}
		return rowUpdated;
	}

	public void deleteBusPersonnel(BusPersonnelModel busPersonnel) throws SQLException {
		try (Connection connection = JDBCUtils.getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_BUSPERSONNEL);) {
			statement.setBoolean(1, true);
			statement.setInt(2, busPersonnel.getId());
			statement.executeUpdate();
		}
	}

}
