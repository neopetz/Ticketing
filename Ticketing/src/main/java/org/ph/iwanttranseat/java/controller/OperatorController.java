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
import javax.servlet.http.HttpSession;

import org.ph.iwanttranseat.java.API.HashMD5;
import org.ph.iwanttranseat.java.dao.OperatorDAO;
import org.ph.iwanttranseat.java.model.OperatorModel;
import org.ph.iwanttranseat.java.model.PassengerModel;

@WebServlet(urlPatterns = { "/newOperator", "/insertOperator", "/listOperator", 
		"/deleteOperator", "/editOperator", "/updateOperator", "/showChangePasswordOperator", "/changePasswordOperator", "/logoutOperator" })
public class OperatorController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	OperatorDAO operatorDAO;
	HashMD5 hashMD5;

	public OperatorController() {
		super();

	}

	public void init() {
		operatorDAO = new OperatorDAO();
		hashMD5 = new HashMD5();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
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
			case "/showChangePasswordOperator":
				showChangePasswordOperator(request, response);
				break;
			case "/changePasswordOperator":
				changePasswordOperator(request, response);
				break;
			case "/logoutOperator":
				System.out.println("Logout Operator");
				logoutOperator(request, response);
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
		String operator_password = hashMD5.getMd5(req.getParameter("operator_password"));

		OperatorModel updateoperator = new OperatorModel(id, operator_firstname, operator_lastname, operator_username,
				operator_password);

		System.out.print(updateoperator);
		operatorDAO.updateOperator(updateoperator);
		resp.sendRedirect("listOperator");

	}

	private void listOperator(HttpServletRequest req, HttpServletResponse resp)
			throws SQLException, IOException, ServletException {
		List<OperatorModel> listOperator = operatorDAO.selectAllOperator();
		req.setAttribute("listOperator", listOperator);
		RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/admin/operator-list.jsp");
		dispatcher.forward(req, resp);

	}

	private void deleteOperator(HttpServletRequest request, HttpServletResponse response)
			throws IOException, SQLException {
		int id = Integer.parseInt(request.getParameter("id"));
		Boolean isDeleted = true;

		OperatorModel deletedOperator = new OperatorModel(id, isDeleted);

		operatorDAO.deletedOperator(deletedOperator);
		response.sendRedirect("listOperator");

	}

	private void insertOperator(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {

		String operator_firstname = req.getParameter("operator_firstname");
		String operator_lastname = req.getParameter("operator_lastname");
		String operator_username = req.getParameter("operator_username");
		String operator_password = hashMD5.getMd5(req.getParameter("operator_password"));

		OperatorModel operatorModel = new OperatorModel(operator_firstname, operator_lastname, operator_username,
				operator_password);
		operatorDAO.insertOperator(operatorModel);
		resp.sendRedirect("listOperator");

	}

	private void showFormOperator(HttpServletRequest req, HttpServletResponse resp)
			throws SQLException, IOException, ServletException {
		System.out.print("form");
		RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/admin/operator-form.jsp");
		dispatcher.forward(req, resp);
	}

	private void showEditFormOperator(HttpServletRequest req, HttpServletResponse resp)
			throws SQLException, IOException, ServletException {
		int operatorId = Integer.parseInt(req.getParameter("id"));

		OperatorModel existingTodoOperator = operatorDAO.selectOperator(operatorId);
		RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/admin/operator-form.jsp");
		req.setAttribute("operator", existingTodoOperator);
		dispatcher.forward(req, resp);
	}

	private void logoutOperator(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		HttpSession session = request.getSession();
		session.invalidate();
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/index.jsp");
		dispatcher.forward(request, response);
		return;
	}
	
	private void showChangePasswordOperator(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/operator/change_password_operator.jsp");
		dispatcher.forward(request, response);
	}
	
	private void changePasswordOperator(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		System.out.println("\n\nchange password");

		String username = request.getParameter("username");

		String old_password = hashMD5.getMd5(request.getParameter("old_password"));
		String new_password = hashMD5.getMd5(request.getParameter("new_password"));

		if (operatorDAO.validateOldPassword(username, old_password)) {
			System.out.println("true");
			OperatorModel updateOperator = new OperatorModel(username, new_password);
			System.out.print(updateOperator);
			operatorDAO.changePassword(updateOperator);
			request.setAttribute("NOTIFICATION", "Password Changed!");
			request.setAttribute("passwordChanged", "true");
			RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/operator/change_password_operator.jsp");
			dispatcher.forward(request, response);
		} else {
			
			System.out.println("false");
			request.setAttribute("NOTIFICATION", "Invalid old password!");
			RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/operator/change_password_operator.jsp");
			dispatcher.forward(request, response);
		}
	}

}
