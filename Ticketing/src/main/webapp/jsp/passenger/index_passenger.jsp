<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<jsp:include page="../header.jsp"></jsp:include>
	<jsp:include page="navbar_passenger.jsp"></jsp:include>

	<div class="container mt-3">
		<div class="form-group">
			<label for="exampleFormControlSelect1">Travel Date</label>
			<select class="form-control" id="exampleFormControlSelect1">
				<option>3/22/2022</option>
				<option>3/23/2022</option>
				<option>3/24/2022</option>
			</select>
		</div>

		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Bus</th>
					<th scope="col">Driver</th>
					<th scope="col">Conductor</th>
					<th scope="col">Travel From</th>
					<th scope="col">Travel To</th>
					<th scope="col">Departure Time</th>
					<th scope="col">Arrival Time</th>
					<th scope="col">Action</th>

				</tr>
			</thead>
			<tbody>
				<tr>
					<td>bus 1</td>
					<td>driver 1</td>
					<td>conductor</td>
					<td>philippines</td>
					<td>japan</td>
					<td>12:00 AM</td>
					<td>12:00 PM</td>
					<td><button class="btn btn-primary">Book this</button></td>
				</tr>
				<tr>
					<td>bus 1</td>
					<td>driver 1</td>
					<td>conductor</td>
					<td>philippines</td>
					<td>japan</td>
					<td>12:00 AM</td>
					<td>12:00 PM</td>
					<td><button class="btn btn-primary">Book this</button></td>
				</tr>
				<tr>
					<td>bus 1</td>
					<td>driver 1</td>
					<td>conductor</td>
					<td>philippines</td>
					<td>japan</td>
					<td>12:00 AM</td>
					<td>12:00 PM</td>
					<td><button class="btn btn-primary">Book this</button></td>
				</tr>
			</tbody>
		</table>
	</div>

	<jsp:include page="../footer.jsp"></jsp:include>
	<jsp:include page="profile_with_edit_passenger.jsp"></jsp:include>
	<jsp:include page="change_password.jsp"></jsp:include>
	<script src="../../js/profile.js"></script>