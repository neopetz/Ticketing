package org.ph.iwanttranseat.java.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.ph.iwanttranseat.java.dao.TransactionDAO;
import org.ph.iwanttranseat.java.model.TransactionModel;

@WebServlet(urlPatterns = { "/listTransaction" })
public class TransactionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	TransactionDAO transactionDAO;

	public void init() {
		transactionDAO = new TransactionDAO();
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
		case "/listTransaction":
			listTransaction(request, response);
			break;
		default:
//				RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/login.jsp");
//				dispatcher.forward(request, request);
			break;
		}

	}

	private void listTransaction(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<TransactionModel> transactionList = transactionDAO.selectAllTransaction();
		request.setAttribute("transactionList", transactionList);
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/admin/transaction.jsp");
		dispatcher.forward(request, response);
	}
}
