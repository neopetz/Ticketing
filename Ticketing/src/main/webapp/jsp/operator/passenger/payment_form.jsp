<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="/jsp/header.jsp"></jsp:include>
<jsp:include page="/jsp/navbar.jsp"></jsp:include>
<style>
.divheader {
	padding: 1em;
}

.input1 {
	font-family: 'Century Gothic';
	border: none;
	border-bottom: 1px solid lightgray;
	width: 50%;
	margin-right: 30p;
	font-size: 14px;
}

.btn2 {
	background-color: #637CE6;
	margin-top: 1em;
	font-size: 14px;
	font-family: 'Century Gothic';
	color: white;
}

.btn1 {
	background-color: #CC1111;
	margin-top: 1em;
	font-size: 15px;
	width: 18em;
	font-family: 'Century Gothic';
}

.font {
	font-family: 'Century Gothic';
}

h5 {
	font-family: 'Century Gothic';
	color: green;
	margin-bottom: 50px;
}

p {
	font-size: 12px;
	margin-left: 70px
}
/*
body{
 background-image: url('logo.png');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
  opcaity:50%;
}
*/
placeholder {
	font-size: 10px;
}
</style>
<body>

	<div class="container col-md-5 col-md-offset-3"
		style="overflow: auto; margin-top: 12em">

		<div class="container shadow p-3 mb-5 bg-white rounded">
			<h6 style="color: gray; font-family: 'Century Gothic';">QR and
				e-Wallets</h6>
			<div class="container">
				<div class="row">
					<div class="col-md-3 shadow  bg-white rounded"
						style="margin: 20px; padding: 3px;">
						<center>
							<img src="${pageContext.request.contextPath}/assets/paymaya logo.png" style="width: 100%;">
						</center>
					</div>
					<div class="col-md-3 shadow  bg-white rounded "
						style="margin: 20px; padding: 3px;">
						<center>
							<img src="${pageContext.request.contextPath}/assets/qr.png" style="width: 100%;">
						</center>
					</div>
					<div class="col-md-3 shadow g-white rounded"
						style="margin: 20px; padding: 3px;">
						<center>
							<img src="${pageContext.request.contextPath}/assets/gcash.png" style="width: 100%;">
						</center>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="col-md-12" style="margin-bottom: 30px; color: gray">
				<center>
					<h6>- Or pay using your debit / credit card or wallet -</h6>
					<center>
			</div>

		</div>

		<div class="container shadow p-3 mb-5 bg-white rounded"
			style="padding: 30px; font-family: 'Century Gothic'; font-size: 15px;">
			<label>Card Details</label>
			<form>
				<div class="form-row">
					<div class="col-md-6 mb-3">
						<label for="validationServer01">First name</label> <input
							type="text" class="form-control is-valid" id="validationServer01"
							value="Sam" required>
						<div class="valid-feedback">Looks good!</div>
					</div>
					<div class="col-md-6 mb-3">
						<label for="validationServer02">Last name</label> <input
							type="text" class="form-control is-valid" id="validationServer02"
							value="Smith" required>
						<div class="valid-feedback">Looks good!</div>
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-12 mb-3">
						<label for="validationServer03">Card Number</label> <input
							type="text" class="form-control is-invalid"
							id="validationServer03"
							aria-describedby="validationServer03Feedback" required>
						<div id="validationServer03Feedback" class="invalid-feedback">
							Please provide a valid Card number</div>
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-6 mb-3">
						<label for="validationServer01">Expiry Date</label> <input
							type="date" class="form-control is-invalid"
							id="validationServer01" value="Sam" required>
						<div id="validationServer03Feedback" class="invalid-feedback">
							Please provide a valid Card expiry date</div>
					</div>
					<div class="col-md-6 mb-3">
						<label for="validationServer02">CVV</label> <input type="text"
							class="form-control is-valid" id="validationServer02" value="123"
							required>
						<div class="valid-feedback">Looks good!</div>
					</div>
				</div>
				<div class="form-group">
					<div class="form-check">
						<input class="form-check-input is-invalid" type="checkbox"
							value="" id="invalidCheck3"
							aria-describedby="invalidCheck3Feedback" required> <label
							class="form-check-label" for="invalidCheck3"> Agree to
							terms and conditions </label>
						<div id="invalidCheck3Feedback" class="invalid-feedback">
							You must agree before submitting.</div>
					</div>
				</div>
				<button class="btn btn-dark" type="submit" disabled
					style="font-family: 'Century gothic'; font-size: 15px;">
					<b>Complete Payment</b>
				</button>
			</form>
		</div>
		<jsp:include page="/jsp/footer.jsp"></jsp:include>
</body>
</html>
