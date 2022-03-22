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
				<c:if test="${busPersonnel != null}">
					<form action="<%=request.getContextPath()%>/updateBusPersonnel"
						method="post">
				</c:if>
				<c:if test="${busPersonnel == null}">
					<form action="<%=request.getContextPath()%>/insertBusPersonnel"
						method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${busPersonnel != null}">
               Edit 
              </c:if>
						<c:if test="${busPersonnel == null}">
               Add New Bus Personnel
               	<input type="hidden" name="isDeleted" value="false">
						</c:if>
					</h2>
				</caption>

				<input type="hidden" name="id"
					value="<c:out value='${busPersonnel.id}' />" />



				<fieldset class="form-group">
					<label>First Name</label> <input type="text"
						value="<c:out value='${busPersonnel.firstname}' />"
						class="form-control" name="firstname" required="required"
						minlength="5">
				</fieldset>

				<fieldset class="form-group">
					<label>Last Name</label> <input type="text"
						value="<c:out value='${busPersonnel.lastname}' />"
						class="form-control" name="lastname" minlength="5">
				</fieldset>

				<fieldset class="form-group">
					<label> Position</label> <select class="form-control"
						value="<c:out value='${busPersonnel.position}' />" name="position">
						<option value="Driver">Driver</option>
						<option value="Conductor">Conductor</option>
					</select>
				</fieldset>
				<fieldset class="form-group">
					<label> Status</label> <select class="form-control"
						value="<c:out value='${busPersonnel.status}' />" name="status">
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