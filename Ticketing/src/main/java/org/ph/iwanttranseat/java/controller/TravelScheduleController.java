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

import org.ph.iwanttranseat.java.dao.BusDAO;
import org.ph.iwanttranseat.java.dao.BusPersonnelDao;
import org.ph.iwanttranseat.java.dao.ScheduleDAO;
import org.ph.iwanttranseat.java.dao.TravelScheduleDAO;
import org.ph.iwanttranseat.java.model.BusModel;
import org.ph.iwanttranseat.java.model.ConductorModel;
import org.ph.iwanttranseat.java.model.DriverModel;
import org.ph.iwanttranseat.java.model.ScheduleModel;
import org.ph.iwanttranseat.java.model.TravelScheduleModel;

@WebServlet(urlPatterns = { "/createTravelSchedule", "/insertTravelSchedule", "/listOfTravelSchedules",
		"/editTravelSchedule", "/updateTravelSchedule", "/deleteTravelSchedule" })
public class TravelScheduleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	TravelScheduleDAO travelScheduleDao;

	public void init() {
		travelScheduleDao = new TravelScheduleDAO();
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
		case "/createTravelSchedule":
			createTravelSchedule(request, response);
			break;
		case "/insertTravelSchedule":
			insertTravelSchedule(request, response);
			break;
		case "/listOfTravelSchedules":
			listOfTravelSchedules(request, response);
			break;
		case "/editTravelSchedule":
			showEditForm(request, response);
			break;
		case "/updateTravelSchedule":
			try {
				updateTravelSchedule(request, response);
			} catch (IOException | SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			break;
		case "/deleteTravelSchedule":
			try {
				deleteTravelSchedule(request, response);
			} catch (IOException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
			break;

		default:
//				RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/login.jsp");
//				dispatcher.forward(request, request);
			break;
		}

	}



	private void listOfTravelSchedules(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<TravelScheduleModel> listOfTravelSchedule = travelScheduleDao.selectAllTravelSchedules();
		request.setAttribute("listOfTravelSchedule", listOfTravelSchedule);
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/operator/scheduling/travel-schedule-list.jsp");
		dispatcher.forward(request, response);
	}

	private void createTravelSchedule(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		chooseTravelSchedule(request, response);
		chooseTravelBus(request, response);
		chooseTravelDriver(request, response);
		chooseTravelConductor(request, response);

		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/operator/scheduling/bus_schedule_form.jsp");
		dispatcher.forward(request, response);
	}

	private void chooseTravelSchedule(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<ScheduleModel> travelScheduleList = ScheduleDAO.selectSchedule();
		request.setAttribute("travelScheduleList", travelScheduleList);
	}

	private void chooseTravelBus(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<BusModel> travelBusList = BusDAO.selectTravelBus();
		request.setAttribute("travelBusList", travelBusList);
	}

	private void chooseTravelDriver(HttpServletRequest request, HttpServletResponse response) {
		List<DriverModel> travelDriverList = BusPersonnelDao.selectTravelDriver();
		request.setAttribute("travelDriverList", travelDriverList);
	}

	private void chooseTravelConductor(HttpServletRequest request, HttpServletResponse response) {
		List<ConductorModel> travelConductorList = BusPersonnelDao.selectTravelConductor();
		request.setAttribute("travelConductorList", travelConductorList);

	}

	private void insertTravelSchedule(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int schedule_id = Integer.parseInt(request.getParameter("travelSchedule"));
		int bus_id = Integer.parseInt(request.getParameter("travelBus"));
		int driver_id = Integer.parseInt(request.getParameter("travelDriver"));
		int conductor_id = Integer.parseInt(request.getParameter("travelBus"));
		boolean is_deleted = Boolean.parseBoolean(request.getParameter("isDeleted"));

		TravelScheduleModel travelScheduleModel = new TravelScheduleModel(schedule_id, bus_id, driver_id, conductor_id,
				is_deleted);
		travelScheduleDao.insertTravelSchedule(travelScheduleModel);
		response.sendRedirect("listOfTravelSchedules");
	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int travelId = Integer.parseInt(request.getParameter("travelId"));
		TravelScheduleModel travelSchedule = travelScheduleDao.selectTravelScheduleById(travelId);
		
		chooseTravelSchedule(request, response);
		chooseTravelBus(request, response);
		chooseTravelDriver(request, response);
		chooseTravelConductor(request, response);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/operator/scheduling/edit_travel_schedule.jsp");
		request.setAttribute("travelSchedule", travelSchedule);
		dispatcher.forward(request, response);
	}
	
	
	private void deleteTravelSchedule(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
		int id = Integer.parseInt(request.getParameter("travelId"));
		Boolean isDeleted = true;

		TravelScheduleModel deletedTravelSchedule = new TravelScheduleModel(id, isDeleted);

		travelScheduleDao.deleteTravelSchedule(deletedTravelSchedule);
		response.sendRedirect("listOfTravelSchedules");
		
	}
	

	private void updateTravelSchedule(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
	
		int travelId = Integer.parseInt(request.getParameter("travelId"));
		int schedule_id = Integer.parseInt(request.getParameter("travelSchedule2"));
		int bus_id = Integer.parseInt(request.getParameter("travelBus2"));
		int driver_id = Integer.parseInt(request.getParameter("travelDriver2"));
		int conductor_id = Integer.parseInt(request.getParameter("travelBus2"));
		TravelScheduleModel updatedTravelSchedule = new TravelScheduleModel(travelId, schedule_id, bus_id, driver_id, conductor_id);

		travelScheduleDao.updateTravelSchedule(updatedTravelSchedule);
		response.sendRedirect("listOfTravelSchedules");
	}	


}
