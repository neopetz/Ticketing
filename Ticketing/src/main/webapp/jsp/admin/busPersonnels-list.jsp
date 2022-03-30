<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>iWantTranSeat</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
<meta name="description" content="Bootstrap.">  
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link href="/css/datatable.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/datatable.min.css">

</head>

<jsp:include page="../sidebar.jsp"></jsp:include>

<body>

	<div class="row">

		<div class="container">
			<h3 class="text-center">List of Bus Personnels</h3>
			<hr>
			<div class="container text-left"></div>
			<br>
			<table class="table table-striped reponsive" id="myTable" style="overflow-x: auto;">
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
								href="editBusPersonnel?id=<c:out value='${busPersonnel.busPersonnel_id}' />"><i class="fa-solid fa-pencil" style="color:black;"></i></a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="deleteBusPersonnel?id=<c:out value='${busPersonnel.busPersonnel_id}' />"><i class="fa-solid fa-trash" style="color:black;"></i></a></td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
			<a href="<%=request.getContextPath()%>/addBusPersonnel"
				class="btn btn-success">Add Bus Personnel</a>
		</div>
	</div>
	<!-- Fontawesome -->
<script src="https://kit.fontawesome.com/f86155eccc.js" crossorigin="anonymous"></script>
<script>
$(document).ready(function(){
    $('#myTable').dataTable();
});
</script>
</body>
</html>