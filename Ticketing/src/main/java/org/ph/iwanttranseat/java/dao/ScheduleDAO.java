package org.ph.iwanttranseat.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

import org.ph.iwanttranseat.java.model.ScheduleModel;


public class ScheduleDAO{

	
	
	private static final String INSERT_SCHEDULE_SQL="INSERT INTO schedule" + " (travel_from, travel_to, travel_date, departure, arrival, fare) VALUES" + " ( ?, ?, ?, ?, ?, ?);";
//	private static final String SELECT_SCHEDULE_BY_ID = "select id, travel_from, travel_to, travel_date, departure, arrival, fare from schedule where id =?";
//	private static final String SELECT_ALL_SCHEDULE = "select * from schedule";
//	private static final String DELETE_SCHEDULE_BY_ID = "delete from schedule where id = ?;";
	private static final String UPDATE_SCHEDULE = "update schedule set travel_from = ?, travel_to= ?, travel_date =?, departure =?, arrival = ?, fare = ? where id = ?;";
	
	private static final String SELECT_SCHEDULE_BY_ID = "SELECT * FROM schedule WHERE id =?";;
	private static final String SELECT_ALL_SCHEDULE = "select id, travel_from, travel_to, travel_date, departure, arrival, fare from schedule WHERE isDeleted = FALSE";
	private static final String DELETE_SCHEDULE_BY_ID = "UPDATE schedule SET isDeleted = ? WHERE id = ?";
	
	
	public void insertSchedule(ScheduleModel scheduleModel) throws SQLException {
		System.out.println(INSERT_SCHEDULE_SQL);
		
		try(Connection connection = JDBCUtils.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_SCHEDULE_SQL)) {
								  preparedStatement.setString(1, scheduleModel.getTravel_from());
								  preparedStatement.setString(2, scheduleModel.getTravel_to());
								  preparedStatement.setDate(3, JDBCUtils.getSQLDate(scheduleModel.getTravel_date()));
								  preparedStatement.setTime(4, JDBCUtils.getSQLTime(scheduleModel.getDeparture()));
								  preparedStatement.setTime(5, JDBCUtils.getSQLTime(scheduleModel.getArrival()));
								  preparedStatement.setInt(6, scheduleModel.getFare());
									 
								  System.out.println(preparedStatement);
								  preparedStatement.executeUpdate();
		} catch (SQLException e) {
			JDBCUtils.printSQLException(e);
		}
		
	}
	

	public ScheduleModel selectSchedule(long scheduleId) {
		ScheduleModel scheduleModel = null;
	        // Step 1: Establishing a Connection
	        try (Connection connection = JDBCUtils.getConnection();
	            // Step 2:Create a statement using connection object
	            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_SCHEDULE_BY_ID);) {
	            preparedStatement.setLong(1, scheduleId);
	            System.out.println(preparedStatement);
	            // Step 3: Execute the query or update query
	            ResultSet rs = preparedStatement.executeQuery();

	            // Step 4: Process the ResultSet object.
	            while (rs.next()) {
	                int id = rs.getInt("id");
	                String travel_from = rs.getString("travel_from");
	                String travel_to = rs.getString("travel_to");
	                LocalDate travel_date = rs.getDate("travel_date").toLocalDate();
	                LocalTime departure = rs.getTime("departure").toLocalTime();
	                LocalTime arrival = rs.getTime("arrival").toLocalTime();
	                int fare = rs.getInt("fare");
	                
	                scheduleModel = new ScheduleModel(id, travel_from, travel_to, travel_date, departure, arrival, fare);
	            }
	        } catch (SQLException exception) {
	            JDBCUtils.printSQLException(exception);
	        }
	        return scheduleModel;
	}
	

	public List<ScheduleModel> selectAllSchedule() {
		 // using try-with-resources to avoid closing resources (boiler plate code)
        List < ScheduleModel > todosSchedule = new ArrayList < > ();

        // Step 1: Establishing a Connection
        try (Connection connection = JDBCUtils.getConnection();

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_SCHEDULE);) {
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int id = rs.getInt("id");
                String travel_from = rs.getString("travel_from");
                String travel_to = rs.getString("travel_to");
                LocalDate travel_date = rs.getDate("travel_date").toLocalDate();
                LocalTime departure = rs.getTime("departure").toLocalTime();
                LocalTime arrival = rs.getTime("arrival").toLocalTime();
                int fare = rs.getInt("fare");
                todosSchedule.add(new ScheduleModel(id, travel_from, travel_to, travel_date, departure, arrival, fare));
                
            }
        } catch (SQLException exception) {
            JDBCUtils.printSQLException(exception);
        }
        return todosSchedule;
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

	
	
	public void deletedSchedule(ScheduleModel schedule) throws SQLException {
		try (Connection connection = JDBCUtils.getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_SCHEDULE_BY_ID);) {
			statement.setBoolean(1, true);
			statement.setInt(2, schedule.getId());
			statement.executeUpdate();
		}
	}
	

	public boolean updateSchedule(ScheduleModel scheduleModel) throws SQLException {
		 boolean rowUpdated;
	        try (Connection connection = JDBCUtils.getConnection(); PreparedStatement statement = connection.prepareStatement(UPDATE_SCHEDULE);) {
				  statement.setString(1, scheduleModel.getTravel_from());
				  statement.setString(2, scheduleModel.getTravel_to());
				  statement.setDate(3, JDBCUtils.getSQLDate(scheduleModel.getTravel_date()));
				  statement.setTime(4, JDBCUtils.getSQLTime(scheduleModel.getDeparture()));
				  statement.setTime(5, JDBCUtils.getSQLTime(scheduleModel.getArrival()));
				  statement.setInt(6, scheduleModel.getFare());
	              statement.setLong(7, scheduleModel.getId());
	            rowUpdated = statement.executeUpdate() > 0;
	        }
	        return rowUpdated;
	    }
	
}
