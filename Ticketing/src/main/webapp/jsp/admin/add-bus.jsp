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

<c:if test='${sessionScope.account_type == "admin"}'>
	<jsp:include page="../sidebar.jsp"></jsp:include>
</c:if>
<c:if test='${sessionScope.account_type == "operator"}'>
	<jsp:include page="../sidebar_passenger.jsp"></jsp:include>
</c:if>



<body>
	<br><br>
	<div class="col-md-3"></div>
	<div class="container col-md-" style="margin: auto; width: 500; border: 3px solid #1C285C; padding: 10px;">	
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
					<input type="hidden" name="id" value="<c:out value='${busDetails.busId}' />" />
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
							<c:if test="${busDetails != null}">
								<c:if test="${busDetails.busType == 'Regular Air-Conditioned' }">
									<option selected value="Regular Air-Conditioned">Regular Air-Conditioned</option>
									<option value="First Class">First Class</option>
								</c:if>
								<c:if test="${busDetails.busType == 'First Class' }">
									<option value="Regular Air-Conditioned">Regular Air-Conditioned</option>
									<option selected value="First Class">First Class</option>
								</c:if>
							</c:if>
							<c:if test="${busDetails == null}">
								<option value=" " selected disabled>Select Bus Type</option>
								<option value="Regular Air-Conditioned">Regular Air-Conditioned</option>
								<option value="First Class">First Class</option>
							</c:if>
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
				<button type="back" class="btn btn-danger"><a href="<%=request.getContextPath()%>/busList" style="color:white;"><i class="fa-solid fa-arrow-left"></i> BACK</a></button>
				<button type="submit" class="btn btn-success">SAVE</button>
				</form>
			</div>
		</div>
	</div>
		<div class="col-md-3"></div>
</body>
</html>