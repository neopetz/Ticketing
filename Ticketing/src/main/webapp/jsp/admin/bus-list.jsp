<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Operator Management Application</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>

</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #1e90ff; height: 6em;">
			<div>
				<a href="https://www.google.com" class="navbar-brand"> BUS DETAILS </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/busList"
					class="nav-link">BUS LISTS</a></li>
			</ul>

			<ul class="navbar-nav navbar-collapse justify-content-end">
				<li>ADMIN</li>
				<li><a href="<%=request.getContextPath()%>/logout"
					class="nav-link">LOG OUT</a></li>
			</ul>
		</nav>
	</header>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">BUS LIST</h3>
			<hr>
			<div class="container text-left">

				<a href="<%= request.getContextPath() %>/busDetails"
					class="btn btn-success">ADD BUS</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>NAME</th>
						<th>TYPE</th>
						<th>SEATS</th>
						<th>BUS NUMBER</th>
						<th>PLATE NUMBER</th>
						<th>DATE CREATED</th>
						<th>ACTIONS</th>
					</tr>
				</thead>
				<tbody>
					<!-- for (employee employee: employees) { -->
					<c:forEach var="busDetails" items="${busList}">

						<tr>
							<td><c:out value="${busDetails.id}" /></td>
							<td><c:out value="${busDetails.busName}" /></td>
							<td><c:out value="${busDetails.busType}" /></td>
							<td><c:out value="${busDetails.busSeats}" /></td>
							<td><c:out value="${busDetails.busNumber}" /></td>
							<td><c:out value="${busDetails.plateNumber}" /></td>
							<td><c:out value="${busDetails.dateCreated}" /></td>

							<td>
								<a href="editForm?id=<c:out value='${busDetails.id}' />">EDIT</a>
								&nbsp;&nbsp;&nbsp;&nbsp; 
								<a href="deleteBusDetails?id=<c:out value='${busDetails.id}' />">DELETE</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>