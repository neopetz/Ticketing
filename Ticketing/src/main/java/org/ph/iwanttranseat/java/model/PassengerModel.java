package org.ph.iwanttranseat.java.model;

import java.time.LocalDate;

public class PassengerModel {

	private String passengerFirstname = "";
	private String passengerLastname = "";
	private String passengerGender = "";
	private String passengerUsername = "";
	private String passengerEmail = "";
	private String passengerPhoneNumber = "";
	private String passengerContactEmail = "";
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
	public String getPassengerGender() {
		return passengerGender;
	}
	public void setPassengerGender(String passengerGender) {
		this.passengerGender = passengerGender;
	}
	public String getPassengerUsername() {
		return passengerUsername;
	}
	public void setPassengerUsername(String passengerUsername) {
		this.passengerUsername = passengerUsername;
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
	public String getPassengerContactEmail() {
		return passengerContactEmail;
	}
	public void setPassengerContactEmail(String passengerContactEmail) {
		this.passengerContactEmail = passengerContactEmail;
	}
	public LocalDate getPassengerBirthDate() {
		return passengerBirthDate;
	}
	public void setPassengerBirthDate(LocalDate passengerBirthDate) {
		this.passengerBirthDate = passengerBirthDate;
	}
	
}
