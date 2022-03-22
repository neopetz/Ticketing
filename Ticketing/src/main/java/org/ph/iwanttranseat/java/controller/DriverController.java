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

@WebServlet(urlPatterns = { "/addDriver", "/insertDriver", "/editDriver", "/updateDriver", "/listOfDriver", "/deleteDriver"})

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
		System.out.println(action);
		switch (action) {
		case "/addDriver":
			showForm(request, response);
			break;
		case "/insertDriver":
			insertDriver(request, response);
			break;
		case "/editDriver":
			showEditForm(request, response);
			break;
		case "/updateDriver":
			try {
				updateDriver(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		case "/deleteDriver":
			try {
				deleteDriver(request, response);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		case "/listOfDriver":
			selectAllDrivers(request, response);
			break;

		default:
//				RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/login.jsp");
//				dispatcher.forward(request, request);
			break;

		}

	}

	private void deleteDriver(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
		int id = Integer.parseInt(request.getParameter("id"));
		Boolean isDeleted  = true;
		
		
		DriverModel deletedDriver = new DriverModel(id, isDeleted);
		
		driverDao.deletedDriver(deletedDriver);
		response.sendRedirect("listOfDriver");
		
	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int driverID = Integer.parseInt(request.getParameter("id"));
		
		DriverModel driver = driverDao.selectDriverByID(driverID);
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/admin/add-driver-form.jsp");
		request.setAttribute("driver", driver);
		dispatcher.forward(request, response);
		
	}

	private void showForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/admin/add-driver-form.jsp");
		dispatcher.forward(request, response);
	}

	private void selectAllDrivers(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<DriverModel> listOfDrivers = driverDao.selectAllDrivers();
		request.setAttribute("listOfDrivers", listOfDrivers);
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/admin/drivers-list.jsp");
		dispatcher.forward(request, response);
	}

	private void updateDriver(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		String driverFirstname = request.getParameter("driverFirstname");
		String driverLastname = request.getParameter("driverLastname");
		String driverStatus = request.getParameter("driverStatus");
		DriverModel updatedDriver = new DriverModel(id, driverFirstname, driverLastname, driverStatus);
		
		driverDao.updateDriver(updatedDriver);
		response.sendRedirect("listOfDriver");
	}

	private void insertDriver(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String driverFirstname = request.getParameter("driverFirstname");
		String driverLastname = request.getParameter("driverLastname");
		String driverStatus = request.getParameter("driverStatus");
		Boolean isDeleted = false;
		DriverModel driver = new DriverModel(driverFirstname, driverLastname, driverStatus, isDeleted);
		driverDao.insertDriver(driver);
		response.sendRedirect("listOfDriver");

	}

}
