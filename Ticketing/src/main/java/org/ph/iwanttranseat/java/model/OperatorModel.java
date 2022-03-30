package org.ph.iwanttranseat.java.model;

public class OperatorModel {
	
	private int id;
	private String operator_firstname;
	private String operator_lastname;
	private String operator_username;
	private String operator_password;
	private boolean isDeleted;
	
	
	public OperatorModel() {

	}

	public OperatorModel(int id, boolean isDeleted) {
		super();
		this.id = id;
		this.isDeleted = isDeleted;
	}

	public OperatorModel(String operator_firstname, String operator_lastname, String operator_username,
			String operator_password) {
		super();
		this.operator_firstname = operator_firstname;
		this.operator_lastname = operator_lastname;
		this.operator_username = operator_username;
		this.operator_password = operator_password;
	}

	public OperatorModel(int id, String operator_firstname, String operator_lastname, String operator_username,
			String operator_password) {
		super();
		this.id = id;
		this.operator_firstname = operator_firstname;
		this.operator_lastname = operator_lastname;
		this.operator_username = operator_username;
		this.operator_password = operator_password;
	}
	
	public OperatorModel(String operator_username, String operator_password) {
		super();
		this.operator_username = operator_username;
		this.operator_password = operator_password;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOperator_firstname() {
		return operator_firstname;
	}
	public void setOperator_firstname(String operator_firstname) {
		this.operator_firstname = operator_firstname;
	}
	public String getOperator_lastname() {
		return operator_lastname;
	}
	public void setOperator_lastname(String operator_lastname) {
		this.operator_lastname = operator_lastname;
	}
	public String getOperator_username() {
		return operator_username;
	}
	public void setOperator_username(String operator_username) {
		this.operator_username = operator_username;
	}
	public String getOperator_password() {
		return operator_password;
	}
	public void setOperator_password(String operator_password) {
		this.operator_password = operator_password;
	}
	public boolean isDeleted() {
		return isDeleted;
	}
	public void setDeleted(boolean isDeleted) {
		this.isDeleted = isDeleted;
	}
	

	
}
