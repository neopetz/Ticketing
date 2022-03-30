package org.ph.iwanttranseat.java.model;

public class TransactionModel {
	private int transactionId;
	private int bookId;
	private int paymentId;
	private String transactionCode;
	private String fullname;
	private String payerName;
	private String payerEmail;
	private String paymentStatus;
	private String paymentDateCreated;

	public TransactionModel() {
		super();
	}

	public TransactionModel(int transactionId, String transactionCode, String fullname, String payerName,
			String payerEmail, String paymentStatus, String paymentDateCreated) {
		super();
		this.transactionId = transactionId;
		this.transactionCode = transactionCode;
		this.fullname = fullname;
		this.payerName = payerName;
		this.payerEmail = payerEmail;
		this.paymentStatus = paymentStatus;
		this.paymentDateCreated = paymentDateCreated;
	}



	public int getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(int transactionId) {
		this.transactionId = transactionId;
	}

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public int getPaymentId() {
		return paymentId;
	}

	public void setPaymentId(int paymentId) {
		this.paymentId = paymentId;
	}

	public String getTransactionCode() {
		return transactionCode;
	}

	public void setTransactionCode(String transactionCode) {
		this.transactionCode = transactionCode;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getPayerName() {
		return payerName;
	}

	public void setPayerName(String payerName) {
		this.payerName = payerName;
	}

	public String getPayerEmail() {
		return payerEmail;
	}

	public void setPayerEmail(String payerEmail) {
		this.payerEmail = payerEmail;
	}

	public String getPaymentStatus() {
		return paymentStatus;
	}

	public void setPaymentStatus(String paymentStatus) {
		this.paymentStatus = paymentStatus;
	}

	public String getPaymentDateCreated() {
		return paymentDateCreated;
	}

	public void setPaymentDateCreated(String paymentDateCreated) {
		this.paymentDateCreated = paymentDateCreated;
	}

}
