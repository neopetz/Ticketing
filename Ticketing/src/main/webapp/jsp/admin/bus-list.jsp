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
<body>

<c:if test='${sessionScope.account_type == "admin"}'>
	<jsp:include page="../sidebar.jsp"></jsp:include>
</c:if>
<c:if test='${sessionScope.account_type == "operator"}'>
	<jsp:include page="../sidebar_passenger.jsp"></jsp:include>
</c:if>

	<div class="maintab">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Bus</h3>
			
			<hr>
			<a href="<%= request.getContextPath() %>/busDetails"
					class="btn btn-success my-5">Add Bus</a>
			<br>
			<table class="table table-striped reponsive" id="myTable" style="overflow-x: auto;">
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
							<td><c:out value="${busDetails.busId}" /></td>
							<td><c:out value="${busDetails.busName}" /></td>
							<td><c:out value="${busDetails.busType}" /></td>
							<td><c:out value="${busDetails.busSeats}" /></td>
							<td><c:out value="${busDetails.busNumber}" /></td>
							<td><c:out value="${busDetails.plateNumber}" /></td>
							<td><c:out value="${busDetails.dateCreated}" /></td>

							<td>
								<a href="editForm?busId=<c:out value='${busDetails.busId}' /> "><i class="fa-solid fa-pencil" style="color:black;"></i></a>
								&nbsp;&nbsp;&nbsp;&nbsp; 
								<a href="deleteBusDetails?busId=<c:out value='${busDetails.busId}' />"><i class="fa-solid fa-trash-can" style="color:black;"></i></a>
									<div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby=deleteLabel" aria-hidden="true">
			
							
							
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
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
<!-- s -->