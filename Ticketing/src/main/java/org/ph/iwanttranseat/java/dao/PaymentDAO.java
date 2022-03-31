package org.ph.iwanttranseat.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;

import org.ph.iwanttranseat.java.model.PaymentModel;

public class PaymentDAO {
	
	public int payment(PaymentModel payment) throws ClassNotFoundException {
        String INSERT_PAYMENT_SQL = "INSERT INTO payment" +
            "  (transaction_code, user_id, payer_name, payer_email, payment_status, date_created) VALUES " +
            " (?, ?, ?, ?, ?, ?);";

        int result = 0;
        try (Connection connection = JDBCUtils.getConnection();
            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PAYMENT_SQL)) {
            preparedStatement.setString(1, payment.getTransaction_code());
            preparedStatement.setInt(2, payment.getUser_id());
            preparedStatement.setString(3, payment.getPayer_name());
            preparedStatement.setString(4, payment.getPayer_email());
            preparedStatement.setString(5, payment.getPayment_status());
            preparedStatement.setDate(6, JDBCUtils.getSQLDate(LocalDate.now()));
    

            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
            JDBCUtils.printSQLException(e);
        }
        return result;
    }

}
