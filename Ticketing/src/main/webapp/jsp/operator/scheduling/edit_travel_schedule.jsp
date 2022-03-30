<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>

<body>

	<c:if test='${sessionScope.account_type == "admin"}'>
		<jsp:include page="../../sidebar.jsp"></jsp:include>
	</c:if>
	<c:if test='${sessionScope.account_type == "operator"}'>
		<jsp:include page="../../sidebar_passenger.jsp"></jsp:include>
	</c:if>
	<div class="container">
		<div class="row">
			<!-- Old Travel Schedule -->
			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<div class="card-body">
							<div class="form-group">
								Old Travel Schedule
								<hr>
								<label for="exampleFormControlSelect1">Schedule</label>
								<fieldset class="form-group">
									<input type="text"
										value="<c:out value='${travelSchedule.travel_schedule}' />"
										class="form-control" readonly>
								</fieldset>

								<label for="exampleFormControlSelect1">Bus</label>
								<fieldset class="form-group">
									<input type="text"
										value="<c:out value='${travelSchedule.travel_bus}' />"
										class="form-control" readonly>
								</fieldset>

								<label for="exampleFormControlSelect1">Driver</label>
								<fieldset class="form-group">
									<input type="text"
										value="<c:out value='${travelSchedule.driver}' />"
										class="form-control" readonly>
								</fieldset>

								<label for="exampleFormControlSelect1">Conductor</label>
								<fieldset class="form-group">
									<input type="text"
										value="<c:out value='${travelSchedule.conductor}' />"
										class="form-control" readonly>
								</fieldset>



								<input type="hidden" name="isDeleted" value="false">
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- New Travel Schedule -->
			<div class="col-md-6">
				<div class="card">
					<div class="card-body">

						<div class="card-body">
							<form action="updateTravelSchedule" method="post">

								<input type="hidden" name="travelId"
									value="<c:out value='${travelSchedule.travelId}' />" />
								<div class="form-group">
									Edit Travel Schedule
									<hr>

									<label for="exampleFormControlSelect1">Schedule</label> <select
										class="form-control" id="exampleFormControlSelect1"
										name="travelSchedule2">
										<c:forEach var="travelSchedule" items="${travelScheduleList}">
											<option value="${travelSchedule.schedule_id}">${travelSchedule.travel_schedule}</option>
										</c:forEach>
									</select> <label for="exampleFormControlSelect1">Bus</label> <select
										class="form-control" id="exampleFormControlSelect1"
										name="travelBus2">
										<c:forEach var="travelBus" items="${travelBusList}">
											<option value="${travelBus.busId}">${travelBus.bus}</option>
										</c:forEach>
									</select> <label for="exampleFormControlSelect1">Driver</label> <select
										class="form-control" id="exampleFormControlSelect1"
										name="travelDriver2">
										<c:forEach var="travelDriver" items="${travelDriverList}">
											<option value="${travelDriver.busPersonnel_id}">${travelDriver.personnel}
											</option>
										</c:forEach>
									</select> <label for="exampleFormControlSelect1">Conductor</label> <select
										class="form-control" id="exampleFormControlSelect1"
										name="travelBus2">
										<c:forEach var="travelConductor"
											items="${travelConductorList}">
											<option value="${travelConductor.busPersonnel_id}">${travelConductor.personnel}</option>
										</c:forEach>
									</select> <input type="hidden" name="isDeleted" value="false">
								</div>
								<div class="text-center">
									<button type="submit" class="btn btn-success">Save</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</html>