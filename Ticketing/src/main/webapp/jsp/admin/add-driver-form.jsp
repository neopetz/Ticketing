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

	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${driver != null}">
					<form action="<%=request.getContextPath()%>/updateDriver"
						method="post">
				</c:if>
				<c:if test="${driver == null}">
					<form action="<%=request.getContextPath()%>/insertDriver"
						method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${driver != null}">
               Edit 
              </c:if>
						<c:if test="${driver == null}">
               Add New Driver
               	<input type="hidden" name="isDeleted" value="false">
						</c:if>
					</h2>
				</caption>

				<c:if test="${driver != null}">
					<input type="hidden" name="id"
						value="<c:out value='${driver.id}' />" />			
				</c:if>


				<fieldset class="form-group">
					<label>First Name</label> <input type="text"
						value="<c:out value='${driver.driverFirstname}' />"
						class="form-control" name="driverFirstname" required="required"
						minlength="5">
				</fieldset>

				<fieldset class="form-group">
					<label>Last Name</label> <input type="text"
						value="<c:out value='${driver.driverLastname}' />"
						class="form-control" name="driverLastname" minlength="5">
				</fieldset>

				<fieldset class="form-group">
					<label> Status</label> <select class="form-control"
						value="<c:out value='${driver.driverStatus}' />"
						name="driverStatus">
						<option value="Available">Available</option>
						<option value="Travelling">Travelling</option>
						<option value="Resigned">Resigned</option>
					</select>
				</fieldset>


				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</html>