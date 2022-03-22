package org.ph.iwanttranseat.java.model;

import java.time.LocalDate;

public class BusModel {

	private int id = 0;
	private String busName;
	private String busType;
	private String busSeats;
	private String busNumber;
	private String plateNumber;
	private LocalDate dateCreated;
	private LocalDate dateModified;
	private boolean isDeleted;
	
//	Delete Bus Details Constructor from Bus Controller
	public BusModel(boolean isDeleted) {
		super();
		this.isDeleted = isDeleted;
	}
	
//	Update Bus Details Constructor from Bus Controller
	public BusModel(String busName, String busType, String busSeats, String busNumber, String plateNumber,
			LocalDate dateModified) {
		super();
		this.busName = busName;
		this.busType = busType;
		this.busSeats = busSeats;
		this.busNumber = busNumber;
		this.plateNumber = plateNumber;
		this.dateModified = dateModified;
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

	public BusModel(int id, String busName, String busType, String busSeats, String busNumber, String plateNumber,
			LocalDate dateCreated, LocalDate dateModified) {
		super();
		this.id = id;
		this.busName = busName;
		this.busType = busType;
		this.busSeats = busSeats;
		this.busNumber = busNumber;
		this.plateNumber = plateNumber;
		this.dateCreated = dateCreated;
		this.dateModified = dateModified;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
}
