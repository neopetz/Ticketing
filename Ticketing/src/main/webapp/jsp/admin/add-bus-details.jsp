<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	  integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<title>IWantTranseatPH</title>
</head>
<body>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<form action="<%= request.getContextPath() %>/insertBusDetails" method="post">
					<br>
					<input type="text" class="form-control" name="bus_name" minlength="5" placeholder="Bus Name" required>
					<br>
					<select class="form-control" name="bus_type" required>
							<option value="">Select Bus Type</option>
							<option value="Regular Air-Conditioned">Regular Air-Conditioned</option>
							<option value="First Class">First Class</option>
					</select>
					<br>
					<input type="text" class="form-control" name="bus_seats" pattern="\d*" minlength="2" maxlength="2" placeholder="Bus Seats" required>
					<br>
					<input type="text" class="form-control" name="bus_number" pattern="\d*" minlength="2" maxlength="6" placeholder="Bus Number" required>
					<br>
					<input type="text" class="form-control" name="plate_number" minlength="7" maxlength="7" placeholder="Plate Number" required>
					<br>
					<input type="hidden" class="form-control" value="false" name="is_deleted">
					<br>
				<button type="submit" class="btn btn-success">Submit</button>
			</form>
			</div>
		</div>
	</div>
</body>
</html>