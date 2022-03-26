<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<jsp:include page="../header.jsp"></jsp:include>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/register_passenger-style.css">

	<div class="vh-100 d-flex justify-content-center align-items-center">
		<div class="container col-md-4 col-md-offset-3" style="overflow: auto; margin-top: 5m;">
			<div class="divheader shadow rounded text-center">
				<h6 style="color: white; font-family: 'Century Gothic';">Code confirmation</h6>
			</div>

			<div class="container shadow p-3 mb-5 bg-white rounded text-center" style="padding: 30px">
				<form action="<%=request.getContextPath()%>/PassengerController" method="POST">
					<!-- Verify Field -->
					<input type="text" name="verify" placeholder="Enter 6 digit verification code" class="input1">
					<!-- Submit Button -->
					<button type="submit" class="btn btn-outline-primary btn-sm ml-2">Verify</button>
					<p class="text-muted">
						Didn't Received the code ? <a href="#">Resend</a>
					</p>
				</form>
			</div>
		</div>
	</div>

	<jsp:include page="/jsp/footer.jsp"></jsp:include>