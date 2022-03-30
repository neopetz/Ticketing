package org.ph.iwanttranseat.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.ph.iwanttranseat.java.model.PassengerPaymentModel;

public class PassengerPaymentDAO {
	

	private static final String SELECT_PASSENGER_PAYMENT_DETAILS = "SELECT paymentId, transaction_code, payer_name, payer_email, payment_status FROM payment WHERE is_deleted = FALSE";

	public List<PassengerPaymentModel> selectAllPassengerPaymentDetails() {
		List<PassengerPaymentModel> passengerPaymentDetails = new ArrayList<>();

		try (Connection connection = JDBCUtils.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PASSENGER_PAYMENT_DETAILS)) {
			System.out.println(preparedStatement);

			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				int paymentId = rs.getInt("paymentId");
				String transaction_code = rs.getString("transaction_code");
				String payer_name = rs.getString("payer_name");
				String payer_email = rs.getString("payer_email");
				String payment_status = rs.getString("payment_status");
				
				passengerPaymentDetails.add(new PassengerPaymentModel(paymentId, transaction_code, payer_name, payer_email, payment_status));
			}
		} catch (SQLException exception) {
			JDBCUtils.printSQLException(exception);
		}
		return passengerPaymentDetails;
	}

}
