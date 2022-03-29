package org.ph.iwanttranseat.java.model;

import java.time.LocalDate;

public class BusModel {

	private int busId;
	private String busName;
	private String busType;
	private String busSeats;
	private String busNumber;
	private String plateNumber;
	private LocalDate dateCreated;
	private LocalDate dateModified;
	private boolean isDeleted;

	private String bus;
	
	
	public BusModel(int busId, String bus) {
		super();
		this.setBusId(busId);
		this.bus = bus;
	}

	// Delete Bus Details Constructor from Bus Controller
	public BusModel(int busId, boolean isDeleted) {
		super();
		this.setBusId(busId);
		this.isDeleted = isDeleted;
	}

//	Update Bus Details Constructor from Bus Controller
	public BusModel(int busId, String busName, String busType, String busSeats, String busNumber, String plateNumber) {
		super();
		this.setBusId(busId);
		this.busName = busName;
		this.busType = busType;
		this.busSeats = busSeats;
		this.busNumber = busNumber;
		this.plateNumber = plateNumber;
	}

//	Insert Bus Details Constructor from Bus Controller
	public BusModel(String busName, String busType, String busSeats, String busNumber, String plateNumber,
			LocalDate dateCreated, boolean isDeleted) {
		super();
		this.busName = busName;
		this.busType = busType;
		this.busSeats = busSeats;
		this.busNumber = busNumber;
		this.plateNumber = plateNumber;
		this.dateCreated = dateCreated;
		this.isDeleted = isDeleted;
	}

//	for Bus List Array in BusDAO
	public BusModel(int busId, String busName, String busType, String busSeats, String busNumber, String plateNumber,
			LocalDate dateCreated) {
		super();
		this.setBusId(busId);
		this.busName = busName;
		this.busType = busType;
		this.busSeats = busSeats;
		this.busNumber = busNumber;
		this.plateNumber = plateNumber;
		this.dateCreated = dateCreated;
	}


	public String getBusName() {
		return busName;
	}

	public void setBusName(String busName) {
		this.busName = busName;
	}

	public String getBusType() {
		return busType;
	}

	public void setBusType(String busType) {
		this.busType = busType;
	}

	public String getBusSeats() {
		return busSeats;
	}

	public void setBusSeats(String busSeats) {
		this.busSeats = busSeats;
	}

	public String getBusNumber() {
		return busNumber;
	}

	public void setBusNumber(String busNumber) {
		this.busNumber = busNumber;
	}

	public String getPlateNumber() {
		return plateNumber;
	}

	public void setPlateNumber(String plateNumber) {
		this.plateNumber = plateNumber;
	}

	public LocalDate getDateCreated() {
		return dateCreated;
	}

	public void setDateCreated(LocalDate dateCreated) {
		this.dateCreated = dateCreated;
	}

	public LocalDate getDateModified() {
		return dateModified;
	}

	public void setDateModified(LocalDate dateModified) {
		this.dateModified = dateModified;
	}

	public boolean isDeleted() {
		return isDeleted;
	}

	public void setDeleted(boolean isDeleted) {
		this.isDeleted = isDeleted;
	}

	public String getBus() {
		return bus;
	}

	public void setBus(String bus) {
		this.bus = bus;
	}

	public int getBusId() {
		return busId;
	}

	public void setBusId(int busId) {
		this.busId = busId;
	}
}
