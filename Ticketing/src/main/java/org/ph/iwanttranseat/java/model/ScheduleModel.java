package org.ph.iwanttranseat.java.model;

import java.time.LocalDate;
import java.time.LocalTime;

public class ScheduleModel {
	
	private int id;
	private String travel_from;
	private String travel_to;
	private LocalDate travel_date;
	private LocalTime departure;
	private LocalTime arrival;
	private int fare;
	private boolean isDeleted;
	
	
	public ScheduleModel(int id, String travel_from, String travel_to, LocalDate travel_date, LocalTime departure, LocalTime arrival, int fare) {
		super();
		this.id = id;
		this.travel_from = travel_from;
		this.travel_to = travel_to;
		this.travel_date = travel_date;
		this.departure = departure;
		this.arrival = arrival;
		this.fare = fare;
	}
	
	public ScheduleModel(String travel_from, String travel_to, LocalDate travel_date, LocalTime departure, LocalTime arrival, int fare) {
		super();
		this.travel_from = travel_from;
		this.travel_to = travel_to;
		this.travel_date = travel_date;
		this.departure = departure;
		this.arrival = arrival;
		this.fare = fare;
	}
	
	public ScheduleModel() {
		
	}
	
	public ScheduleModel(int id, boolean isDeleted) {
		this.id = id;
		this.isDeleted = isDeleted;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTravel_from() {
		return travel_from;
	}
	public void setTravel_from(String travel_from) {
		this.travel_from = travel_from;
	}
	public String getTravel_to() {
		return travel_to;
	}
	public void setTravel_to(String travel_to) {
		this.travel_to = travel_to;
	}
	public LocalDate getTravel_date() {
		return travel_date;
	}
	public void setTravel_date(LocalDate travel_date) {
		this.travel_date = travel_date;
	}
	public LocalTime getDeparture() {
		return departure;
	}
	public void setDeparture(LocalTime departure) {
		this.departure = departure;
	}
	public LocalTime getArrival() {
		return arrival;
	}
	public void setArrival(LocalTime arrival) {
		this.arrival = arrival;
	}
	public int getFare() {
		return fare;
	}
	public void setFare(int fare) {
		this.fare = fare;
	}
	
	
	
}
