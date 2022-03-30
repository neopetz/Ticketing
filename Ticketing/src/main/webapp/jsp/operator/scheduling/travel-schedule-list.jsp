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
	<div class="row">

		<div class="container">
			<h3 class="text-center">List of Travel Schedules</h3>
			<hr>
			<div class="container text-left"></div>
			<br>
			<a href="<%=request.getContextPath()%>/createTravelSchedule"
				class="btn btn-success my-5">Add Travel Schedule</a>
			<table class="table table-bordered" id="myTable">
				<thead>
					<tr>
						<th>Schedule</th>
						<th>Bus Details</th>
						<th>Driver</th>
						<th>Conductor</th>
						<th>Fare</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="listOfTravelSchedule" items="${listOfTravelSchedule}">

						<tr>
							<td><c:out value="${listOfTravelSchedule.travel_schedule}" /></td>
							<td><c:out value="${listOfTravelSchedule.travel_bus}" /></td>
							<td><c:out value="${listOfTravelSchedule.driver}" /></td>
							<td><c:out value="${listOfTravelSchedule.conductor}" /></td>
							<td><c:out value="${listOfTravelSchedule.fare}" /></td>
							<td><a
								href="editTravelSchedule?travelId=<c:out value='${listOfTravelSchedule.travelId}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="deleteTravelSchedule?travelId=<c:out value='${listOfTravelSchedule.travelId}' />">Delete</a></td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
			
		</div>
	</div>

</body>
</html>