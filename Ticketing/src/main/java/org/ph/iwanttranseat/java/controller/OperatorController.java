package org.ph.iwanttranseat.java.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.ph.iwanttranseat.java.dao.OperatorDAO;
import org.ph.iwanttranseat.java.dao.ScheduleDAO;
import org.ph.iwanttranseat.java.model.OperatorModel;
import org.ph.iwanttranseat.java.model.ScheduleModel;


@WebServlet(urlPatterns = { "/newOperator", "/insertOperator", "/listOperator", "/deleteOperator", "/editOperator",
"/updateOperator" })
public class OperatorController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	OperatorDAO operatorDAO;

    public OperatorController() {
        super();

    }
    
	public void init() {
		operatorDAO = new OperatorDAO();

	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();
		System.out.print(action);

		try {

			switch (action) {

			case "/newOperator":
				System.out.print("soon");
				showFormOperator(request, response);
				break;
			case "/insertOperator":
				System.out.print("insert");
				insertOperator(request, response);
				break;
			case "/deleteOperator":
				deleteOperator(request, response);
				break;
			case "/editOperator":
				showEditFormOperator(request, response);
				break;
			case "/updateOperator":
				System.out.print("update");
				updateOperator(request, response);
				break;
			case "/listOperator":
				listOperator(request, response);
				break;

			default:
				RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/login.jsp");
				dispatcher.forward(request, response);
				break;

			}

		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}

	
	private void updateOperator(HttpServletRequest req, HttpServletResponse resp)
			throws SQLException, IOException, ServletException {
		System.out.print("\n\nupdate sched");

		int id = Integer.parseInt(req.getParameter("id"));

		String operator_firstname = req.getParameter("operator_firstname");
		String operator_lastname = req.getParameter("operator_lastname");
		String operator_username = req.getParameter("operator_username");
		String operator_password = req.getParameter("operator_password");

		OperatorModel updateoperator = new OperatorModel(id, operator_firstname, operator_lastname, operator_username, operator_password);

		System.out.print(updateoperator);
		operatorDAO.updateOperator(updateoperator);
		resp.sendRedirect("listOperator");

	}

	private void listOperator(HttpServletRequest req, HttpServletResponse resp)
			throws SQLException, IOException, ServletException {
		List<OperatorModel> listOperator = operatorDAO.selectAllOperator();
		req.setAttribute("listoperator", listOperator);
		RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/operator/operator-list.jsp");
		dispatcher.forward(req, resp);

	}
	
	private void deleteOperator(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
		int id = Integer.parseInt(request.getParameter("id"));
		Boolean isDeleted  = true;
		
		OperatorModel deletedOperator = new OperatorModel(id, isDeleted);
		
		operatorDAO.deletedOperator(deletedOperator);
		response.sendRedirect("listOperator");
		
	}

	private void insertOperator(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {

		String operator_firstname = req.getParameter("operator_firstname");
		String operator_lastname = req.getParameter("operator_lastname");
		String operator_username = req.getParameter("operator_username");
		String operator_password = req.getParameter("operator_password");

		OperatorModel operatorModel = new OperatorModel(operator_firstname, operator_lastname, operator_username, operator_password);
		operatorDAO.insertOperator(operatorModel);
		resp.sendRedirect("listOperator");

	}

	private void showFormOperator(HttpServletRequest req, HttpServletResponse resp)
			throws SQLException, IOException, ServletException {
		System.out.print("form");
		RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/operator/operator-form.jsp");
		dispatcher.forward(req, resp);
	}

	private void showEditFormOperator(HttpServletRequest req, HttpServletResponse resp)
			throws SQLException, IOException, ServletException {
		int operatorId = Integer.parseInt(req.getParameter("id"));

		OperatorModel existingTodoOperator = operatorDAO.selectOperator(operatorId);
		RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/operator/operator-form.jsp");
		req.setAttribute("operator", existingTodoOperator);
		dispatcher.forward(req, resp);
	}

}
