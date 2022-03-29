package org.ph.iwanttranseat.java.model;

public class TravelScheduleModel {
	int travelId;
	int schedule_id;
	int bus_id;
	int driver_id;	
	int conductor_id;
	boolean is_deleted;
	
	String travel_schedule;
	String travel_bus;
	String driver;
	String conductor;
	int fare;
	
	
	
	public TravelScheduleModel(int travelId, int schedule_id, int bus_id, int driver_id, int conductor_id) {
		super();
		this.travelId = travelId;
		this.schedule_id = schedule_id;
		this.bus_id = bus_id;
		this.driver_id = driver_id;
		this.conductor_id = conductor_id;
	}

	public TravelScheduleModel(int travelId, String travel_schedule, String travel_bus, String driver, String conductor,
			int fare) {
		super();
		this.travelId = travelId;
		this.travel_schedule = travel_schedule;
		this.travel_bus = travel_bus;
		this.driver = driver;
		this.conductor = conductor;
		this.fare = fare;
	}

	public TravelScheduleModel(int schedule_id, int bus_id, int driver_id, int conductor_id, boolean is_deleted) {
		super();
		this.schedule_id = schedule_id;
		this.bus_id = bus_id;
		this.driver_id = driver_id;
		this.conductor_id = conductor_id;
		
	}
	
	public TravelScheduleModel(int id, Boolean isDeleted) {
		this.travelId = id;
		this.is_deleted = isDeleted;
	}

	public int getTravelId() {
		return travelId;
	}
	public void setTravelId(int travelId) {
		this.travelId = travelId;
	}
	public int getSchedule_id() {
		return schedule_id;
	}
	public void setSchedule_id(int schedule_id) {
		this.schedule_id = schedule_id;
	}
	public int getBus_id() {
		return bus_id;
	}
	public void setBus_id(int bus_id) {
		this.bus_id = bus_id;
	}
	public int getDriver_id() {
		return driver_id;
	}
	public void setDriver_id(int driver_id) {
		this.driver_id = driver_id;
	}
	public int getConductor_id() {
		return conductor_id;
	}
	public void setConductor_id(int conductor_id) {
		this.conductor_id = conductor_id;
	}

	public boolean is_deleted() {
		return is_deleted;
	}

	public void setIs_deleted(boolean is_deleted) {
		this.is_deleted = is_deleted;
	}

	public String getTravel_schedule() {
		return travel_schedule;
	}

	public void setTravel_schedule(String travel_schedule) {
		this.travel_schedule = travel_schedule;
	}

	public String getTravel_bus() {
		return travel_bus;
	}

	public void setTravel_bus(String travel_bus) {
		this.travel_bus = travel_bus;
	}

	public String getDriver() {
		return driver;
	}

	public void setDriver(String driver) {
		this.driver = driver;
	}

	public String getConductor() {
		return conductor;
	}

	public void setConductor(String conductor) {
		this.conductor = conductor;
	}

	public int getFare() {
		return fare;
	}

	public void setFare(int fare) {
		this.fare = fare;
	}

	public boolean isIs_deleted() {
		return is_deleted;
	}
	
}
