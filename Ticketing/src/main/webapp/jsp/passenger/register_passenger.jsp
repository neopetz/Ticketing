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
</head>

<body background-image="MINI PROJECT/logo.png">

	<jsp:include page="navbar_passenger.jsp"></jsp:include>

	<div class="container col-md-5 col-md-offset-3"
		style="overflow: auto; margin-top: 5m;">
		<div class="divheader shadow rounded">
			<center>
				<h6 style="color: white; font-family: 'Century Gothic'">Passenger Registration</h6>
			</center>
		</div>
		<div class="container shadow p-3 mb-5 bg-white rounded" style="padding: 30px">

			<form action="<%=request.getContextPath()%>/PassengerVerify" method="post">

				<input type="date" id="currentDate" hidden>

				<div class="input-group input-group " id="floatingInput"
					style="margin-bottom: 2em">
					<input type="text" placeholder="Firstname" name="firstname" class="input1 form-control" style="margin-right: 30px;" required> 
					<input type="text" placeholder="Lastname" name="lastname" class="input1 form-control" required>
				</div>
				<div class="input-group input-group" style="margin-bottom: 2em">
					<input type="date" id="birthday" name="birthday" onchange="ageCount()" class="input1 form-control" style="margin-right: 10px; width: 80px" required> 
					<input type="text" id="age" name="age" placeholder="Age" class="input1 " style="margin-right: 10px; width: 70px;" readonly> 
					<input type="number" placeholder="Contact Number" name="contact" class="input1 form-control" style="">
				</div>
				<div class="input-group input-group " id="floatingInput" style="margin-bottom: 2em">
					<input type="email" placeholder="Email" name="email" class="input1 form-control" style="margin-right: 30px;" required> 
					<input type="password" placeholder="Password" name="password" class="input1 form-control" required>
				</div>

<!-- 				<center>
					<button type="submit" name="action" value="verify" class="btn btn-outline-primary btn-sm" style="margin-right: 20px;">Get Verification</button>
					<input type="text" placeholder="Enter 6 digit verification code" class="input1">
				</center>
				<center>
					<p style="font-family: 'Century Gothic'">Didn't Received the code ? <a href="#">Resend</a></p>
				</center>  -->
				<div class="input-group input-group " id="floatingInput" style="margin-top: 3em">
					<button type="submit" name="action" value="register" class="btn btn-primary btn-l btn2  btn-block">SUBMIT</button>
				</div>
				</form>
		</div>
		
	</div>
	<jsp:include page="/jsp/footer.jsp"></jsp:include>

</body>
<script type="text/javascript">
function ageCount() {
   
    var dobget =document.getElementById("birthday").value; 
    var dob =new Date(dobget);   
 
    var month_diff = Date.now() - dob.getTime();
    var age_dt = new Date(month_diff); 
    var year = age_dt.getUTCFullYear();
    var age = Math.abs(year - 1970);
    
    document.getElementById('age').value = age;
    }
    
    
</script>
</html>