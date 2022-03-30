package org.ph.iwanttranseat.java.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.util.ArrayList;
import java.util.List;

import org.ph.iwanttranseat.java.model.BookingModel;
import org.ph.iwanttranseat.java.model.TransactionModel;

public class TransactionDAO {

	private static final String SELECT_ALL_TRANSACTION = "SELECT transactionId, transaction_code, Concat(passenger.firstname, ' ', passenger.lastname) AS fullname, "
			+ "payer_name, payer_email, payment_status, payment.date_created " + "FROM `transaction` "
			+ "INNER JOIN booking ON booking.bookId = transaction.bookId "
			+ "INNER JOIN payment ON payment.paymentId = transaction.paymentId "
			+ "INNER JOIN passenger ON passenger.user_id = booking.user_id;";

	public List<TransactionModel> selectAllTransaction() {
		List<TransactionModel> listOfTransactions = new ArrayList<>();

		try (Connection connection = JDBCUtils.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_TRANSACTION);) {
			System.out.println(preparedStatement);
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				int transactionId = resultSet.getInt("transactionId");
				String transaction_code = resultSet.getString("transaction_code");
				String fullname = resultSet.getString("fullname");
				String payer_name = resultSet.getString("payer_name");
				String payer_email = resultSet.getString("payer_email");
				String payment_status = resultSet.getString("payment_status");
				String payment_date_created = resultSet.getString("payment.date_created");
				listOfTransactions.add(new TransactionModel(
						transactionId, transaction_code, 
						fullname, payer_name, 
						payer_email, payment_status, 
						payment_date_created)
						);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listOfTransactions;
	}

}
