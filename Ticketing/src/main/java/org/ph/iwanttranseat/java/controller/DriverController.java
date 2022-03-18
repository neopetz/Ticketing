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

import org.ph.iwanttranseat.java.dao.DriverDAO;
import org.ph.iwanttranseat.java.model.DriverModel;

@WebServlet("/")
public class DriverController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DriverDAO driverDao;

	public void init() {
		driverDao = new DriverDAO();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();

		switch (action) {
		case "/insert":
			insertDriver(request, response);
			break;
		case "/update":
			try {
				updateDriver(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		case "/list":
			selectAllDrivers(request, response);
			break;

		default:
//				RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/login.jsp");
//				dispatcher.forward(request, request);
			break;

		}

	}

	private void selectAllDrivers(HttpServletRequest request, HttpServletResponse response) {
		List<DriverModel> listOfDrivers = driverDao.selectAllDrivers();
		request.setAttribute("listOfDrivers", listOfDrivers);
//	RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/driver-list.jsp");
//		dispatcher.forward(request, response);
	}

	private void updateDriver(HttpServletRequest request, HttpServletResponse response) throws SQLException {
		int id = Integer.parseInt(request.getParameter("id"));

		String driverFirstname = request.getParameter("driverFirstname");
		String driverLastname = request.getParameter("driverLastname");
		String driverStatus = request.getParameter("driverStatus");

		DriverModel updatedDriver = new DriverModel(id, driverFirstname, driverLastname, driverStatus);

		driverDao.updateDriver(updatedDriver);
//		response.sendRedirect("somewhere na may list of drivers");
	}

	private void insertDriver(HttpServletRequest request, HttpServletResponse response) {
		String driverFirstname = request.getParameter("driverFirstname");
		String driverLastname = request.getParameter("driverLastname");
		String driverStatus = request.getParameter("driverStatus");

		DriverModel driver = new DriverModel(driverFirstname, driverLastname, driverStatus);
		driverDao.insertDriver(driver);
//		response.sendRedirect("somewhere na may list of drivers");

	}

}
