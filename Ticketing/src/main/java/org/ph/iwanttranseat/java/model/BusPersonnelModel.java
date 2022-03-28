package org.ph.iwanttranseat.java.model;

public class BusPersonnelModel {
	private int busPersonnel_id;
	private String firstname;
	private String lastname;
	private String position;
	private String status;
	private boolean isDeleted;

	private String personnel;


	public BusPersonnelModel(int busPersonnel_id, String personnel) {
		super();
		this.busPersonnel_id = busPersonnel_id;
		this.personnel = personnel;
	}


	public BusPersonnelModel(int busPersonnel_id, String firstname, String lastname, String position, String status) {
		this.busPersonnel_id = busPersonnel_id;
		this.firstname = firstname;
		this.lastname = lastname;
		this.position = position;
		this.status = status;
	}

	public BusPersonnelModel(int busPersonnel_id, Boolean isDeleted) {
		this.busPersonnel_id = busPersonnel_id;
		this.isDeleted = isDeleted;
	}

	public BusPersonnelModel(String firstname, String lastname, String position, String status, Boolean isDeleted) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.position = position;
		this.status = status;
		this.isDeleted = isDeleted;
	}


	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public boolean isDeleted() {
		return isDeleted;
	}

	public void setDeleted(boolean isDeleted) {
		this.isDeleted = isDeleted;
	}

	public String getPersonnel() {
		return personnel;
	}

	public void setPersonnel(String personnel) {
		this.personnel = personnel;
	}

	public int getBusPersonnel_id() {
		return busPersonnel_id;
	}

	public void setBusPersonnel_id(int busPersonnel_id) {
		this.busPersonnel_id = busPersonnel_id;
	}

}
