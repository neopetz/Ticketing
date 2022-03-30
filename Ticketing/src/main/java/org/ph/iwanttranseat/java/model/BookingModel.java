package org.ph.iwanttranseat.java.model;

import java.sql.Date;
import java.sql.Time;

public class BookingModel {
	int bookId;
	int travelId;
	int user_id;

	String travel_to;
	String travel_from;
	Date travel_date;
	Time departure;
	Time arrival;
	String bus_name;
	String bus_type;
	int available_seats;
	String driver;
	int fare;

	String passengerEmail;
	String passengerName;

	public BookingModel(int travelId) {
		super();
		this.travelId = travelId;
	}

	public BookingModel(String passengerName) {
		super();
		this.passengerName = passengerName;
	}

	public BookingModel(int travelId, String travel_to, String travel_from, Date travel_date, Time departure,
			Time arrival, String bus_name, String bus_type, int available_seats, String driver, int fare) {
		super();
		this.travelId = travelId;
		this.travel_to = travel_to;
		this.travel_from = travel_from;
		this.travel_date = travel_date;
		this.departure = departure;
		this.arrival = arrival;
		this.bus_name = bus_name;
		this.bus_type = bus_type;
		this.available_seats = available_seats;
		this.driver = driver;
		this.fare = fare;
	}

	public BookingModel(int travelId, String travel_from, String travel_to, Date travel_date, Time departure, Time arrival, int fare,
			String bus_name, String bus_type, int available_seats) {
		this.travelId = travelId;
		this.travel_from = travel_from;
		this.travel_to = travel_to;
		this.travel_date = travel_date;
		this.departure = departure;
		this.arrival = arrival;
		this.fare = fare;
		this.bus_name = bus_name;
		this.available_seats = available_seats;
	}

	public String getTravel_to() {
		return travel_to;
	}

	public void setTravel_to(String travel_to) {
		this.travel_to = travel_to;
	}

	public String getTravel_from() {
		return travel_from;
	}

	public void setTravel_form(String travel_from) {
		this.travel_from = travel_from;
	}

	public Date getTravel_date() {
		return travel_date;
	}

	public void setTravel_date(Date travel_date) {
		this.travel_date = travel_date;
	}

	public Time getDeparture() {
		return departure;
	}

	public void setDeparture(Time departure) {
		this.departure = departure;
	}

	public Time getArrival() {
		return arrival;
	}

	public void setArrival(Time arrival) {
		this.arrival = arrival;
	}

	public String getBus_name() {
		return bus_name;
	}

	public void setBus_name(String bus_name) {
		this.bus_name = bus_name;
	}

	public String getBus_type() {
		return bus_type;
	}

	public void setBus_type(String bus_type) {
		this.bus_type = bus_type;
	}

	public String getDriver() {
		return driver;
	}

	public void setDriver(String driver) {
		this.driver = driver;
	}

	public int getFare() {
		return fare;
	}

	public void setFare(int fare) {
		this.fare = fare;
	}

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public int getTravelId() {
		return travelId;
	}

	public void setTravelId(int travelId) {
		this.travelId = travelId;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public int getAvailable_seats() {
		return available_seats;
	}

	public void setAvailable_seats(int available_seats) {
		this.available_seats = available_seats;
	}

	public void setTravel_from(String travel_from) {
		this.travel_from = travel_from;
	}

	public String getPassengerEmail() {
		return passengerEmail;
	}

	public void setPassengerEmail(String passengerEmail) {
		this.passengerEmail = passengerEmail;
	}

	public String getPassengerName() {
		return passengerName;
	}

	public void setPassengerName(String passengerName) {
		this.passengerName = passengerName;
	}

}
