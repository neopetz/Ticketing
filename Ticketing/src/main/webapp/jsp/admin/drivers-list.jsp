<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>

</head>
<body>

	<div class="row">

		<div class="container">
			<h3 class="text-center">List of Drivers</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/addDriver" class="btn btn-success">Add
					Driver</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Status</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="driver" items="${listOfDrivers}">

						<tr>
							<td><c:out value="${driver.driverFirstname}" /></td>
							<td><c:out value="${driver.driverLastname}" /></td>
							<td><c:out value="${driver.driverStatus}" /></td>

							<td><a href="editDriver?id=<c:out value='${driver.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="deleteDriver?id=<c:out value='${driver.id}' />">Delete</a></td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>

</body>
</html>