<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<jsp:include page="header.jsp"></jsp:include>

	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login-style.css">
	
<!-- For modal -->

		

				<input type="date" id="currentDate" hidden>
				<!-- Email Field -->
				<div class="input-group input-group " id="floatingInput" style="margin-bottom: 2em">
					<input type="email" name="email" placeholder="Email Address" class="input1 form-control" style="font-family:quicksand, sans-serif;font-weight:;">
				</div>
				<!-- Password Field -->
				<div class="input-group input-group" style="margin-bottom: 2em">
					<input type="password" name="password" placeholder="Password" class="input1 form-control" style="font-family:quicksand, sans-serif;font-weight:;">
				</div>
				<c:if test="${NOTIFICATION != null }">
					<div class="alert alert-warning alert-dismissible fade show" role="alert">
						<p class="text-left">${NOTIFICATION}</p>
						<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						    <span aria-hidden="true">&times;</span>
						</button>
					</div>
				</c:if>
				<div class="input-group input-group " id="floatingInput" style="margin-top: 3em;font-family:quicksand, sans-serif;font-weight:;" >
					<p style="font-family: 'Century Gothic'">
						No account yet ?
						<a href="#" data-toggle="modal" data-target="#exampleModal2" style="font-family:quicksand, sans-serif;">Register
							here!
						</a>
				
				</div>
				
					
			
		
<!-- For modal -->
	
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<!-- Bootstrap 4 JS -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
	crossorigin="anonymous"></script>

	<script>
$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').trigger('focus')
})</script>
	<script src="${pageContext.request.contextPath}/js/login.js"></script>