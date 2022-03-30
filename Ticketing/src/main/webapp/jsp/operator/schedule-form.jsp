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
 
 </header>
 <br><br>
	<div class="col-md-3"></div>
	<div class="container col-md-" style="margin: auto; width: 500; border: 3px solid #1C285C; padding: 10px;">	
  <div class="card">
   <div class="card-body">
    <c:if test="${schedule != null}">
     <form action="updateSchedule" method="post">
    </c:if>
    <c:if test="${schedule == null}">
     <form action="insertSchedule" method="post">
    </c:if>

    <caption>
     <h2>
      <c:if test="${schedule != null}">
               Edit 
              </c:if>
      <c:if test="${schedule == null}">
               Add New Schedule
              </c:if>
     </h2>
    </caption>

    <c:if test="${schedule != null}">
     <input type="hidden" name="id" value="<c:out value='${schedule.schedule_id}' />" />
    </c:if>

    <fieldset class="form-group">
     <label>Travel From</label> <input type="text"
      value="<c:out value='${schedule.travel_from}' />" class="form-control"
      name="travel_from" required="required" minlength="3">
    </fieldset>

   <fieldset class="form-group">
     <label>Travel To</label> <input type="text"
      value="<c:out value='${schedule.travel_to}' />" class="form-control"
      name="travel_to" minlength="3">
    </fieldset>

    <fieldset class="form-group">
     <label>Travel Date</label> <input type="date"
      value="<c:out value='${schedule.travel_date}' />" class="form-control"
      name="travel_date" required="required">
    </fieldset>
    
     <fieldset class="form-group">
     <label>Departure</label> <input type="time"
      value="<c:out value='${schedule.departure}' />" class="form-control"
      name="departure" required="required">
    </fieldset>
    
     <fieldset class="form-group">
     <label>Arrival</label> <input type="time"
      value="<c:out value='${schedule.arrival}' />" class="form-control"
      name="arrival" required="required">
    </fieldset>
    
     <fieldset class="form-group">
     <label>Fare</label> <input type="text"
      value="<c:out value='${schedule.fare}' />" class="form-control"
      name="fare" required="required" minlength="3">
    </fieldset>
				<button type="back" class="btn btn-danger"><a href="<%=request.getContextPath()%>/listSchedule" style="color:white;"><i class="fa-solid fa-arrow-left"></i> BACK</a></button>
    <button type="submit" class="btn btn-success">Save</button>
    </form>
   </div>
  </div>
 </div>
	<div class="col-md-3"></div>
</body>
</html>