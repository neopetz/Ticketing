<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>User Management Application</title>

<link rel="stylesheet"
 href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
 integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
 crossorigin="anonymous">
</head>

</head>
<body>
 <header>
  <nav class="navbar navbar-expand-md navbar-dark"
   style="background-color: tomato">
   <div>
    <a href="https://www.google.com" class="navbar-brand"> Schedule
     App</a>
   </div>

   <ul class="navbar-nav">
    <li><a href="<%=request.getContextPath()%>/listSchedule"
     class="nav-link">Schedule</a></li>
   </ul>

   <ul class="navbar-nav navbar-collapse justify-content-end">
    <li><a href="<%=request.getContextPath()%>/logout"
     class="nav-link">Logout</a></li>
   </ul>
  </nav>
 </header>

 <div class="row">
  <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

  <div class="container">
   <h3 class="text-center">List of Schedule</h3>
   <hr>
   <div class="container text-left">

    <a href="<%=request.getContextPath()%>/newSchedule"
     class="btn btn-success">Add Schedule</a>
   </div>
   <br>
   <table class="table table-bordered">
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
     <!--   for (employee employee: employees) {  -->
     <c:forEach var="schedule" items="${listschedule}">

      <tr>
       <td><c:out value="${schedule.travel_from}" /></td>
       <td><c:out value="${schedule.travel_to}" /></td>
       <td><c:out value="${schedule.travel_date}" /></td>
       <td><c:out value="${schedule.departure}" /></td>
       <td><c:out value="${schedule.arrival}" /></td>
       <td><c:out value="${schedule.fare}" /></td>

       <td><a href="editSchedule?id=<c:out value='${schedule.id}' />">Edit</a>
        &nbsp;&nbsp;&nbsp;&nbsp; <a
        href="deleteSchedule?id=<c:out value='${schedule.id}' />">Delete</a></td>

       <!--  <td><button (click)="updateemployee(employee.id)" class="btn btn-success">Update</button>
                 <button (click)="deleteemployee(employee.id)" class="btn btn-warning">Delete</button></td> -->
      </tr>
     </c:forEach>
     <!-- } -->
    </tbody>

   </table>
  </div>
 </div>

 <jsp:include page="/jsp/footer.jsp"></jsp:include>
</body>
</html>