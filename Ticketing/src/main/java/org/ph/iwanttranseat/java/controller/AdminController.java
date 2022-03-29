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
import org.ph.iwanttranseat.java.dao.AdminDAO;
import org.ph.iwanttranseat.java.model.AdminModel;

@WebServlet("/AdminController")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AdminDAO adminDAO;
	private HashMD5 hashMD5;

    public void init() {
    	adminDAO = new AdminDAO();
    	hashMD5 = new HashMD5();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("jsp/admin/login_admin.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		authenticate(request, response);
	}
	
	private void authenticate(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		String username = request.getParameter("username");
		String password = hashMD5.getMd5(request.getParameter("password"));
		
		AdminModel adminModel = new AdminModel();
		adminModel.setUsername(username);
		adminModel.setPassword(password);
		
		try {
			if (adminDAO.validate(adminModel)) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/admin/index_admin.jsp");
				HttpSession session = request.getSession();
				session.setAttribute("username", username);
				dispatcher.forward(request, response);
			} else {
				request.setAttribute("NOTIFICATION", "Invalid Username or Password");
				RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/admin/login_admin.jsp");
				dispatcher.forward(request, response);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

}
