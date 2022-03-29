<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
<meta name="description" content="Bootstrap.css ">  
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>


<style type="text/css">
  <%@include file="/css/sidebar.css" %>
</style>
<body>
<div class="topbar">
<span> dsdsds</span>
<img src="${pageContext.request.contextPath}${LOGO.png}"/>


</div><br><br>
<div class="sidebar">
<h5>Hello <%= session.getAttribute("username") %></h5>
	    <hr />
  <a href="#news" ><i class="fa-solid fa-house"></i> Dashboard</a>
  <a href="<%=request.getContextPath()%>/busList" ><i class="fa-solid fa-bus"></i> Bus</a>
  <a href="<%= request.getContextPath ()%>/listOfBusPersonnel"><i class="fa-solid fa-user"></i> Bus Personnel</a>
  <a href="<%= request.getContextPath ()%>/listOperator"><i class="fa-solid fa-user-group"></i> Operator</a>
  <a href="#about"><i class="fa-solid fa-users"></i> Passengers</a>
  
  <a href="<%= request.getContextPath ()%>/listSchedule" ><i class="fa-solid fa-calendar"></i> Schedules</a>
    <a href="#about"><i class="fa-solid fa-file"></i> Generate Reports</a>

</div>

<div class="content">
 
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
		
							
	
	</div>
<div class="footer">
  <p>All right reserved 2022.</p>
</div>	
	<!-- Fontawesome -->
<script src="https://kit.fontawesome.com/f86155eccc.js" crossorigin="anonymous"></script>
<script>
$(document).ready(function(){
    $('#myTable').dataTable();
});
</script>
	<!-- Footer -->

</body>
</html>
