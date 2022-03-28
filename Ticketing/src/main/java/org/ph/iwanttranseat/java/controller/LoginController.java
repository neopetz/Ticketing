package org.ph.iwanttranseat.java.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.ph.iwanttranseat.java.API.HashMD5;
import org.ph.iwanttranseat.java.dao.LoginDAO;
import org.ph.iwanttranseat.java.model.LoginBean;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private LoginDAO loginDao;
	private HashMD5 hashMD5;

	public void init() {
		loginDao = new LoginDAO();
		hashMD5 = new HashMD5();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("jsp/login.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		authenticate(request, response);
	}

	private void authenticate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		String email = request.getParameter("email");
		String password = hashMD5.getMd5(request.getParameter("password"));

		LoginBean loginBean = new LoginBean();
		loginBean.setEmail(email);
		loginBean.setPassword(password);

		try {
			if (loginDao.validate(loginBean)) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/passenger/index_passenger.jsp");
				HttpSession session = request.getSession();
				session.setAttribute("email", email);
				dispatcher.forward(request, response);
			} else {
				request.setAttribute("NOTIFICATION", "Invalid Username or Password");
				RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/login.jsp");
				dispatcher.forward(request, response);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

	}

}
