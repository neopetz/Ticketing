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
     class="nav-link">Schedule's List</a></li>
   </ul>

   <ul class="navbar-nav navbar-collapse justify-content-end">
    <li><a href="<%=request.getContextPath()%>/logout"
     class="nav-link">Logout</a></li>
   </ul>
  </nav>
 </header>
 <div class="container col-md-5">
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
     <input type="hidden" name="id" value="<c:out value='${schedule.id}' />" />
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

    <button type="submit" class="btn btn-success">Save</button>
    </form>
   </div>
  </div>
 </div>

 <jsp:include page="/jsp/footer.jsp"></jsp:include>
</body>
</html>