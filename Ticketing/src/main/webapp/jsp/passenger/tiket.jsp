<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

	<jsp:include page="/jsp/header.jsp"></jsp:include>

	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/carousel.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index-style.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/qrcodejs/1.0.0/qrcode.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/qrcodejs/1.0.0/qrcode.js"></script>

<style>
@media print{

		button{
		visibility:hidden;
		}
	footer{
	visibility:hidden;
	}

}
  </style>
  <body>

       <jsp:include page="/jsp/navbar.jsp"></jsp:include>
	<p id="transaction" style="display:none;">${transaction}</p>
		<div class="container  bg-white rounded" style="padding:30px;font-family:'Century Gothic';font-size:15px;">
		<center>
			<div class="col-md-6 shadow"  style="padding:20px;">
			<img class="img-fluid" src="${pageContext.request.contextPath}/assets/templatefinal.png" style="width:100%;"/>
			<form>
			<div class="form-row" >
				<div class="col-md-4 mb-3">
				  <label style="color:blue;"><b style="color:gray">Price :<b  style="font-family:'Century Gothic';color:#637CE6;font-size:20px;"><br>${price}</b></b></label>
				</div>
				<div class="col-md-4 mb-3" style="align-items:right">
					<div id="qrcode" ></div>
				</div>
				<div class="col-md-4 mb-3" style="text-align:right">
					<label style="font-family:'Century Gothic';"><b style="color:gray">Ticket # :</b><b  style="font-family:'Century Gothic';color:#637CE6;font-size:20px;"><br>${ticket_number}</b></label>	
				</div>
			</div>
			<div class="form-row" >
				<div class="col-md-4 " style="text-align:center">
				  <label style="font-family:'Century Gothic';color:blue; font-size:35px;"><b style="color:gray;">${departure_location} </b></label><br>
				   <label style="font-family:'Century Gothic';color:blue; font-size:10px;"><i style="color:gray;">${departure_location}, PH </i></label>
				</div>
				<div class="col-md-4" style="text-align:center">
				  <label style="font-family:'Century Gothic';color:blue; font-size:20px;"><b style="color:gray;">going to </b></label>
				</div>
				<div class="col-md-4 " style="text-align:center">
				  <label style="font-family:'Century Gothic';color:blue; font-size:35px;"><b style="color:gray;">${arrival_location} </b></label><br>
				  <label style="font-family:'Century Gothic';color:blue; font-size:10px;"><i style="color:gray;">${arrival_location}, PH </i></label>
				</div>
				
			</div>
				<hr>
			  <div class="form-row" >
			  
				<div class="col-md-6 mb-3">
				  <label for="validationServer01"><b>Departure :</b></label>
				  <input style="font-style:italic;" type="text" class="form-control" id="validationServer01" value="${departure_date}" disabled>
				  <div class="valid-feedback">
					6:00 am
				  </div>
				</div>
				<div class="col-md-6 mb-3">
				  <label for="validationServer02"><b>Arrival :</b></label>
				  <input style="font-style:italic;" type="text" class="form-control" id="validationServer02" value="${arrival_date}" disabled>
				  <div class="valid-feedback">
					8:30 am
				  </div>
				</div>
			  </div>
			  
				<div class="form-row" >
				<div class="col-md-4 mb-3">
				  <label for="validationServer01"><b>Class :</b></label>
				  <input style="font-style:italic;" type="text" class="form-control" id="validationServer01" value="${bus_class}" disabled>				 
				</div>
				<div class="col-md-4 mb-3">
				  <label for="validationServer02"><b> Seat # : </b></label>
				  <input style="font-style:italic;" type="text" class="form-control" id="validationServer02" value="${bus_seat}" disabled>
				</div>
				<div class="col-md-4 mb-3">
				  <label for="validationServer02"><b>Bus # :</b></label>
				  <input style="font-style:italic;" type="text" class="form-control" id="validationServer02" value="${bus_number}" disabled>
				</div>
			  </div>
			  
			  <div class="form-row">
				<div class="col-md-6 mb-3">
				  <label for="validationServer01"><b>Passenger Name </b> </label>
				  <input style="font-style:italic;" type="text" class="form-control" id="validationServer02" value="${passenger_name}" disabled >
				</div>
				<div class="col-md-6 mb-3">
				  <label for="validationServer02"><b>Bus Driver</b></label>
				<input style="font-style:italic;" type="text" class="form-control" id="validationServer02" value="${driver}" disabled >
				</div>
			  </div>
			  <center>
			  <button class="btn btn-warning" style="color:white;" onclick="window.print()"><li class="fa fa-print"></li> Print this page</button>
			  <a class="btn btn-primary"
						href="<%=request.getContextPath()%>/travelBooking">Book again</a>
			  </div>
	</div>
	

       <jsp:include page="/jsp/footer.jsp"></jsp:include>
<script>
	var data = document.getElementById('transaction').innerHTML;
	new QRCode(document.getElementById('qrcode'),{
	    text: data,
	    width: 140,
	    height: 140,
	    correctLevel : QRCode.CorrectLevel.H
	});
</script>
