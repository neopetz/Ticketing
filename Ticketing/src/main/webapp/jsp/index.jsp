<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="navbar.jsp"></jsp:include>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/carousel.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index-style.css">
<style>

@import url('https://fonts.googleapis.com/css?family=Quicksand:400,700&display=swap');



</style>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
			
				<center>
			
					<img class="" src="${pageContext.request.contextPath}/assets/FULL_LOGO.jpg"
						style="height: 80px; width: 530px;margin-top:20px;border-radius:70px;margin-top:;">
				</center>
				
			</div>
			<!-- Form -->
				<!-- <form action="">
			<div class="col-md-4" style="margin-top: 15px;">
				
					<div class="form-row"
						style="padding-top: 15px; padding-left: 8px; padding-right: 8px; border-radius: 50px;">
						<div class="form-group col-md-3">
							<div class="dropdown bg1">
								<select required name="start_point"
									class="select form-select btn btn-outline-light dropdown-toggle "
									aria-labelledby="Default select example">
									<option class="dropdown-item" disabled selected hidden value="">From</option>
									<option class="dropdown-item">PHILIPPINES</option>
									<option class="dropdown-item">INDONESIA</option>
								</select>
							</div>
						</div>
						<div class="form-group col-md-3">
							<div class="dropdown bg1">

								<select required name="end_point"
									class="select form-select btn btn-outline-light dropdown-toggle "
									aria-labelledby="Default select example">
									<option class="dropdown-item" disabled selected hidden value="">To</option>
									<option class="dropdown-item">JAPAN</option>
									<option class="dropdown-item">RUSSIA</option>
								</select>
							</div>
						</div>
						<div class="form-group col-md-3">
							<div class="dropdown bg1">
								<input style="background-color: transparent; color: white" name="departure_date"
									required type="date" class="select btn-outline-light form-control input1"
									id="departure_date">
							</div>
						</div>
						<div class="form-group col-md-3" style="">
							<div class="dropdown bg1">
								<button class=" select btn btn-md btn-block btn-light" href="#"
									style="font-size: 13px; width: 100%; color: black;">
									<li class="fa fa-search"></li> Search
								</button>
							</div>
						</div>
					</div>
				</form>  -->
			</div>
		</div>
		
				


	<main role="main">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="img-fluid vw-100" src="${pageContext.request.contextPath}/assets/cover8.jpg"
						style="position: relative; width: 100% height:100%;">
					<div class="container">
						<div class="carousel-caption text-right" style="top:5%;">
							<h1 style="font-family: quicksand, Arial, sans-serif;color:black;">Going for a Trip?</h1>
							<p style="font-family: quicksand,  sans-serif">
								<a class="bg2 btn btn-lg btn-info" style="border-radius:40px 1px 40px 1px;"
									href="#" data-toggle="modal" data-target="#exampleModal">Book a seat !</a>
							</p>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img class="img-fluid vw-100" src="${pageContext.request.contextPath}/assets/mountain.jpg"
						style="position: relative;">
					<div class="container">
						<div class="carousel-caption text-right">
							<h1 style="font-family: quicksand,  sans-serif">Going for a Trip?</h1>
							<p style="font-family: quicksand,  sans-serif">
								<a class="bg2 btn btn-lg btn-info" style="border-radius:40px 1px 40px 1px;"
									href="#" data-toggle="modal" data-target="#exampleModal">Book a seat !</a>
							</p>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img class="img-fluid vw-100" src="${pageContext.request.contextPath}/assets/cover5.jpg"
						style="position: relative;">
					<div class="container">
						<div class="carousel-caption text-left">
							<h1 style="font-family: quicksand, sans-serif">Going for a Trip ?</h1>
							<p style="font-family: quicksand, sans-serif">
								<a class="bg2 btn btn-lg btn-info" style="border-radius:40px 1px 40px 1px;"
									href="#" data-toggle="modal" data-target="#exampleModal">Book a seat !</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			
			<button class="carousel-control-prev" type="button" data-target="#myCarousel" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
			</button>
			<button class="carousel-control-next" type="button" data-target="#myCarousel" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span>
			</button>
		</div>


		<!-- Marketing messaging and featurettes
  ================================================== -->
		<!-- Wrap the rest of the page in another container to center all the content. -->

		<div class="container marketing mt-4" style="font-family:quicksand,  sans-serif">

			<!-- Three columns of text below the carousel -->
			<div class="row text-center">
				<div class="col-lg-4">

					<img src="https://s1.rdbuz.com/Images/webplatform/rbdotcom/multiple_bus_service.svg" height="90">
					<h2>Multiple Bus Service</h2>
					<p>Choose from various bus available schedule</p>

					<p>
						<a class="btn btn-primary" href="#" style="background-color:#1C285C;
    background-image: linear-gradient(10deg, #637ce6 0%, #1c285c 100%);">See the Schedule &raquo;</a>
					</p>
				</div>
				<!-- /.col-lg-4 -->
				<div class="col-lg-4">
					<img src="https://s1.rdbuz.com/Images/webplatform/rbdotcom/global_coverage.svg" height="90">
					<h2>Wide Area Coverage</h2>
					<p>Get all your bus travel needs covered under one roof</p>
					<p>
						<a class="btn btn-primary" href="#" style="background-color: #637ce6;
    background-image: linear-gradient(10deg, #637ce6 0%, #1c285c 100%);">Check the Route &raquo;</a>
					</p>
				</div>
				<!-- /.col-lg-4 -->
				<div class="col-lg-4">
					<img src="https://s1.rdbuz.com/Images/webplatform/rbdotcom/customer_support.svg" height="90">
					<h2>Realtime</h2>
					<p>Realtime Booking and Tracking your location via Profile</p>
					<p>
						<a class="btn btn-primary" href="#" style="background-color: #637ce6;
    background-image: linear-gradient(10deg, #637ce6 0%, #1c285c 100%);">Book now &raquo;</a>
					</p>
				</div>
				<!-- /.col-lg-4 -->
			</div>
			<!-- /.row -->

			<!-- START THE FEATURETTES -->

			<hr class="featurette-divider">
			<div class="row featurette">
				<div class="col-md-7">
					<h2 class="featurette-heading" style=" color:#1C285C ">
						1. Do your research <span class="text-muted"></span>
					</h2>
					<p class="lead">Ticket prices vary from one bus company to the next.
						Be sure to do your research and compare companies and prices.
						iWantTranseat can help you do that as we have collected all the info you need
						and put it in one place, so comparing prices, schedules, and providers is a breeze.
						You can sort the results by price, departure time, and ticket types and compare what
						each bus company has to offer in a single search.</p>
				</div>
				<div class="col-md-5">
					<img class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500"
						height="500" src="${pageContext.request.contextPath}/assets/busresearch.jpg" role="img"
						aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false">

				</div>
			</div>

			<hr class="featurette-divider">

			<div class="row featurette">
				<div class="col-md-7 order-md-2">
					<h2 class="featurette-heading" style=" color:#1C285C ">
						2. Travel during off-peak hours. <span class="text-muted"></span>
					</h2>
					<p class="lead">
						There are often multiple daily departures, so if you can be flexible
						with your travel dates or schedule, choosing an overnight bus or
						traveling mid-week instead of the weekend will help you save on transportation costs..</p>
				</div>
				<div class="col-md-5 order-md-1">
					<img class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500"
						height="500" src="${pageContext.request.contextPath}/assets/busweather.jpg" role="img"
						aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false">


				</div>
			</div>

			<hr class="featurette-divider">



			<div class="row featurette">
				<div class="col-md-7">
					<h2 class="featurette-heading" style=" color:#1C285C ">
						3. Book Early <span class="text-muted"></span>
					</h2>
					<p class="lead">You can find the best bus tickets prices
						by booking in advance; the earlier you book your bus trip generally the cheaper your tickets
						will be!.</p>
				</div>
				<div class="col-md-5">
					<img class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500"
						height="500" src="${pageContext.request.contextPath}/assets/book early.jpg" role="img"
						aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false">


				</div>
			</div>

			<hr class="featurette-divider">

			<!-- /END THE FEATURETTES -->

		</div>
		<!-- /.container -->
	</main>

	<jsp:include page="footer.jsp"></jsp:include>

	<jsp:include page="terms-and-condition_modal.jsp"></jsp:include>

	<script src="${pageContext.request.contextPath}/js/index.js"></script>