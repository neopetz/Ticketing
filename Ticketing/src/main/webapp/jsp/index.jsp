<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"></jsp:include>

<jsp:include page="navbar.jsp"></jsp:include>
<link href="${pageContext.request.contextPath}/css/carousel.css">

<main role="main">
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="${pageContext.request.contextPath}/assets/mountain.jpg"
					style="position: relative; width: 100%; height:100%;" />
				<div class="container">
					<div class="carousel-caption text-left">
						<h1>Going for a Trip ?</h1>
						<p>
							<a class="btn btn-lg btn-primary"
								href="${pageContext.request.contextPath}/jsp/booking_details.jsp">BOOK
								A SEAT !</a>
						</p>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<img src="${pageContext.request.contextPath}/assets/van.jpg"
					style="position: relative; width: 100%; height:100%;" />
				<div class="container">
					<div class="carousel-caption">
						<h1>Going for a Trip ?</h1>
						<p>
							<a class="btn btn-lg btn-primary" href="${pageContext.request.contextPath}/jsp/booking_details.jsp">BOOK A SEAT !</a>
						</p>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<img src="${pageContext.request.contextPath}/assets/beach2.jpg"
					style="position: relative; width: 100%; height:100%;" />
				<div class="container">
					<div class="carousel-caption">
						<h1>Going for a Trip ?</h1>
						<p>
							<a class="btn btn-lg btn-primary" href="${pageContext.request.contextPath}/jsp/booking_details.jsp">BOOK A SEAT !</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-target="#myCarousel" data-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-target="#myCarousel" data-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
		</button>
	</div>

	<!-- Marketing messaging and featurettes
  ================================================== -->
	<!-- Wrap the rest of the page in another container to center all the content. -->

	<div class="container marketing mt-5">
		<!-- Three columns of text below the carousel -->
		<div class="row">
			<div class="col-lg-4">
				<img
					src="https://s1.rdbuz.com/Images/webplatform/rbdotcom/multiple_bus_service.svg"
					height="90" />
				<h2>Multiple Bus Service</h2>
				<p>Choose from various bus available, schedule and route</p>
				<p>
					<a class="btn btn-secondary" href="#">View details &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img
					src="https://s1.rdbuz.com/Images/webplatform/rbdotcom/global_coverage.svg"
					height="90" />
				<h2>Wide Area Coverage</h2>
				<p>Get all your bus travel needs covered under one roof</p>
				<p>
					<a class="btn btn-secondary" href="#">View details &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img
					src="https://s1.rdbuz.com/Images/webplatform/rbdotcom/customer_support.svg"
					height="90" />
				<h2>Realtime</h2>
				<p>Realtime Booking and Tracking your location via Profile</p>
				<p>
					<a class="btn btn-secondary" href="#">View details &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
		</div>
		<!-- /.row -->

		<!-- START THE FEATURETTES -->

		<hr class="featurette-divider" />

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">
					First featurette heading. <span class="text-muted">It' ll
						blow your mind.</span>
				</h2>
				<p class="lead">Some great placeholder content for the first
					featurette here. Imagine some exciting prose here.</p>
			</div>
			<div class="col-md-5">
				<svg
					class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
					width="500" height="500" xmlns="http://www.w3.org/2000/svg"
					role="img" aria-label="Placeholder: 500x500"
					preserveAspectRatio="xMidYMid slice" focusable="false">
							<title>Placeholder</title>
							<rect width="100%" height="100%" fill="#eee" />
							<text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text>
						</svg>
			</div>
		</div>

		<hr class="featurette-divider" />

		<div class="row featurette">
			<div class="col-md-7 order-md-2">
				<h2 class="featurette-heading">
					Oh yeah, it's that good. <span class="text-muted">See for
						yourself.</span>
				</h2>
				<p class="lead">Another featurette? Of course. More placeholder
					content here to give you an idea of how this layout would work with
					some actual real-world content in place.</p>
			</div>
			<div class="col-md-5 order-md-1">
				<svg
					class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
					width="500" height="500" xmlns="http://www.w3.org/2000/svg"
					role="img" aria-label="Placeholder: 500x500"
					preserveAspectRatio="xMidYMid slice" focusable="false">
							<title>Placeholder</title>
							<rect width="100%" height="100%" fill="#eee" />
							<text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text>
						</svg>
			</div>
		</div>

		<hr class="featurette-divider" />

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">
					And lastly, this one. <span class="text-muted">Checkmate.</span>
				</h2>
				<p class="lead">And yes, this is the last block of
					representative placeholder content. Again, not really intended to
					be actually read, simply here to give you a better view of what
					this would look like with some actual content. Your content.</p>
			</div>
			<div class="col-md-5">
				<svg
					class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
					width="500" height="500" xmlns="http://www.w3.org/2000/svg"
					role="img" aria-label="Placeholder: 500x500"
					preserveAspectRatio="xMidYMid slice" focusable="false">
							<title>Placeholder</title>
							<rect width="100%" height="100%" fill="#eee" />
							<text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text>
						</svg>
			</div>
		</div>

		<hr class="featurette-divider" />

		<!-- /END THE FEATURETTES -->
	</div>
	<!-- /.container -->
</main>

<jsp:include page="footer.jsp"></jsp:include>