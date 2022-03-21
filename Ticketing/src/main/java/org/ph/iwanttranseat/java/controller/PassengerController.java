package org.ph.iwanttranseat.java.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.ph.iwanttranseat.java.API.NotificationAPI;
import org.ph.iwanttranseat.java.dao.PassengerDAO;
import org.ph.iwanttranseat.java.model.PassengerModel;


@WebServlet("/PassengerController")
public class PassengerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public PassengerController() {
        super();
        
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		
		HttpSession session=request.getSession(); 
		String verify = request.getParameter("verify");
		session.getAttribute("otp");
		ArrayList<String> val = (ArrayList<String>) request.getSession().getAttribute("passenger");
		
		if(verify.equals(session.getAttribute("otp"))){
			
		  PassengerModel passengerModel = new PassengerModel();
		  PassengerDAO passengerDAO = new PassengerDAO();
		  
		  passengerModel.setPassengerFirstname(val.get(0));
		  passengerModel.setPassengerLastname(val.get(1));
		  passengerModel.setPassengerEmail(val.get(2));
		  passengerModel.setPassengerPhoneNumber(val.get(3));
		  passengerModel.setPassengerAge(val.get(4));
		  passengerModel.setPassengerPassword(val.get(5));
		  passengerModel.setPassengerBirthDate(LocalDate.parse(val.get(6)));
			
	        try {
	            int result = passengerDAO.registerPassenger(passengerModel);
	            if (result == 1) {
//	                request.setAttribute("NOTIFICATION", "User Registered Successfully!");
	                RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/passenger/index_passenger.jsp");
	                dispatcher.forward(request, response);
	    			session.invalidate();
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        }
		  
			System.out.print("true");
		}else {
			response.sendRedirect("jsp/passenger/verify_passenger.jsp");
			System.out.print("false");
		}
		
	}

}
