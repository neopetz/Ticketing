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

import org.ph.iwanttranseat.java.dao.BusPersonnelDao;
import org.ph.iwanttranseat.java.model.BusPersonnelModel;

@WebServlet(urlPatterns = { "/addBusPersonnel", "/insertBusPersonnel", "/editBusPersonnel", "/updateBusPersonnel",
		"/listOfBusPersonnel", "/deleteBusPersonnel" })
public class BusPersonnelController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BusPersonnelDao busPersonnelDao;

	public void init() {
		busPersonnelDao = new BusPersonnelDao();
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
		case "/addBusPersonnel":
			showForm(request, response);
			break;
		case "/insertBusPersonnel":
			insertBusPersonnel(request, response);
			break;
		case "/editBusPersonnel":
			showEditForm(request, response);
			break;
		case "/updateBusPersonnel":
			try {
				updateBusPersonnel(request, response);
			} catch (SQLException e1) {
				e1.printStackTrace();
			} catch (IOException e1) {
				e1.printStackTrace();
			}
			break;
		case "/deleteBusPersonnel":
			try {
				deleteBusPersonnel(request, response);
			} catch (IOException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			break;
		case "/listOfBusPersonnel":
			listOfBusPersonnel(request, response);
			break;

		default:
//				RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/login.jsp");
//				dispatcher.forward(request, request);
			break;

		}
	}

	private void listOfBusPersonnel(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<BusPersonnelModel> listOfBusPersonnel = busPersonnelDao.selectAllBusPersonnel();
		request.setAttribute("listOfBusPersonnel", listOfBusPersonnel);
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/admin/busPersonnels-list.jsp");
		dispatcher.forward(request, response);
	}

	private void deleteBusPersonnel(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Boolean isDeleted = true;

		BusPersonnelModel deletedBusPersonnel = new BusPersonnelModel(id, isDeleted);

		busPersonnelDao.deleteBusPersonnel(deletedBusPersonnel);
		response.sendRedirect("listOfBusPersonnel");
	}

	private void updateBusPersonnel(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		
		int busPersonnel_id = Integer.parseInt(request.getParameter("busPersonnel_id"));
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String position = request.getParameter("position");
		String status = request.getParameter("status");
		BusPersonnelModel updatedBusPersonnel = new BusPersonnelModel(busPersonnel_id, firstname, lastname, position, status);
		
		busPersonnelDao.updateBusPersonnel(updatedBusPersonnel);
		response.sendRedirect("listOfBusPersonnel");

	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		
		BusPersonnelModel busPersonnel = busPersonnelDao.selectBusPersonnelByID(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/admin/add-bus-personnel-form.jsp");
		request.setAttribute("busPersonnel", busPersonnel);
		dispatcher.forward(request, response);

	}

	private void insertBusPersonnel(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String position = request.getParameter("position");
		String status = request.getParameter("status");
		Boolean isDeleted = Boolean.parseBoolean("isDeleted");
		
		BusPersonnelModel busPersonnel = new BusPersonnelModel(firstname, lastname, position, status, isDeleted);
		busPersonnelDao.insertBusPersonnel(busPersonnel);
		response.sendRedirect("listOfBusPersonnel");
	}

	private void showForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/admin/add-bus-personnel-form.jsp");
		dispatcher.forward(request, response);

	}

}
