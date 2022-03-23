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

@WebServlet("/")
public class BusController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BusDAO busDAO;
	
	public void init() {
		busDAO = new BusDAO();
	}
	
    public BusController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String action = request.getServletPath();
		System.out.println(action);
		try {
			switch(action) {
				case "/busDetails":
					showForm(request, response);
					break;
				case "/insertBusDetails":
					System.out.println("insertBusDetailsssss");
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
					System.out.println("asdasd");
	                RequestDispatcher dispatcher = request.getRequestDispatcher("../jsp/admin/AddBusDetails.jsp");
	                dispatcher.forward(request, response);
	                break;
			}
		} catch (SQLException ex) {
            throw new ServletException(ex);
        }	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
	}
	
//	This should show the Add Bus Form
	private void showForm(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("..jsp/admin/AddBusDetails.jsp");
        dispatcher.forward(request, response);
	}
	
//	This should show the Edit / Update Form for Bus Details
	private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
		int id = Integer.parseInt(request.getParameter("id"));
	
        BusModel busModel = busDAO.selectBus(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("..jsp/admin/employee-form.jsp");
        request.setAttribute("busDetails", busModel);
        dispatcher.forward(request, response);
	}
	
	private void insertBusDetails(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		System.out.println("Hello");
		String busName = request.getParameter("bus_name");
        String busType = request.getParameter("bus_type");
        String busSeats = request.getParameter("bus_seats");
        String busNumber = request.getParameter("bus_number");
        String plateNumber = request.getParameter("plate_number");
        LocalDate dateCreated = LocalDate.now();
        boolean isDeleted = Boolean.valueOf(request.getParameter("is_deleted"));
        System.out.println(busName+" "+busType+" "+busSeats+" "+busNumber+" "+plateNumber+" "+dateCreated+" "+isDeleted);
        BusModel busModel = new BusModel(busName, busType, busSeats, busNumber, 
        		plateNumber, dateCreated, isDeleted);
        busDAO.insertBus(busModel);
     
	}
	
	private void updateBusDetails(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException, ServletException {
		System.out.println("Hello World");
        String busName = request.getParameter("bus_name");
        String busType = request.getParameter("bus_type");
        String busSeats = request.getParameter("bus_seats");
        String busNumber = request.getParameter("bus_number");
        String plateNumber = request.getParameter("plate_number");
        LocalDate dateModified = LocalDate.now();
        BusModel busModel = new BusModel(busName, busType, busSeats, busNumber, plateNumber, dateModified);

        busDAO.updateBusDetails(busModel);
        response.sendRedirect("busList");	
	}
	
	private void deleteBusDetails(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException, ServletException {
        boolean isDeleted = Boolean.valueOf(request.getParameter("is_deleted"));
        BusModel busModel = new BusModel(isDeleted);

        busDAO.deleteBusDetails(busModel);
        response.sendRedirect("busList");	
	}
	
	private void busLists(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
	      List < BusModel > busList = busDAO.selectAllBus();
	      System.out.println("Hello");
	      request.setAttribute("buslist", busList);
	      RequestDispatcher dispatcher = request.getRequestDispatcher("../jsp/admin/BusList.jsp");
	      dispatcher.forward(request, response);
	}
}