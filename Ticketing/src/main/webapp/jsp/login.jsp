<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="navbar.jsp"></jsp:include>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login-style.css">

	<div class="container col-md-3 col-md-offset-3" style="overflow: auto; margin-top: 5em;">
		<div class="divheader shadow rounded text-center">
			<h6 style="color: white; font-family: 'Century Gothic'">Passenger Login</h6>
		</div>
		<div class="container shadow p-3 mb-5 bg-white rounded" style="padding: 30px">

			<form action="<%=request.getContextPath()%>/LoginController" method="post">

				<input type="date" id="currentDate" hidden>
				<!-- Email Field -->
				<div class="input-group input-group " id="floatingInput" style="margin-bottom: 2em">
					<input type="email" name="email" placeholder="Email Address" class="input1 form-control">
				</div>
				<!-- Password Field -->
				<div class="input-group input-group" style="margin-bottom: 2em">
					<input type="password" name="password" placeholder="Password" class="input1 form-control"
						style="margin-right: 10px; width: 80px">
				</div>
				<!-- Submit Button -->
				<div class="input-group input-group " id="floatingInput" style="margin-top: 3em">
					<button type="submit" class="btn btn-primary btn-lg btn2  btn-block">Login</button>
				</div>

				<div class="input-group input-group " id="floatingInput" style="margin-top: 3em">
					<p style="font-family: 'Century Gothic'">
						No account yet ?
						<a href="${pageContext.request.contextPath}/jsp/passenger/register_passenger.jsp">Register
							here!</a>
					</p>
				</div>
			</form>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<script src="${pageContext.request.contextPath}/js/login.js"></script>