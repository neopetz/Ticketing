package org.ph.iwanttranseat.java.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.ph.iwanttranseat.java.dao.BookingDAO;
import org.ph.iwanttranseat.java.model.BookingModel;

@WebServlet(urlPatterns = { "/travelBooking", "/bookSelectedSchedule" })
public class BookingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BookingDAO bookingDao;

	public void init() {
		bookingDao = new BookingDAO();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();
		System.out.println(action);
		switch (action) {
		case "/travelBooking":
			travelBooking(request, response);
			break;
		case "/bookSelectedSchedule":
			try {
				bookSelectedSchedule(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;

		default:
//				RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/login.jsp");
//				dispatcher.forward(request, request);
			break;
		}

	}

	private void travelBooking(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<BookingModel> listOfAvailableSchedule = bookingDao.selectAllAvailableTravelSchedules();
		request.setAttribute("listOfAvailableSchedule", listOfAvailableSchedule);
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/passenger/index_passenger.jsp");
		dispatcher.forward(request, response);
	}	
	
	private void bookSelectedSchedule(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		 addBookSelectedSchedule(request, response);
		 addPassenger(request, response);
		 RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/passenger/payment_paypal_form.jsp");
		 dispatcher.forward(request, response);
	}
	
	private void addBookSelectedSchedule(HttpServletRequest request, HttpServletResponse response) throws SQLException {
		int travelId = Integer.parseInt(request.getParameter("travelId"));
		BookingModel selectedSchedule = bookingDao.selectScheduleById(travelId);
		request.setAttribute("selectedSchedule", selectedSchedule);
	}
	
	private void addPassenger(HttpServletRequest request, HttpServletResponse response) throws SQLException {
		String passengerEmail = request.getParameter("passengerEmail");
		System.out.println(passengerEmail);
		BookingModel passenger = bookingDao.selectPassenger(passengerEmail);
		request.setAttribute("passenger", passenger);
	}


	

	

}
