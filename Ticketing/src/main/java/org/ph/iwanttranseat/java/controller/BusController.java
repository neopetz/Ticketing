package org.ph.iwanttranseat.java.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.ph.iwanttranseat.java.dao.BusDAO;
import org.ph.iwanttranseat.java.model.BusModel;

@WebServlet(urlPatterns = {"/busDetails", "/insertBusDetails", "/deleteBusDetails", "/editForm", "/updateBusDetails", "/busList"})
public class BusController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BusDAO busDAO;

	public void init() {
		busDAO = new BusDAO();
	}

	public BusController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();
		try {
			switch (action) {
			case "/busDetails":
				showForm(request, response);
				break;
			case "/insertBusDetails":
				insertBusDetails(request, response);
				break;
			case "/deleteBusDetails":
				deleteBusDetails(request, response);
				break;
			case "/editForm":
				showEditForm(request, response);
				break;
			case "/updateBusDetails":
				updateBusDetails(request, response);
				break;
			case "/busList":
				busLists(request, response);
				break;
			default:
				RequestDispatcher dispatcher = request.getRequestDispatcher("../jsp/admin/add-bus.jsp");
				dispatcher.forward(request, response);
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

//	This should show the Add Bus Form
	private void showForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/admin/add-bus.jsp");
		dispatcher.forward(request, response);
	}

//	This should show the Edit / Update Form for Bus Details
	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		int id = Integer.parseInt(request.getParameter("id"));
		BusModel busUpdate = busDAO.selectBus(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/admin/add-bus.jsp");
		request.setAttribute("busDetails", busUpdate);
		dispatcher.forward(request, response);
	}

	private void insertBusDetails(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		String busName = request.getParameter("bus_name");
		String busType = request.getParameter("bus_type");
		String busSeats = request.getParameter("bus_seats");
		String busNumber = request.getParameter("bus_number");
		String plateNumber = request.getParameter("plate_number");
		LocalDate dateCreated = LocalDate.now();
		boolean isDeleted = Boolean.valueOf(request.getParameter("is_deleted"));
		BusModel busModel = new BusModel(busName, busType, busSeats, busNumber, plateNumber, dateCreated, isDeleted);
		busDAO.insertBus(busModel);
		response.sendRedirect("busList");

	}

	private void updateBusDetails(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		int id = Integer.parseInt(request.getParameter("id"));
		String busName = request.getParameter("bus_name");
		String busType = request.getParameter("bus_type");
		String busSeats = request.getParameter("bus_seats");
		String busNumber = request.getParameter("bus_number");
		String plateNumber = request.getParameter("plate_number");
		BusModel busModel = new BusModel(id, busName, busType, busSeats, busNumber, plateNumber);
		busDAO.updateBusDetails(busModel);
		response.sendRedirect("busList");
	}

	private void deleteBusDetails(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		int id = Integer.parseInt(request.getParameter("id"));
		boolean isDeleted = true;
		BusModel busModel = new BusModel(id, isDeleted);
		busDAO.deleteBusDetails(busModel);
		response.sendRedirect("busList");
	}

	private void busLists(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<BusModel> busList = busDAO.selectAllBus();
		request.setAttribute("busList", busList);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/admin/bus-list.jsp");
		dispatcher.forward(request, response);
	}
}