package org.ph.iwanttranseat.java.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.ph.iwanttranseat.java.API.HashMD5;
import org.ph.iwanttranseat.java.dao.PassengerDAO;
import org.ph.iwanttranseat.java.model.PassengerModel;

@WebServlet(urlPatterns = { "/listPassengers", "/registerPassenger", "/profilePassenger", "/updatePassenger",
		"/changePassword", "/deletePassenger" })
public class PassengerController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private PassengerDAO passengerDAO;
	private HashMD5 hashMD5;

	public PassengerController() {
		super();

	}

	public void init() {
		passengerDAO = new PassengerDAO();
		hashMD5 = new HashMD5();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		System.out.print(action);

		try {

			switch (action) {

			case "/listPassengers":
				listOfPassengers(request, response);
				break;
			case "/registerPassenger":
				register(request, response);
				break;
			case "/profilePassenger":
				profilePassenger(request, response);
				break;
			case "/updatePassenger":
				System.out.print("update");
				updatePassenger(request, response);
				break;
			case "/changePassword":
				changePassword(request, response);
				break;
			case "/deletePassenger":
				deletePassenger(request, response);
				break;
			default:
				listOfPassengers(request, response);
				break;

			}

		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	private void listOfPassengers(HttpServletRequest req, HttpServletResponse resp)
			throws SQLException, IOException, ServletException {
		List<PassengerModel> listPassenger = passengerDAO.selectAllPassengers();
		req.setAttribute("listPassenger", listPassenger);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/jsp/admin/passenger-list.jsp");
		dispatcher.forward(req, resp);

	}

	private void register(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();
		String verify = request.getParameter("verify");
		session.getAttribute("otp");
		ArrayList<String> val = (ArrayList<String>) request.getSession().getAttribute("passenger");

		if (verify.equals(session.getAttribute("otp"))) {

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
					RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/index.jsp");
					dispatcher.forward(request, response);
					session.invalidate();
				}

			} catch (Exception e) {
				e.printStackTrace();
			}

			System.out.print("true");
		} else {
			response.sendRedirect("jsp/passenger/verify_passenger.jsp");
			System.out.print("false");
		}
	}

	private void updatePassenger(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		System.out.println("\n\nupdate passenger");

		int id = Integer.parseInt(request.getParameter("user_id"));

		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String phone_number = request.getParameter("phone_number");
		String age = request.getParameter("age");
		LocalDate birth_date = LocalDate.parse(request.getParameter("birth_date"));

		PassengerModel updatePassenger = new PassengerModel(id, firstname, lastname, email, phone_number, age,
				birth_date);

		System.out.print(updatePassenger);
		passengerDAO.updatePassenger(updatePassenger);
		response.sendRedirect("profilePassenger?email=" + email);
	}

	private void deletePassenger(HttpServletRequest request, HttpServletResponse response)
			throws IOException, SQLException {
		int id = Integer.parseInt(request.getParameter("user_id"));
		Boolean isDeleted = true;

		PassengerModel deletePassenger = new PassengerModel(id, isDeleted);

		passengerDAO.deletedPassenger(deletePassenger);
		response.sendRedirect("listPassengers");

	}

	private void profilePassenger(HttpServletRequest req, HttpServletResponse resp)
			throws SQLException, IOException, ServletException {
		String email = req.getParameter("email");

		PassengerModel existingPassenger = passengerDAO.selectPassenger(email);
		RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/passenger/profile.jsp");
		req.setAttribute("existingPassenger", existingPassenger);
		dispatcher.forward(req, resp);
	}

	private void changePassword(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		System.out.println("\n\nchange password");

		String email = request.getParameter("email");

		String old_password = hashMD5.getMd5(request.getParameter("old_password"));
		String new_password = hashMD5.getMd5(request.getParameter("new_password"));

		if (passengerDAO.validateOldPassword(email, old_password)) {
			PassengerModel updatePassenger = new PassengerModel(email, new_password);
			System.out.print(updatePassenger);
			passengerDAO.changePassword(updatePassenger);
			request.setAttribute("NOTIFICATION", "Password Changed!");
			request.setAttribute("passwordChanged", "true");
			RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/passenger/index_passenger.jsp");
			dispatcher.forward(request, response);
		} else {
			request.setAttribute("NOTIFICATION", "Invalid old password!");
			RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/passenger/index_passenger.jsp");
			dispatcher.forward(request, response);
		}
		
		
	}

}
