package org.ph.iwanttranseat.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.ph.iwanttranseat.java.model.TravelScheduleModel;

public class TravelScheduleDAO {
	private static final String SELECT_All_TRAVEL_SCHEDULE = "SELECT travelId, "
			+ "CONCAT(travel_from, ' | ',travel_to, ' | ', travel_date, ' | ', departure, ' | ', arrival) AS travel_schedule, "
			+ "CONCAT(bus_name, ' | ', bus_type, ' | Plate no.: ', plate_number) AS travel_bus, "
			+ "CONCAT(bp1.firstname, ' ',bp1.lastname) AS driver, "
			+ "CONCAT(bp2.firstname, ' ',bp2.lastname) AS conductor, "
			+ "fare "
			+ "FROM travel_schedule "
			+ "INNER JOIN schedule ON schedule.schedule_id = travel_schedule.sched_id "
			+ "INNER JOIN bus ON bus.busId = travel_schedule.bus_id "
			+ "INNER JOIN bus_personnel bp1 ON bp1.busPersonnel_id = travel_schedule.driver_id "
			+ "INNER JOIN bus_personnel bp2 ON bp2.busPersonnel_id = travel_schedule.conductor_id"
			+ " WHERE travel_schedule.isDeleted <> 1;";
	
	public List<TravelScheduleModel> selectAllTravelSchedules() {
		List<TravelScheduleModel> listOfTravelSchedule = new ArrayList<>();
		
		try(Connection connection = JDBCUtils.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_All_TRAVEL_SCHEDULE)){
			System.out.println(preparedStatement);
			ResultSet resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				int travelId = resultSet.getInt("travelId");
				String travel_schedule = resultSet.getString("travel_schedule");
				String travel_bus = resultSet.getString("travel_bus");
				String driver = resultSet.getString("driver");
				String conductor = resultSet.getString("conductor");
				int fare = resultSet.getInt("fare");
				listOfTravelSchedule.add(new TravelScheduleModel(travelId, travel_schedule, travel_bus, driver, conductor, fare));
				System.out.println(travelId +" " + travel_schedule +" " +  travel_bus +" " +  driver +" " +  conductor +" " +  fare);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listOfTravelSchedule;
	}
	
	
	private static final String SELECT_TRAVEL_SCHEDULE_BY_ID = "SELECT travelId, "
			+ "CONCAT(travel_from, ' | ',travel_to, ' | ', travel_date, ' | ', departure, ' | ', arrival) AS travel_schedule, "
			+ "CONCAT(bus_name, ' | ', bus_type, ' | Plate no.: ', plate_number) AS travel_bus, "
			+ "CONCAT(bp1.firstname, ' ',bp1.lastname) AS driver, "
			+ "CONCAT(bp2.firstname, ' ',bp2.lastname) AS conductor, "
			+ "fare "
			+ "FROM travel_schedule "
			+ "INNER JOIN schedule ON schedule.schedule_id = travel_schedule.sched_id "
			+ "INNER JOIN  bus ON bus.busId = travel_schedule.bus_id "
			+ "INNER JOIN bus_personnel bp1 ON bp1.busPersonnel_id = travel_schedule.driver_id "
			+ "INNER JOIN bus_personnel bp2 ON bp2.busPersonnel_id = travel_schedule.conductor_id "
			+ "WHERE travelID = ?;";

	public TravelScheduleModel selectTravelScheduleById(int travelId) {
		TravelScheduleModel travelSchedule = null;
	
		try(Connection connection = JDBCUtils.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_TRAVEL_SCHEDULE_BY_ID)){
				preparedStatement.setInt(1, travelId);
				ResultSet resultSet = preparedStatement.executeQuery();
				
				while(resultSet.next()) {
					int travel_id = resultSet.getInt("travelId");
					String travel_schedule = resultSet.getString("travel_schedule");
					String travel_bus = resultSet.getString("travel_bus");
					String driver = resultSet.getString("driver");
					String conductor = resultSet.getString("conductor");
					int fare = resultSet.getInt("fare");
					travelSchedule = new TravelScheduleModel(travel_id, travel_schedule, travel_bus, driver, conductor, fare);
					System.out.println(travel_id +" " + travel_schedule +" " +  travel_bus +" " +  driver +" " +  conductor +" " +  fare);
				}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return travelSchedule;
	}
	
	
	
	private static final String INSERT_TRAVEL_SCHEDULE = "INSERT INTO travel_schedule (sched_id, bus_id, driver_id, conductor_id, isDeleted) VALUES"
			+ " (?, ?, ?, ?, ?);";
	
	public void insertTravelSchedule(TravelScheduleModel travelScheduleModel) {
		System.out.println(INSERT_TRAVEL_SCHEDULE);

		try (Connection connection = JDBCUtils.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_TRAVEL_SCHEDULE)) {
			preparedStatement.setInt(1, travelScheduleModel.getSchedule_id());
			preparedStatement.setInt(2, travelScheduleModel.getBus_id());
			preparedStatement.setInt(3, travelScheduleModel.getDriver_id());
			preparedStatement.setInt(4, travelScheduleModel.getConductor_id());
			preparedStatement.setBoolean(5, travelScheduleModel.is_deleted());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
			System.out.println("yo!");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	
	private static final String DELETE_TRAVEL_SCHEDULE = "UPDATE travel_schedule SET isDeleted = ? WHERE travelId = ?";
	public void deleteTravelSchedule(TravelScheduleModel deletedTravelSchedule) throws SQLException {
		try (Connection connection = JDBCUtils.getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_TRAVEL_SCHEDULE);) {
			statement.setBoolean(1, true);
			statement.setInt(2, deletedTravelSchedule.getTravelId());
			statement.executeUpdate();
		}
	}



}
