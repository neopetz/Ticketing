<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<jsp:include page="../header.jsp"></jsp:include>
	<jsp:include page="../navbar.jsp"></jsp:include>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/register_passenger-style.css">

	<div class="container col-md-5 col-md-offset-3 mt-5" style="overflow: auto; margin-top: 5m;">
		<div class="divheader shadow rounded text-center">
			<h6 style="color: white; font-family: 'Century Gothic'">Passenger
				Registration</h6>
		</div>
		<div class="container shadow p-3 mb-5 bg-white rounded" style="padding: 30px">

			<form action="<%=request.getContextPath()%>/PassengerVerify" method="post">

				<input type="date" id="currentDate" hidden>

				<div class="input-group input-group " id="floatingInput" style="margin-bottom: 2em">
					<!-- Firstname Field -->
					<input type="text" pattern="[a-zA-Z][a-zA-Z ]{1,20}" placeholder="Firstname" name="firstname"
						class="input1 form-control" title="Input letters only" style="margin-right: 30px;"
						maxlength="20" required>
					<!-- Lastname Field -->
					<input type="text" pattern="[a-zA-Z][a-zA-Z ]{1,20}" title="Input letters only" placeholder="Lastname"
						name="lastname" class="input1 form-control" required maxlength="20">

				</div>

				<div class="input-group input-group" style="margin-bottom: 2em">
					<!-- Birthday Field -->
					<input type="date" id="birthday" name="birthday" onchange="ageCount()" class="input1 form-control"
						style="margin-right: 10px; width: 80px" required min="1900-01-01">
					<!-- Age Field -->
					<input type="text" id="age" name="age" placeholder="Age" class="input1 disabled"
						style="margin-right: 10px; width: 70px;" readonly>
					<!-- Contact Number Field -->
					<input type="tel" pattern="[0-9]{4}-[0-9]{3}-[0-9]{4}" placeholder="Contact Number"
						title="09XX-XXX-XXXX" name="contact" id="contact" class="input1 form-control" maxlength="13"
						onkeypress="addDash()">
				</div>

				<div class="input-group input-group " id="floatingInput" style="margin-bottom: 2em">
					<!-- Email Field -->
					<input type="email" placeholder="Email" name="email" class="input1 form-control"
						style="margin-right: 30px;" required maxlength="30">
					<!-- Password Field -->
					<input type="password" placeholder="Password" name="password" class="input1 form-control" required
						minlength="8" maxlength="20">
				</div>
				<div class="input-group input-group " id="floatingInput" style="margin-top: 3em">
					<!-- Submit Button -->
					<button type="submit" name="action" value="register"
						class="btn btn-primary btn-l btn2  btn-block">SUBMIT</button>
				</div>
			</form>
		</div>

	</div>
	<jsp:include page="/jsp/footer.jsp"></jsp:include>
	<script src="${pageContext.request.contextPath}/js/register_passenger.js"></script>