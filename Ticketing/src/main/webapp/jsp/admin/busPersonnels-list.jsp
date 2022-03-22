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
			<h3 class="text-center">List of Bus Personnels</h3>
			<hr>
			<div class="container text-left"></div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Position</th>
						<th>Status</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="busPersonnel" items="${listOfBusPersonnel}">

						<tr>
							<td><c:out value="${busPersonnel.firstname}" /></td>
							<td><c:out value="${busPersonnel.lastname}" /></td>
							<td><c:out value="${busPersonnel.position}" /></td>
							<td><c:out value="${busPersonnel.status}" /></td>

							<td><a
								href="editBusPersonnel?id=<c:out value='${busPersonnel.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="deleteBusPersonnel?id=<c:out value='${busPersonnel.id}' />">Delete</a></td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
			<a href="<%=request.getContextPath()%>/addBusPersonnel"
				class="btn btn-success">Add Bus Personnel</a>
		</div>
	</div>

</body>
</html>