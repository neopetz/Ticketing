package org.ph.iwanttranseat.java.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.util.ArrayList;
import java.util.List;

import org.ph.iwanttranseat.java.model.BookingModel;
import org.ph.iwanttranseat.java.model.TravelScheduleModel;

public class BookingDAO {

	private static final String SELECT_All_TRAVEL_SCHEDULE_V2 = "SELECT travelId, "
			+ "travel_to, travel_from, travel_date, departure, arrival," + "bus_name, bus_type, available_seats, "
			+ "CONCAT(bus_personnel.firstname, ' ', bus_personnel.lastname) AS driver, " + "fare "
			+ "FROM travel_schedule " + "INNER JOIN schedule ON schedule.schedule_id = travel_schedule.sched_id "
			+ "INNER JOIN bus ON bus.busId = travel_schedule.bus_id "
			+ "INNER JOIN bus_personnel ON bus_personnel.busPersonnel_id = travel_schedule.driver_id "
			+ " WHERE travel_schedule.isDeleted <> 1;";

	public List<BookingModel> selectAllAvailableTravelSchedules() {
		List<BookingModel> listOfAvailableSchedule = new ArrayList<>();

		try (Connection connection = JDBCUtils.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_All_TRAVEL_SCHEDULE_V2);) {
			System.out.println(preparedStatement);
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				int travelId = resultSet.getInt("travelId");
				String travel_from = resultSet.getString("travel_from");
				String travel_to = resultSet.getString("travel_to");
				Date travel_date = resultSet.getDate("travel_date");
				Time departure = resultSet.getTime("departure");
				Time arrival = resultSet.getTime("arrival");
				String bus_name = resultSet.getString("bus_name");
				String bus_type = resultSet.getString("bus_type");
				int available_seats = resultSet.getInt("available_seats");
				String driver = resultSet.getString("driver");
				int fare = resultSet.getInt("fare");
				listOfAvailableSchedule.add(new BookingModel(travelId, travel_from, travel_to, travel_date, departure,
						arrival, bus_name, bus_type, available_seats, driver, fare));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listOfAvailableSchedule;
	}

	private static final String SELECT_TRAVEL_SCHEDULE_BY_ID = "SELECT travelId, "
			+ "travel_to, travel_from, travel_date, departure, arrival, bus_id, bus_name, bus_type, available_seats, "
			+ "fare, CONCAT(bus_personnel.firstname, ' ', bus_personnel.lastname) AS driver " + "FROM travel_schedule "
			+ "INNER JOIN schedule ON schedule.schedule_id = travel_schedule.sched_id "
			+ "INNER JOIN bus ON bus.busId = travel_schedule.bus_id "
			+ "INNER JOIN bus_personnel ON bus_personnel.busPersonnel_id = travel_schedule.driver_id "
			+ "WHERE travelId = ?;";

	public BookingModel selectScheduleById(int travelId) throws SQLException {
		BookingModel selectSchedule = null;

		try (Connection connection = JDBCUtils.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_TRAVEL_SCHEDULE_BY_ID);) {
			preparedStatement.setInt(1, travelId);
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				int travel_Id = resultSet.getInt("travelId");
				String travel_from = resultSet.getString("travel_from");
				String travel_to = resultSet.getString("travel_to");
				Date travel_date = resultSet.getDate("travel_date");
				Time departure = resultSet.getTime("departure");
				Time arrival = resultSet.getTime("arrival");
				int fare = resultSet.getInt("fare");
				int bus_id = resultSet.getInt("bus_id");
				String bus_name = resultSet.getString("bus_name");
				String bus_type = resultSet.getString("bus_type");
				int available_seats = resultSet.getInt("available_seats");
				String driver = resultSet.getString("driver");
				selectSchedule = new BookingModel(travel_Id, travel_from, travel_to, travel_date, departure, arrival,
						fare, bus_id, bus_name, bus_type, available_seats, driver);

			}

		}

		return selectSchedule;
	}

	private static final String SELECT_PASSENGER = "SELECT CONCAT(firstname,' ',lastname) as passenger "
			+ "FROM passenger WHERE email = ?";

	public BookingModel selectPassenger(String passengerEmail) throws SQLException {
		BookingModel selectedPassenger = null;

		try (Connection connection = JDBCUtils.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PASSENGER);) {
			preparedStatement.setString(1, passengerEmail);
			ResultSet resultSet = preparedStatement.executeQuery();
			System.out.println(passengerEmail);
			while (resultSet.next()) {
				String passengerName = resultSet.getString("passenger");

				selectedPassenger = new BookingModel(passengerName);
			}
			System.out.println(selectedPassenger);
		}

		return selectedPassenger;
	}

	private static final String INSERT_BOOKING = "INSERT INTO booking (scheduleId, busId, user_id) VALUES"
			+ " (?, ?, ?);";

	public void insertTravelSchedule(BookingModel bookingModel) {
		System.out.println(INSERT_BOOKING);

		try (Connection connection = JDBCUtils.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_BOOKING)) {
			preparedStatement.setInt(1, bookingModel.getTravelId());
			preparedStatement.setInt(2, bookingModel.getBusId());
			preparedStatement.setInt(3, bookingModel.getUser_id());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
			System.out.println("yo!");
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	
	private static final String UPDATE_AVAILABLE_SEATS = "UPDATE bus SET available_seats =? "
			+ "WHERE busId = ?;";
	
	public boolean updateAvailableSeats(BookingModel bookingModel) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = JDBCUtils.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_AVAILABLE_SEATS);) {
			
			preparedStatement.setInt(1, bookingModel.getAvailable_seats());
			preparedStatement.setInt(2, bookingModel.getBusId());
			System.out.println(preparedStatement);
			rowUpdated = preparedStatement.executeUpdate() > 0;
		}
		return rowUpdated;
	}
}