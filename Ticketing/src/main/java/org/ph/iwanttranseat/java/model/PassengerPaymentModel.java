package org.ph.iwanttranseat.java.model;

public class PassengerPaymentModel {
	
	private int paymentId;
	private String transaction_code;
	private String payer_name;
	private String payer_email;
	private String payment_status;
	private boolean is_deleted;
	
	public PassengerPaymentModel(int paymentId, String transaction_code, String payer_name, String payer_email,
			String payment_status) {
		super();
		this.paymentId = paymentId;
		this.transaction_code = transaction_code;
		this.payer_name = payer_name;
		this.payer_email = payer_email;
		this.payment_status = payment_status;
	}

	public int getPaymentId() {
		return paymentId;
	}

	public void setPaymentId(int paymentId) {
		this.paymentId = paymentId;
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

	public boolean isIs_deleted() {
		return is_deleted;
	}

	public void setIs_deleted(boolean is_deleted) {
		this.is_deleted = is_deleted;
	}
	
	

}
