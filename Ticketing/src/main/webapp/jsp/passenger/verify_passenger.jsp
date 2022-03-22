<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


<html>

<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hubballi&family=Roboto:wght@100&display=swap" rel="stylesheet">
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="HandheldFriendly" content="true">
<style>
.divheader {
	padding: 1em;
	background-color: #17a2b8;
	background-image: radial-gradient(180deg, #1c285c 0%, #637ce6 100%);
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
font-family: 'Century Gothic'; 
padding:30px;
}
h6 {
text-align:center;
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
</head>

<body background-image="MINI PROJECT/logo.png">

	<jsp:include page="navbar_passenger.jsp"></jsp:include>

	<div class="container col-md-4 col-md-offset-3"
		style="overflow: auto; margin-top: 5m;">
		<div class="divheader shadow rounded">
		
				<h6 style="color: white; font-family: 'Century Gothic'; text-align:center;">Code confirmation</h6>
	
		</div>
		<div class="container shadow p-3 mb-5 bg-white rounded" style="padding: 30px">

		<form action="<%=request.getContextPath()%>/PassengerController" method="POST" style="text-align:center;">
		<input type="text" name="verify" placeholder="Enter 6 digit verification code" class="input1">
		<button type="submit" value="verify" class="btn btn-outline-primary btn-sm" style="margin-right: 20px;">Verify</button>

<p style="">
			Didn't Received the code ? <a href="#">Resend</a>
		</p>

</form>

		</div>
		
	</div>
	
</body>
<jsp:include page="/jsp/footer.jsp"></jsp:include>
</html>

