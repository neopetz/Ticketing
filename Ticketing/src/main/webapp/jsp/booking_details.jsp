<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="navbar.jsp"></jsp:include>
<div
	class="container d-flex justify-content-center align-items-center">
	<div class="card vw-100">
		<div
			style="background-color: #637ce6; background-image: linear-gradient(10deg, #637ce6 0%, #1c285c 100%);"
			class="card-header text-white">Booking</div>
		<div class="card-body">
			<form action="" method="">
				<div class="form-row d-flex justify-content-center">
					<div class="form-group col-md-4">
						<label class="my-1 mr-2" for="inlineFormCustomSelectPref">Start
							point</label> <select class="custom-select my-1 mr-sm-2"
							id="inlineFormCustomSelectPref" required>
							<option disabled selected value>Choose...</option>
							<option value="1">One</option>
							<option value="2">Two</option>
							<option value="3">Three</option>
						</select>
					</div>
					<div
						class="col-md-2 d-flex align-items-center justify-content-center">
						<span class="material-icons"> east </span>
					</div>
					<div class="form-group col-md-4">
						<label class="my-1 mr-2" for="inlineFormCustomSelectPref">End
							point</label> <select class="custom-select my-1 mr-sm-2"
							id="inlineFormCustomSelectPref" required>
							<option disabled selected value>Choose...</option>
							<option value="1">One</option>
							<option value="2">Two</option>
							<option value="3">Three</option>
						</select>
					</div>

					<div class="form-group col-md-4">
						<label for="departure_date">Departure Date</label> <input
							type="date" class="form-control ml-2" id="departure_date"
							required />
					</div>

					<div class="col-md-2"></div>

					<div class="form-group col-md-4">
						<label for="passengers">Passenger</label> <input type="number"
							class="form-control ml-2" id="passengers" min="1" max="20"
							required />
					</div>
				</div>

				<div class="d-flex justify-content-center">
					<button type="submit" class="btn btn-primary">Search</button>
				</div>
			</form>
		</div>
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>

<script>
	var today = new Date();
	var dd = today.getDate() + 2;
	var mm = today.getMonth() + 1; //January is 0!
	var yyyy = today.getFullYear();

	if (dd < 10) {
		dd = "0" + dd;
	}

	if (mm < 10) {
		mm = "0" + mm;
	}

	today = yyyy + "-" + mm + "-" + dd;
	document.getElementById("departure_date").setAttribute("min", today);
</script>