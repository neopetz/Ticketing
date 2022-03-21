package org.ph.iwanttranseat.java.model;

import java.time.LocalDate;

public class PassengerModel {

	private String passengerFirstname;
	private String passengerLastname;
	private String passengerEmail;
	private String passengerPhoneNumber;
	private String passengerAge;
	private String passengerPassword;
	private LocalDate passengerBirthDate;
	
	public String getPassengerFirstname() {
		return passengerFirstname;
	}
	public void setPassengerFirstname(String passengerFirstname) {
		this.passengerFirstname = passengerFirstname;
	}
	public String getPassengerLastname() {
		return passengerLastname;
	}
	public void setPassengerLastname(String passengerLastname) {
		this.passengerLastname = passengerLastname;
	}
	public String getPassengerEmail() {
		return passengerEmail;
	}
	public void setPassengerEmail(String passengerEmail) {
		this.passengerEmail = passengerEmail;
	}
	public String getPassengerPhoneNumber() {
		return passengerPhoneNumber;
	}
	public void setPassengerPhoneNumber(String passengerPhoneNumber) {
		this.passengerPhoneNumber = passengerPhoneNumber;
	}
	public String getPassengerAge() {
		return passengerAge;
	}
	public void setPassengerAge(String passengerAge) {
		this.passengerAge = passengerAge;
	}
	public String getPassengerPassword() {
		return passengerPassword;
	}
	public void setPassengerPassword(String passengerPassword) {
		this.passengerPassword = passengerPassword;
	}
	public LocalDate getPassengerBirthDate() {
		return passengerBirthDate;
	}
	public void setPassengerBirthDate(LocalDate passengerBirthDate) {
		this.passengerBirthDate = passengerBirthDate;
	}
	

}
