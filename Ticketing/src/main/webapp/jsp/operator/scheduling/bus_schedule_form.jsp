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

</head>
<body>
<c:if test='${sessionScope.account_type == "admin"}'>
	<jsp:include page="../../sidebar.jsp"></jsp:include>
</c:if>
<c:if test='${sessionScope.account_type == "operator"}'>
	<jsp:include page="../../sidebar_passenger.jsp"></jsp:include>
</c:if>
	<div class="container d-flex justify-content-center mt-5">
		<div class="card" style="margin: auto; width: 500; border: 3px solid #1C285C; padding: 10px;">
			<div class="card-body">
				<input type="hidden" name="id"
					value="<c:out value='${travelSchedule.travelId}' />" />
				<div class="card-body">
					<form action="insertTravelSchedule" method="post">

						<div class="form-group">
							Add Travel Schedule
							<hr>
							<label for="exampleFormControlSelect1">Schedule</label> <select
								class="form-control" id="exampleFormControlSelect1"
								name="travelSchedule">
								<c:forEach var="travelSchedule" items="${travelScheduleList}">
									<option value="${travelSchedule.schedule_id}">${travelSchedule.travel_schedule}</option>
								</c:forEach>
							</select> <label for="exampleFormControlSelect1">Bus</label> <select
								class="form-control" id="exampleFormControlSelect1"
								name="travelBus">
								<c:forEach var="travelBus" items="${travelBusList}">
									<option value="${travelBus.busId}">${travelBus.bus}</option>
								</c:forEach>
							</select> <label for="exampleFormControlSelect1">Driver</label> <select
								class="form-control" id="exampleFormControlSelect1"
								name="travelDriver">
								<c:forEach var="travelDriver" items="${travelDriverList}">
									<option value="${travelDriver.busPersonnel_id}">${travelDriver.personnel}
									</option>
								</c:forEach>
							</select> <label for="exampleFormControlSelect1">Conductor</label> <select
								class="form-control" id="exampleFormControlSelect1"
								name="travelBus">
								<c:forEach var="travelConductor" items="${travelConductorList}">
									<option value="${travelConductor.busPersonnel_id}">${travelConductor.personnel}</option>
								</c:forEach>

							</select> <input type="hidden" name="isDeleted" value="false">
						</div>
						<button type="submit" class="btn btn-success">Save</button>
					</form>
				</div>


			</div>
		</div>
	</div>
</html>