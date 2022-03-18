package org.ph.iwanttranseat.java.model;

//table name in database is `drivers`
public class DriverModel {
	private int id;
	private String driverFirstname;
	private String driverLastname;
	private String driverStatus;
	
	public DriverModel(int id, String driverFirstname, String driverLastname, String driverStatus) {
		super();
		this.id = id;
		this.driverFirstname = driverFirstname;
		this.driverLastname = driverLastname;
		this.driverStatus = driverStatus;
	}

	public DriverModel(String driverFirstname, String driverLastname, String driverStatus) {

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDriverFirstname() {
		return driverFirstname;
	}

	public void setDriverFirstname(String driverFirstname) {
		this.driverFirstname = driverFirstname;
	}

	public String getDriverLastname() {
		return driverLastname;
	}

	public void setDriverLastname(String driverLastname) {
		this.driverLastname = driverLastname;
	}

	public String getDriverStatus() {
		return driverStatus;
	}

	public void setDriverStatus(String driverStatus) {
		this.driverStatus = driverStatus;
	}

	
}
