<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Operator Management Application</title>

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
    <a href="https://www.google.com" class="navbar-brand"> Operator
     App</a>
   </div>

   <ul class="navbar-nav">
    <li><a href="<%=request.getContextPath()%>/listOperator"
     class="nav-link">Operator</a></li>
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
   <h3 class="text-center">List of Operator</h3>
   <hr>
   <div class="container text-left">

    <a href="<%=request.getContextPath()%>/newOperator"
     class="btn btn-success">Add Operator</a>
   </div>
   <br>
   <table class="table table-bordered">
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
     <c:forEach var="operator" items="${listoperator}">

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