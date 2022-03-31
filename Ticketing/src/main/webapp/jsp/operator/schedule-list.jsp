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

<c:if test='${sessionScope.account_type == "admin"}'>
	<jsp:include page="../sidebar.jsp"></jsp:include>
</c:if>
<c:if test='${sessionScope.account_type == "operator"}'>
	<jsp:include page="../sidebar_passenger.jsp"></jsp:include>
</c:if>


</head>
<body>

 

 <div class="row">
  <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

  <div class="container">
   <h3 class="text-center">List of Schedule</h3>
   <hr>
   <a href="<%=request.getContextPath()%>/newSchedule"
     class="btn btn-success my-5">Add Schedule</a>
   <br>
			<table class="table table-striped reponsive" id="myTable" style="overflow-x: auto;">
    <thead>
     <tr>
	      <th>Travel From</th>
	      <th>Travel To</th>
	      <th>Travel date</th>
	      <th>Departure</th>
	       <th>Arrival</th>
	      <th>Fare</th>
	      <th>Actions</th>
     </tr>
    </thead>
    <tbody>
     <c:forEach var="schedule" items="${listschedule}">

      <tr>
       <td><c:out value="${schedule.travel_from}" /></td>
       <td><c:out value="${schedule.travel_to}" /></td>
       <td><c:out value="${schedule.travel_date}" /></td>
       <td><c:out value="${schedule.departure}" /></td>
       <td><c:out value="${schedule.arrival}" /></td>
       <td><c:out value="${schedule.fare}" /></td>

       <td><a href="editSchedule?id=<c:out value='${schedule.schedule_id}' />"><i class="fa-solid fa-pencil" style="color:black;"></i></a>
        &nbsp;&nbsp;&nbsp;&nbsp; <a
        href="deleteSchedule?id=<c:out value='${schedule.schedule_id}' />"><i class="fa-solid fa-trash" style="color:black;"></i></a></td>
      </tr>
     </c:forEach>
    </tbody>

   </table>
  </div>
 </div>

</body>
</html>