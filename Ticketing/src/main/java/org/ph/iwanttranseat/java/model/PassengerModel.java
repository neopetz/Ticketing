package org.ph.iwanttranseat.java.model;

import java.time.LocalDate;

public class PassengerModel {

	private int id;
	private String passengerFirstname;
	private String passengerLastname;
	private String passengerEmail;
	private String passengerPhoneNumber;
	private String passengerAge;
	private String passengerPassword;
	private LocalDate passengerBirthDate;
	private boolean isDeleted;

	public PassengerModel() {

	}

	public PassengerModel(int id, String passengerFirstname, String passengerLastname, String passengerEmail,
			String passengerPhoneNumber, String passengerAge, LocalDate passengerBirthDate) {
		super();
		this.id = id;
		this.passengerFirstname = passengerFirstname;
		this.passengerLastname = passengerLastname;
		this.passengerEmail = passengerEmail;
		this.passengerPhoneNumber = passengerPhoneNumber;
		this.passengerAge = passengerAge;
		this.passengerBirthDate = passengerBirthDate;
	}

	public PassengerModel(int id, String passengerFirstname, String passengerLastname, String passengerEmail,
			String passengerPhoneNumber, String passengerAge, String passengerPassword, LocalDate passengerBirthDate) {
		super();
		this.id = id;
		this.passengerFirstname = passengerFirstname;
		this.passengerLastname = passengerLastname;
		this.passengerEmail = passengerEmail;
		this.passengerPhoneNumber = passengerPhoneNumber;
		this.passengerAge = passengerAge;
		this.passengerPassword = passengerPassword;
		this.passengerBirthDate = passengerBirthDate;
	}

	public PassengerModel(String passengerFirstname, String passengerLastname, String passengerEmail,
			String passengerPhoneNumber, String passengerAge, String passengerPassword, LocalDate passengerBirthDate) {
		super();
		this.passengerFirstname = passengerFirstname;
		this.passengerLastname = passengerLastname;
		this.passengerEmail = passengerEmail;
		this.passengerPhoneNumber = passengerPhoneNumber;
		this.passengerAge = passengerAge;
		this.passengerPassword = passengerPassword;
		this.passengerBirthDate = passengerBirthDate;
	}

	public PassengerModel(String passengerEmail, String passengerPassword) {
		super();
		this.passengerEmail = passengerEmail;
		this.passengerPassword = passengerPassword;
	}

	public PassengerModel(int id, boolean isDeleted) {
		super();
		this.id = id;
		this.isDeleted = isDeleted;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

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

	public boolean isDeleted() {
		return isDeleted;
	}

	public void setDeleted(boolean isDeleted) {
		this.isDeleted = isDeleted;
	}

}
