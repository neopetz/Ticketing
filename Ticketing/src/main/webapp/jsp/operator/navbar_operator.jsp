<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="../header.jsp"></jsp:include>
<nav style="background-color: #0f52ba"
	class="navbar navbar-expand-lg navbar-dark">

	<!-- Navbar brand of Phones -->
	<a style="font-family: 'Alex Brush', cursive;"
		class="d-flex align-items-center navbar-brand ml-3 mt-3 mb-3" href="#">
		<img class="rounded-circle d-block d-lg-none"
		src="${pageContext.request.contextPath}/assets/LOGO.png" width="120" height="120"
		class="d-inline-block align-top" alt="">
		<h1 class="d-none d-md-block d-lg-none display-3">&nbsp;
			iWantTranseat</h1>
	</a>

	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarTogglerDemo03">
		<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
			<li class="nav-item"><a
				class="nav-link d-flex align-items-center justify-content-end h5"
				href="#"> Home<span
					class="material-icons d-md-inline d-lg-none ml-4"
					style="font-size: 36px;"> home</span></a></li>
			<li class="nav-item"><a
				class="nav-link d-flex align-items-center justify-content-end h5"
				href="#"> Booking<span
					class="material-icons d-md-inline d-lg-none ml-4"
					style="font-size: 36px;"> book_online</span></a></li>
			<li class="nav-item"><a
				class="nav-link d-flex align-items-center justify-content-end h5"
				href="#"> Passengers<span
					class="material-icons d-md-inline d-lg-none ml-4"
					style="font-size: 36px;"> groups</span></a></li>
		</ul>

		<!-- Left Navbar of PC/Desktops -->
		<ul class="navbar-nav float-right d-none d-md-none d-lg-block">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle h5" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-expanded="false">
					Fullname </a>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">Change Password</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Logout</a>
				</div></li>
		</ul>

		<!-- Left Navbar of Phones and Tablets -->
		<ul class="navbar-nav d-sm-block d-lg-none">
			<li class="nav-item">
				<hr>
			</li>
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

<!-- Navbar brand of PC/Desktops -->
<a style="color: #637CE6; font-family: 'Alex Brush', cursive;"
	class="d-flex align-items-center navbar-brand ml-3 mt-3 mb-3" href="#">
	<img class="rounded-circle d-none d-lg-block"
	src="${pageContext.request.contextPath}/assets/LOGO.png" width="120" height="120"
	class="d-inline-block align-top" alt="">
	<h1 class="d-none d-lg-block display-3">&nbsp; iWantTranseat</h1>
</a>