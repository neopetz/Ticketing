package org.ph.iwanttranseat.java.model;

public class BusPersonnelModel {
	private int id;
	private String firstname;
	private String lastname;
	private String position;
	private String status;
	private boolean isDeleted;
	
	
	
	public BusPersonnelModel(int id, String firstname, String lastname, String position, String status) {
		this.id = id;
		this.firstname = firstname;
		this.lastname = lastname;
		this.position = position;
		this.status = status;
	}


	public BusPersonnelModel(int id, Boolean isDeleted) {
		this.id = id;
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


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	
	
}
