package org.ph.iwanttranseat.java.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.ph.iwanttranseat.java.dao.LoginDAO;
import org.ph.iwanttranseat.java.model.LoginBean;



@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	
    private static final long serialVersionUID = 1L;
    private LoginDAO loginDao;

    public void init() {
        loginDao = new LoginDAO();
    }



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("jsp/login.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		authenticate(request, response);
	}
	
    private void authenticate(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
       
    	String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        LoginBean loginBean = new LoginBean();
        loginBean.setEmail(email);
        loginBean.setPassword(password);

        try {
            if (loginDao.validate(loginBean)) {
                RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/index.jsp");
                dispatcher.forward(request, response);
            } else {
                HttpSession session = request.getSession();
                session.setAttribute("email", email);
                response.sendRedirect("jsp/login.jsp");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

    }

}
