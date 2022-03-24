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

import org.ph.iwanttranseat.java.dao.ScheduleDAO;
import org.ph.iwanttranseat.java.model.ScheduleModel;


@WebServlet(urlPatterns = { "/newSchedule", "/insertSchedule", "/listSchedule", "/deleteSchedule", "/editSchedule",
		"/updateSchedule" })
public class ScheduleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ScheduleDAO scheduleDAO;

	public ScheduleController() {
		super();

	}

	public void init() {
		scheduleDAO = new ScheduleDAO();

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

			case "/newSchedule":
				System.out.print("soon");
				showFormSchedule(request, response);
				break;
			case "/insertSchedule":
				System.out.print("insert");
				insertSchedule(request, response);
				break;
			case "/deleteSchedule":
				deleteSchedule(request, response);
				break;
			case "/editSchedule":
				showEditFormSchedule(request, response);
				break;
			case "/updateSchedule":
				System.out.print("update");
				updateSchedule(request, response);
				break;
			case "/listSchedule":
				listSchedule(request, response);
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

	private void updateSchedule(HttpServletRequest req, HttpServletResponse resp)
			throws SQLException, IOException, ServletException {
		System.out.print("\n\nupdate sched");

		int id = Integer.parseInt(req.getParameter("id"));

		String travel_from = req.getParameter("travel_from");
		String travel_to = req.getParameter("travel_to");
		LocalDate travel_date = LocalDate.parse(req.getParameter("travel_date"));
		LocalTime departure = LocalTime.parse(req.getParameter("departure"));
		LocalTime arrival = LocalTime.parse(req.getParameter("arrival"));
		int fare = Integer.parseInt(req.getParameter("fare"));
		System.out.print("\n\n" + travel_date);
		ScheduleModel updateschedule = new ScheduleModel(id, travel_from, travel_to, travel_date, departure, arrival,fare);

		System.out.print(updateschedule);
		scheduleDAO.updateSchedule(updateschedule);
		resp.sendRedirect("listSchedule");

	}

	private void listSchedule(HttpServletRequest req, HttpServletResponse resp)
			throws SQLException, IOException, ServletException {
		List<ScheduleModel> listSchedule = scheduleDAO.selectAllSchedule();
		req.setAttribute("listschedule", listSchedule);
		RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/operator/schedule-list.jsp");
		dispatcher.forward(req, resp);

	}
	
	private void deleteSchedule(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
		int id = Integer.parseInt(request.getParameter("id"));
		Boolean isDeleted  = true;
		
		ScheduleModel deletedSchedule = new ScheduleModel(id, isDeleted);
		
		scheduleDAO.deletedSchedule(deletedSchedule);
		response.sendRedirect("listSchedule");
		
	}

	private void insertSchedule(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {

		String travel_from = req.getParameter("travel_from");
		String travel_to = req.getParameter("travel_to");
		LocalDate travel_date = LocalDate.parse(req.getParameter("travel_date"));
		LocalTime departure = LocalTime.parse(req.getParameter("departure"));
		LocalTime arrival = LocalTime.parse(req.getParameter("arrival"));
		int fare = Integer.parseInt(req.getParameter("fare"));

		ScheduleModel scheduleModel = new ScheduleModel(travel_from, travel_to, travel_date, departure, arrival, fare);
		scheduleDAO.insertSchedule(scheduleModel);
		resp.sendRedirect("listSchedule");

	}

	private void showFormSchedule(HttpServletRequest req, HttpServletResponse resp)
			throws SQLException, IOException, ServletException {
		System.out.print("form");
		RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/operator/schedule-form.jsp");
		dispatcher.forward(req, resp);
	}

	private void showEditFormSchedule(HttpServletRequest req, HttpServletResponse resp)
			throws SQLException, IOException, ServletException {
		int scheduleId = Integer.parseInt(req.getParameter("id"));

		ScheduleModel existingTodoSchedule = scheduleDAO.selectSchedule(scheduleId);
		RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/operator/schedule-form.jsp");
		req.setAttribute("schedule", existingTodoSchedule);
		dispatcher.forward(req, resp);
	}

}
