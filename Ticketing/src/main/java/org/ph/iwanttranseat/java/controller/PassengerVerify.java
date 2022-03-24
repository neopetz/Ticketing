package org.ph.iwanttranseat.java.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.ph.iwanttranseat.java.API.HashMD5;
import org.ph.iwanttranseat.java.API.NotificationAPI;

@WebServlet("/PassengerVerify")
public class PassengerVerify extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PassengerVerify() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HashMD5 hashMD5 = new HashMD5();
		
		String passengerFirstname = request.getParameter("firstname");
		String passengerLastname = request.getParameter("lastname");
		String passengerEmail = request.getParameter("email");
		String passengerPhoneNumber = request.getParameter("contact");
		String passengerAge = request.getParameter("age");
		String passengerPassword = hashMD5.getMd5(request.getParameter("password"));
		String passengerBirthDate = request.getParameter("birthday");
		

		Random rnd = new Random();
		int number = rnd.nextInt(999999);
		String otpNumber = String.format("%06d", number);

		NotificationAPI notificationAPI = new NotificationAPI();

		String message = "Hi " + passengerFirstname + " " + passengerLastname + "\n\n\nYour OTP number is : "+ otpNumber;
		String subject = "IWantTranSeat Verification";
		String to = passengerEmail;
		System.out.println( otpNumber);
		
		notificationAPI.sendEmail(message, subject, to);

		HttpSession session = request.getSession();
		session.setAttribute("otp", otpNumber);

		ArrayList<String> passenger = new ArrayList<String>();
		passenger.add(passengerFirstname);
		passenger.add(passengerLastname);
		passenger.add(passengerEmail);
		passenger.add(passengerPhoneNumber);
		passenger.add(passengerAge);
		passenger.add(passengerPassword);
		passenger.add(passengerBirthDate);

		session.setAttribute("passenger", passenger);

		RequestDispatcher rd = request.getRequestDispatcher("jsp/passenger/verify_passenger.jsp");
		rd.forward(request, response);

	}

}
