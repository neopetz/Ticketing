package org.ph.iwanttranseat.java.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.ph.iwanttranseat.java.dao.PassengerPaymentDAO;
import org.ph.iwanttranseat.java.model.PassengerPaymentModel;


@WebServlet(urlPatterns = {"/listOfPassengerPaymentDetails"})
public class PassengerPaymentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	PassengerPaymentDAO passengerPaymentDao;
	public void init() {
		passengerPaymentDao = new PassengerPaymentDAO();
	}
	
    public PassengerPaymentController() {
        super();
        // TODO Auto-generated constructor stub
    }


	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();
		System.out.println(action);
		switch (action) {
		
		case "/listOfPassengerPaymentDetails":
			System.out.println("nasa listttt");
			listOfPassengerPaymentList(request, response);
			break;

		default:
//				RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/login.jsp");
//				dispatcher.forward(request, request);
			break;

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private void listOfPassengerPaymentList(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<PassengerPaymentModel> listOfPassengerPaymentDetails = passengerPaymentDao.selectAllPassengerPaymentDetails();
		System.out.println(listOfPassengerPaymentDetails);
		request.setAttribute("listOfPassengerPaymentDetails", listOfPassengerPaymentDetails);
		request.setAttribute("a", "aaaaaaa");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/operator/passenger-payment-list.jsp");
		dispatcher.forward(request, response);
	}

}
