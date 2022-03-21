<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<jsp:include page="header.jsp"></jsp:include>
<style>
.divheader {
	padding: 1em;
	background-color: #637ce6;
	background-image: linear-gradient(10deg, #637ce6 0%, #1c285c 100%);
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

input {
	text-align: center;
}
</style>
</head>

<body>

	<jsp:include page="navbar.jsp"></jsp:include>

	<div class="container col-md-3 col-md-offset-3"
		style="overflow: auto; margin-top: 5em;">
		<div class="divheader shadow rounded text-center">
			<h6 style="color: white; font-family: 'Century Gothic'">Passenger
				Login</h6>
		</div>
		<div class="container shadow p-3 mb-5 bg-white rounded"
			style="padding: 30px">

			<form action="<%=request.getContextPath()%>/LoginController" method="post">

				<input type="date" id="currentDate" hidden>

				<div class="input-group input-group " id="floatingInput" style="margin-bottom: 2em">
					<input type="email" name="email" placeholder="Email Adress" class="input1 form-control">
				</div>
				
				<div class="input-group input-group" style="margin-bottom: 2em">
					<input type="password" name="password" placeholder="Password" class="input1 form-control" style="margin-right: 10px; width: 80px">
				</div>

				<div class="input-group input-group " id="floatingInput" style="margin-top: 3em">
					<button type="submit" class="btn btn-primary btn-lg btn2  btn-block">Login</button>
				</div>


				<div class="input-group input-group " id="floatingInput" style="margin-top: 3em">
					<p style="font-family: 'Century Gothic'">
						No account yet ?<a href="#">Register here !</a>
					</p>
				</div>
			</form>
		</div>

	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<script>
		var date = new Date();
		var currentDate = date.toISOString().slice(0, 10);
		var currentTime = date.getHours() + ':' + date.getMinutes();

		document.getElementById('currentDate').value = currentDate;
		document.getElementById('currentTime').value = currentTime;
	</script>