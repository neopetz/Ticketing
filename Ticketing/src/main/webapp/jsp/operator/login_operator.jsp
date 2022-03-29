<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../header.jsp"></jsp:include>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login_operator-style.css">

	<div class="container col-md-3 col-md-offset-3"
		style="overflow: auto; margin-top: 10em;">
		<div class="divheader shadow rounded text-center">
				<h6 class="text-white" style="font-family: 'Century Gothic'">Operator
					Login</h6>
		</div>
		<div class="container shadow p-3 mb-5 bg-white rounded"
			style="padding: 30px">

			<form action="<%=request.getContextPath()%>/OperatorController" method="post">
				<div class="input-group input-group " id="floatingInput"
					style="margin-bottom: 2em">
					<input type="text" id="username" name="username" placeholder="Username" class="input1 form-control">
				</div>
				<div class="input-group input-group" style="margin-bottom: 2em">
					<input type="password" id="password" name="password" placeholder="Password"
						class="input1 form-control">
				</div>
				
				<c:if test="${NOTIFICATION != null }">
					<div class="alert alert-warning alert-dismissible fade show" role="alert">
						<p class="text-left">${NOTIFICATION}</p>
						<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						    <span aria-hidden="true">&times;</span>
						</button>
					</div>
				</c:if>
				
				<button type="submit" data-bs-toggle="button" autocomplete="off"
					class="btn btn-primary btn-lg btn-block">Login</button>
			</form>
		</div>
	</div>

</body>
</html>