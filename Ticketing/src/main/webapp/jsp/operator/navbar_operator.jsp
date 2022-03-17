<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="../header.jsp"></jsp:include>
<nav style="background-color: #0f52ba"
	class="navbar navbar-expand-lg navbar-dark">
	
	<a class="d-flex align-items-center navbar-brand" href="#"> <img
		class="rounded-circle" src="../../assets/LOGO.png" width="90" height="90"
		class="d-inline-block align-top" alt="">
		<h1>iWantTranseat</h1>
	</a>
	
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarTogglerDemo03">
		<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
			<li class="nav-item active"><a class="nav-link" href="#">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Booking</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Passengers</a></li>
		</ul>

		<ul class="navbar-nav float-right">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-expanded="false">
					Fullname </a>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">Change Password</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Logout</a>
				</div></li>
		</ul>
	</div>
</nav>