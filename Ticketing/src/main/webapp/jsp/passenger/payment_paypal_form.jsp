<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<script
			src="https://www.paypal.com/sdk/js?client-id=AcqOxKtEj1LRFdSV71H3WTWXcnrW9gqVsSg1P_K8o2qJScgwq4RMMaPhM6e-2w0tN8qSBUMo9kgCAKln&currency=PHP"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
	</head>

	<body>


		<div class="container-fluid">

			<div class="jumbotron text-center">
				<h3>Summary of Charges</h3>
			</div>

			<div class="container">
				<div class="row">
					<div class="col-sm-5">
						<h5>
							<label name="selectedSchedule">${selectedSchedule.travel_from}</label>
							to <label name="selectedSchedule">${selectedSchedule.travel_to}</label>
						</h5>
						Departure Schedule :<br> <label
							name="selectedSchedule">${selectedSchedule.travel_date}</label><br>
						<label name="selectedSchedule">ETD:
							${selectedSchedule.departure}</label><br> <label name="selectedSchedule">ETA:
							${selectedSchedule.arrival}</label><br>
						<br>
						<h5>
							Bus: <label name="bus">${selectedSchedule.bus_name}</label>
						</h5>
						<h5>
							Passenger Name: <label name="passenger">
								<%= session.getAttribute("fullname") %>
							</label>
						</h5>
						<br>
					</div>
					<div class="col-sm-5">
						<h5>Fare Amount</h5>
						Fare Amount :
						<p id="fare">P${selectedSchedule.fare}</p>
						Reservation Fee :
						<p>(50.00) x 1 Passenger = <span id="reservationFee">50.00</span></p>
					</div>
					<div class="col-sm-2">
						<h5>Total Amount</h5>
						<p id="price"></p>

					</div>
				</div>
			</div>

		</div>

		<form action="<%=request.getContextPath()%>/PaymentController" method="POST">
			<input id="transaction_code" type="hidden" name="transaction">
			<input id="payer" type="hidden" name='payer_name' value='<%=session.getAttribute("fullname") %>'>
			<input id="payer_email" type="hidden" name='payer_email' value='<%=session.getAttribute("email") %>'>
			<input id="status" type="hidden" name="status">
			<input type="hidden" name="bus_seat" value="${selectedSchedule.available_seats}">
			<input id="totalPrice" type="hidden" name="price" value="631.00">
			<input type="hidden" name="departure_location" value="${selectedSchedule.travel_from}">
			<input type="hidden" name="arrival_location" value="${selectedSchedule.travel_to}">
			<input type="hidden" name="departure_date" value='${selectedSchedule.travel_date}'>
			<input type="hidden" name="arrival_date" value='${selectedSchedule.travel_date}'>
			<input type="hidden" name="bus_class" value="${selectedSchedule.bus_type}">
			<input type="hidden" name="bus_number" value="${selectedSchedule.bus_name}">
			<input type="hidden" name="passenger_name" value='<%=session.getAttribute("fullname") %>'>
			<input type="hidden" name="driver" value="${selectedSchedule.driver}">

			<input type="hidden" name="travelId" value='${selectedSchedule.travelId}'>
			<input type="hidden" name="busId" value='${selectedSchedule.busId}'>
			<input type="hidden" name="user_id" value='<%= session.getAttribute("user_id") %>'>

			<div id="paypal-button-container" class="text-center"></div>
			<center>
				<h3 id="payment_status" style="display: none;">Payment Completed</h3>
				<button class="btn btn-primary" type="submit" id="receipt" style="display: none;">Proceed to
					Receipt</button>
			</center>
		</form>

	</body>
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
	<script type="text/javascript">
		let fare = $("#fare").text();
		let maxLength = fare.length;
		let fareSliced = fare.slice(1, maxLength);
		let passengers = 1;
		let reservationFee = 50 * passengers;
		let price = parseInt(fareSliced) + parseInt(reservationFee);
		$("#price").text("P" + price);
		$("#totalPrice").val(price);
		console.log("Price: " + price);
		var transaction_code = document.getElementById('transaction_code').innerHTML;
		var payment_button = document.getElementById('paypal-button-container');
		var receipt_btn = document.getElementById('receipt');
		var payment_status = document.getElementById('payment_status');

		paypal
			.Buttons(
				{
					createOrder: function (data, actions) {
						return actions.order.create({
							purchase_units: [{
								amount: {
									value: price
									//  currency_code: 'PHP'
								}
							}]
						})
					},
					onApprove: function (data, actions) {
						console.log('DATA : ' + data);
						console.log('ACTION : ' + actions);
						return actions.order
							.capture()
							.then(
								function (details) {
									console.log(details);
									document
										.getElementById("payer").value = details.payer.name.given_name
										+ " "
										+ details.payer.name.surname;
									document
										.getElementById("transaction_code").value = details.id;
									document
										.getElementById("payer_email").value = details.payer.email_address;
									document
										.getElementById("status").value = details.status;
									payment_button.style.display = "none";
									receipt_btn.style.display = "block";
									payment_status.style.display = "block";
								})
					}
				}).render('#paypal-button-container');
	</script>

	<script>
// function CheckEndDate() {

//     var now = new Date().toString();  // current date
//     var end_date = new Date("March 30, 2022 11:22:00").toString();

//     if (now === end_date) {
//         alert('the final date is reached !');
//         return;
//     }

//     // call this function again in 10ms
//     setTimeout(CheckEndDate, 10);
// }

// CheckEndDate();
	</script>

	</html>