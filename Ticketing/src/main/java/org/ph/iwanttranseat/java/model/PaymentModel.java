package org.ph.iwanttranseat.java.model;

import java.time.LocalDate;

public class PaymentModel {
	
	private int payment_id;
	private String transaction_code;
	private String payer_name;
	private String payer_email;
	private String payment_status;
	private LocalDate date_created;
	
	
	
	
	public PaymentModel() {
		super();

	}

	public PaymentModel(int payment_id, String transaction_code, String payer_name, String payer_email,
			String payment_status, LocalDate date_created) {
		super();
		this.payment_id = payment_id;
		this.transaction_code = transaction_code;
		this.payer_name = payer_name;
		this.payer_email = payer_email;
		this.payment_status = payment_status;
		this.date_created = date_created;
	}
	
	public int getPayment_id() {
		return payment_id;
	}
	public void setPayment_id(int payment_id) {
		this.payment_id = payment_id;
	}
	public String getTransaction_code() {
		return transaction_code;
	}
	public void setTransaction_code(String transaction_code) {
		this.transaction_code = transaction_code;
	}
	public String getPayer_name() {
		return payer_name;
	}
	public void setPayer_name(String payer_name) {
		this.payer_name = payer_name;
	}
	public String getPayer_email() {
		return payer_email;
	}
	public void setPayer_email(String payer_email) {
		this.payer_email = payer_email;
	}
	public String getPayment_status() {
		return payment_status;
	}
	public void setPayment_status(String payment_status) {
		this.payment_status = payment_status;
	}
	public LocalDate getDate_created() {
		return date_created;
	}
	public void setDate_created(LocalDate date_created) {
		this.date_created = date_created;
	}
	
	
	
}
