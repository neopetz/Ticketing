<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<nav style="background-color: #0f52ba"
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
				href="${pageContext.request.contextPath}/jsp/passenger/index_passenger.jsp"> Home<span
					class="material-icons d-md-inline d-lg-none ml-4"
					style="font-size: 36px;"> home</span></a></li>
			<li class="nav-item"><a
				class="nav-link d-flex align-items-center justify-content-end h5"
				href="#"> History<span
					class="material-icons d-md-inline d-lg-none ml-4"
					style="font-size: 36px;"> history</span></a></li>
		</ul>

		<ul class="navbar-nav float-right d-none d-md-none d-lg-block">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle h5" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-expanded="false">
					Fullname </a>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="${pageContext.request.contextPath}/jsp/profile.jsp">Profile</a> <a
						class="dropdown-item" href="#">Change Password</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Logout</a>
				</div></li>
		</ul>

		<ul class="navbar-nav d-sm-block d-lg-none">
			<li class="nav-item">
				<hr>
			</li>
			<li class="nav-item"><a
				class="nav-link d-flex align-items-center justify-content-end h5">Profile
					<span class="material-icons d-md-inline d-lg-none ml-4"
					style="font-size: 36px;"> person</span>
			</a></li>
			<li class="nav-item"><a
				class="nav-link d-flex align-items-center justify-content-end h5">Change
					Password <span class="material-icons d-md-inline d-lg-none ml-4"
					style="font-size: 36px;"> lock</span>
			</a></li>
			<li class="nav-item"><a
				class="nav-link d-flex align-items-center justify-content-end h5">Logout
					<span class="material-icons d-md-inline d-lg-none ml-4"
					style="font-size: 36px;"> logout</span>
			</a></li>
		</ul>
	</div>
</nav>
