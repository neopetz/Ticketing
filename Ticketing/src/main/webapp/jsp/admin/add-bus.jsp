<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>iWantTranseat</title>
	<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
		crossorigin="anonymous">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="https://www.google.com" class="navbar-brand"> iWantTranSeatPH</a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/busList"
					class="nav-link">BUS LIST</a></li>
			</ul>

			<ul class="navbar-nav navbar-collapse justify-content-end">
				<li>ADMIN</li>
				<li><a href="<%=request.getContextPath()%>/logout"
					class="nav-link">LOG OUT</a></li>
			</ul>
		</nav>
	</header>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${busDetails != null}">
					<form action="updateBusDetails" method="post">
				</c:if>
				<c:if test="${busDetails == null}">
					<form action="insertBusDetails" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${busDetails != null}">EDIT INFORMATION</c:if>
						<c:if test="${busDetails == null}">ADD BUS</c:if>
					</h2>
				</caption>

				<c:if test="${busDetails != null}">
					<input type="hidden" name="id" value="<c:out value='${busDetails.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<br>
						<input type="text" 
						value="<c:out value='${busDetails.busName}' />"
						class="form-control" name="bus_name" minlength="4" maxlength="20" 
						placeholder="Bus Name" required>
				</fieldset>

				<fieldset class="form-group">
					<br>
						<select class="form-control" name="bus_type" required>
							<option value=" " selected disabled hidden>Select Bus Type</option>
							<option value="Regular Air-Conditioned">Regular Air-Conditioned</option>
							<option value="First Class">First Class</option>
						</select>
				</fieldset>

				<fieldset class="form-group">
					<br>
						<input type="text" 
							value="<c:out value='${busDetails.busSeats}' />"
							class="form-control" name="bus_seats" pattern="\d*" 
							minlength="2" maxlength="2" placeholder="Bus Seats" required>
				</fieldset>
				
				<fieldset class="form-group">
					<br> 
						<input type="text" 
							value="<c:out value='${busDetails.busNumber}' />"
							class="form-control" name="bus_number" pattern="\d*" 
							minlength="6" maxlength="6" placeholder="Bus Number" required>
				</fieldset>
				
				<fieldset class="form-group">
					<br> 
						<input type="text" 
							value="<c:out value='${busDetails.plateNumber}' />"
							class="form-control" name="plate_number"
							minlength="8" maxlength="8" placeholder="Plate Number" required>
				</fieldset>
				
				<fieldset class="form-group">
						<input type="hidden" 
							value="<c:out value='${busDetails.dateCreated}' />"
							class="form-control" name="plate_number"
							minlength="8" maxlength="8" placeholder="Plate Number" required>
				</fieldset>

				<button type="submit" class="btn btn-success">SAVE</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>