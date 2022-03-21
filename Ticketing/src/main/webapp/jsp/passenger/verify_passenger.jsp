<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
<form action="<%=request.getContextPath()%>/PassengerController" method="POST">
	<center>
		<button type="submit" value="verify"
			class="btn btn-outline-primary btn-sm" style="margin-right: 20px;">Get Verification</button>
		<input type="text" name="verify" placeholder="Enter 6 digit verification code"
			class="input1">
	</center>
	<center>
		<p style="font-family: 'Century Gothic'">
			Didn't Received the code ? <a href="#">Resend</a>
		</p>
	</center>
</form>
</body>
</html>