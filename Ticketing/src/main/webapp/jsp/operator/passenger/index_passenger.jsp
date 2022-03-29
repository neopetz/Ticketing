<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<jsp:include page="../header.jsp"></jsp:include>
	<jsp:include page="navbar_passenger.jsp"></jsp:include>

	<div class="container my-3">
		<form action="">
			<div class="input-group mx-auto w-auto">
				<div class="input-group-prepend">
					<label class="input-group-text" for="travel_date">Date</label>
				</div>
				<select class="custom-select" id="travel_date" name="travel_date"
					aria-label="Example select with button addon">
					<option selected>3/23/2022</option>
					<option>3/24/2022</option>
					<option>3/25/2022</option>
					<option>3/26/2022</option>
				</select>
				<div class="input-group-append">
					<button class="btn btn-primary" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
				</div>
			</div>
		</form>
	</div>

	<div class="container-fluid my-3">
		<table id="bus-schedule-table" class="table table-hover display responsive nowrap" style="width:100%">
			<thead style="background-color: #637CE6;" class="text-white">
				<tr class="text-center text-lg-left">
					<th scope="col">
						<span>Bus</span>
						<i class="fa-solid fa-bus"></i>
					</th>
					<th scope="col">
						<span>Driver</span>
						<i class="fa-solid fa-user-tie"></i>
					</th>
					<th scope="col">
						<span>Conductor</span>
						<i class="fa-solid fa-user-ninja"></i>
					</th>
					<th scope="col">
						<span>From</span>
						<i class="fa-solid fa-location-pin"></i>
					</th>
					<th scope="col">
						<span>To</span>
						<i class="fa-solid fa-location-dot"></i>
					</th>
					<th scope="col">
						<span>Departure</span>
						<i class="fa-solid fa-clock"></i>
					</th>
					<th scope="col">
						<span>Arrival</span>
						<i class="fa-solid fa-clock"></i>
					</th>
					<th scope="col">
						<span>Fare</span>
						<i class="fa-solid fa-peso-sign"></i>
					</th>
					<th scope="col"></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>bus 1</td>
					<td>sample driver</td>
					<td>sample conductor</td>
					<td>philippines</td>
					<td>japan</td>
					<td>12:00 AM</td>
					<td>12:00 PM</td>
					<td>1000</td>
					<td><button class="btn btn-primary">Book <i class="fa-solid fa-ticket"></i></button></td>
				</tr>
				<tr>
					<td>bus 1</td>
					<td>driver 1</td>
					<td>conductor</td>
					<td>philippines</td>
					<td>japan</td>
					<td>12:00 AM</td>
					<td>12:00 PM</td>
					<td>1000</td>
					<td><button class="btn btn-primary">Book <i class="fa-solid fa-ticket"></i></button></td>
				</tr>
				<tr>
					<td>bus 1</td>
					<td>driver 1</td>
					<td>conductor</td>
					<td>philippines</td>
					<td>japan</td>
					<td>12:00 AM</td>
					<td>12:00 PM</td>
					<td>1000</td>
					<td><button class="btn btn-primary">Book <i class="fa-solid fa-ticket"></i></button></td>
				</tr>
				<tr>
					<td>bus 1</td>
					<td>driver 1</td>
					<td>conductor</td>
					<td>philippines</td>
					<td>japan</td>
					<td>12:00 AM</td>
					<td>12:00 PM</td>
					<td>1000</td>
					<td><button class="btn btn-primary">Book <i class="fa-solid fa-ticket"></i></button></td>
				</tr>
				<tr>
					<td>bus 1</td>
					<td>driver 1</td>
					<td>conductor</td>
					<td>philippines</td>
					<td>japan</td>
					<td>12:00 AM</td>
					<td>12:00 PM</td>
					<td>1000</td>
					<td><button class="btn btn-primary">Book <i class="fa-solid fa-ticket"></i></button></td>
				</tr>
				<tr>
					<td>bus 1</td>
					<td>driver 1</td>
					<td>conductor</td>
					<td>philippines</td>
					<td>japan</td>
					<td>12:00 AM</td>
					<td>12:00 PM</td>
					<td>1000</td>
					<td><button class="btn btn-primary">Book <i class="fa-solid fa-ticket"></i></button></td>
				</tr>
				<tr>
					<td>bus 1</td>
					<td>driver 1</td>
					<td>conductor</td>
					<td>philippines</td>
					<td>japan</td>
					<td>12:00 AM</td>
					<td>12:00 PM</td>
					<td>1000</td>
					<td><button class="btn btn-primary">Book <i class="fa-solid fa-ticket"></i></button></td>
				</tr>
				<tr>
					<td>bus 1</td>
					<td>driver 1</td>
					<td>conductor</td>
					<td>philippines</td>
					<td>japan</td>
					<td>12:00 AM</td>
					<td>12:00 PM</td>
					<td>1000</td>
					<td><button class="btn btn-primary">Book <i class="fa-solid fa-ticket"></i></button></td>
				</tr>
			</tbody>
		</table>
	</div>

	<jsp:include page="../footer.jsp"></jsp:include>
	<jsp:include page="profile_with_edit_passenger.jsp"></jsp:include>
	<jsp:include page="change_password.jsp"></jsp:include>
	
	<script src="${pageContext.request.contextPath}/js/profile.js"></script>
	<!-- Datatable JS -->
	<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.11.5/r-2.2.9/datatables.min.js"></script>

	<script src="${pageContext.request.contextPath}/js/index_passenger.js"></script>