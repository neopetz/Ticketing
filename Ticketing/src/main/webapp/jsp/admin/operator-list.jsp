<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Operator Management Application</title>
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
  <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

  <div class="container">
   <h3 class="text-center">List of Operator</h3>
   <hr>
   <div class="container text-left">

    <a href="<%=request.getContextPath()%>/newOperator"
     class="btn btn-success">Add Operator</a>
   </div>
   <br>
			<table class="table table-striped reponsive" id="myTable" style="overflow-x: auto;">
    <thead>
     <tr>
	      <th>First Name</th>
	      <th>Last Name</th>
	      <th>User Name</th>
	      <th>Actions</th>
     </tr>
    </thead>
    <tbody>
     <!--   for (employee employee: employees) {  -->
     <c:forEach var="operator" items="${listOperator}">

      <tr>
       <td><c:out value="${operator.operator_firstname}" /></td>
       <td><c:out value="${operator.operator_lastname}" /></td>
       <td><c:out value="${operator.operator_username}" /></td>

       <td><a href="editOperator?id=<c:out value='${operator.id}' />">Edit</a>
        &nbsp;&nbsp;&nbsp;&nbsp; <a
        href="deleteOperator?id=<c:out value='${operator.id}' />">Delete</a></td>

       <!--  <td><button (click)="updateemployee(employee.id)" class="btn btn-success">Update</button>
                 <button (click)="deleteemployee(employee.id)" class="btn btn-warning">Delete</button></td> -->
      </tr>
     </c:forEach>
     <!-- } -->
    </tbody>

   </table>
  </div>
 </div>

</body>
</html>