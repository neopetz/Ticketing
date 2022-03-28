package org.ph.iwanttranseat.java.model;

public class ConductorModel extends BusPersonnelModel{
	
	static int conductor_id;
	
	public ConductorModel(int busPersonnel_id, String personnel) {
		super(busPersonnel_id, personnel);
		ConductorModel.conductor_id = busPersonnel_id;
	}

	public static int getConductor_id() {
		return conductor_id;
	}


	

}
