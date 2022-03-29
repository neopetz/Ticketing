package org.ph.iwanttranseat.java.controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.ph.iwanttranseat.java.dao.PaymentDAO;
import org.ph.iwanttranseat.java.model.PaymentModel;


@WebServlet("/PaymentController")
public class PaymentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	PaymentModel paymentModel = new PaymentModel();
	PaymentDAO paymentDAO = new PaymentDAO();

    public PaymentController() {
        super();

    }
    
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		


	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	    Random rnd = new Random();
	    int number = rnd.nextInt(9999);

	    // this will convert any number sequence into 6 character.
	    String ticket_number = "2022" + String.format("%04d", number);
		
		String transaction = request.getParameter("transaction");
		String payer_name = request.getParameter("payer_name");
		String payer_email = request.getParameter("payer_email");
		String status = request.getParameter("status");
		String departure_location = request.getParameter("departure_location");
		String arrival_location = request.getParameter("arrival_location");
		String departure_date = request.getParameter("departure_date");
		String arrival_date = request.getParameter("arrival_date");
		String bus_class = request.getParameter("bus_class");
		String bus_seat = request.getParameter("bus_seat");
		String bus_number = request.getParameter("bus_number");
		String passenger_name = request.getParameter("passenger_name");
		String driver = request.getParameter("driver");
		
		String price = request.getParameter("price");
		//System.out.println(price + "tansaction ");
		
	    
		
		paymentModel.setTransaction_code(transaction);
		paymentModel.setPayer_name(payer_name);
		paymentModel.setPayer_email(payer_email);
		paymentModel.setPayment_status(status);
		request.setAttribute("transaction", transaction);
		request.setAttribute("price", price);
		request.setAttribute("departure_location", departure_location);
		request.setAttribute("arrival_location", arrival_location);
		request.setAttribute("departure_date", departure_date);
		request.setAttribute("arrival_date", arrival_date);
		request.setAttribute("bus_class", bus_class);
		request.setAttribute("bus_seat", bus_seat);
		request.setAttribute("bus_number", bus_number);
		request.setAttribute("passenger_name", passenger_name);
		request.setAttribute("driver", driver);
		request.setAttribute("ticket_number", ticket_number);
		
        try {
            int result = paymentDAO.payment(paymentModel);
            if (result == 1) {
               RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/passenger/tiket.jsp");
               dispatcher.forward(request, response);
            	System.out.println("success payment");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        
	}

}
