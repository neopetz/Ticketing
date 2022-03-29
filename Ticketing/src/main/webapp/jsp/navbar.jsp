<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<nav style="background-color: #0f52ba;"
	class="navbar navbar-expand-lg navbar-dark">
	
	<span></span>

	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>


	<div class="collapse navbar-collapse" id="navbarTogglerDemo03">
		<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
			<li class="nav-item"><a
				class="nav-link d-flex align-items-center justify-content-end h5"
				href="${pageContext.request.contextPath}/jsp/index.jsp"> Home<span
					class="material-icons d-md-inline d-lg-none ml-4"
					style="font-size: 36px;"> home</span></a></li>
		</ul>

		<ul class="navbar-nav float-lg-right">
			<li class="nav-item"><a
				class="nav-link d-flex align-items-center justify-content-end h5"
				href="${pageContext.request.contextPath}/jsp/login.jsp">Login <span
					class="material-icons d-md-inline d-lg-none ml-4"
					style="font-size: 36px;"> login</span>
			</a></li>
			<li class="nav-item"><a
				class="nav-link d-flex align-items-center justify-content-end h5"
				href="${pageContext.request.contextPath}/jsp/passenger/register_passenger.jsp">Register
					<span class="material-icons d-md-inline d-lg-none ml-4"
					style="font-size: 36px;"> app_registration</span>
			</a></li>
		</ul>
	</div>
</nav>
