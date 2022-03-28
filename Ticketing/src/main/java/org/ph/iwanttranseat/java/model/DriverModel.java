package org.ph.iwanttranseat.java.model;

public class DriverModel extends BusPersonnelModel {

	static int driver_id;
	public DriverModel(int id, String personnel) {
		super(id, personnel);
		DriverModel.driver_id = id;
	}
	public static int getDriver_id() {
		return driver_id;
	}


}
