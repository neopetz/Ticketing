<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<nav style="background-color: #151451;"	

	class="navbar navbar-expand-lg navbar-light shadow ">
	
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
				href="${pageContext.request.contextPath}/jsp/index.jsp"  style="color: #637ce6;font-size: 15px;font-family:quicksand,sans-serif;font-weight:700">Home<span 
					class="material-icons d-md-inline d-lg-none ml-4"
					style="font-size: 36px;"> home</span></a></li>
					<li class="nav-item"><a
				class="nav-link d-flex align-items-center justify-content-end h5"
				href="${pageContext.request.contextPath}/jsp/index.jsp"  style="color: #637ce6;font-size: 15px;font-family:quicksand,sans-serif;font-weight:700">Schedule<span 
					class="material-icons d-md-inline d-lg-none ml-4"
					style="font-size: 36px;"> schedule</span></a></li>
					<li class="nav-item"><a
				class="nav-link d-flex align-items-center justify-content-end h5"
				href="${pageContext.request.contextPath}/jsp/index.jsp"  style="color: #637ce6;font-size: 15px;font-family:quicksand,sans-serif;font-weight:700">Routes<span 
					class="material-icons d-md-inline d-lg-none ml-4"
					style="font-size: 36px;"> routes</span></a></li>
		</ul>
		
		<ul class="navbar-nav float-lg-right">
			<li class="nav-item" style="border-color:blue"><a
				class="nav-link d-flex align-items-center justify-content-end h5"
				href="#" data-toggle="modal" data-target="#exampleModal" style="color: #637ce6;font-size: 15px;border:10px;font-family:QuickSand,sans-serif;font-weight:700">Login or Signup<span
					class="material-icons d-md-inline d-lg-none ml-4"
					"> login</span>
			</a></li>
			
<!-- MODAL -->
			<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			
			    <div class="modal-content" style="width:75%;margin-top:80px;margin-left:100px;border-radius: 20px 20px 12px 12px">
			      <div class="modal-header" style=" background-color: #637ce6;
			    background-image: linear-gradient(10deg, #637ce6 0%, #1c285c 100%);font-family:Century gothic;font-size:8px;border-radius: 12px 12px 0px 0px">
			        <h6 class="modal-title" id="exampleModalLabel" style="color:white;margin-left:150px;">Login</h6>
			      </div>
			      <div class="modal-body">
			      	<form action="<%=request.getContextPath()%>/LoginController" method="post">
			    <!--  include for from another jsp file -->
 					<jsp:include page="/jsp/login.jsp"></jsp:include>
 					
				    </div>
	     			 <div class="modal-footer" style="font-family:quicksand,  sans-serif">
	     			 <p>By proceeding, you agree to iWantTranSeat Privacy Policy,<a href="" data-toggle="modal" data-target="#myModal"> User Agreement and Terms of Service</a></p>
			      	 <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			       	 <button type="submit" class="btn btn-primary">Login</button>
			       	 	</form>
			      </div>
			    </div>
			  </div>
			</div>
<!-- MODAL -->	
			
		
		</ul>
		
			
<!-- MODAL -->
			<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			
			    <div class="modal-content" style="width:100%;margin-top:80px;">
			      <div class="modal-header" style=" background-color: #06cfc1;font-family:quicksand, sans-serif;font-weight:700;font-size:10px;">
			        <h5 class="modal-title" id="exampleModalLabel" style="color:white;margin-left:90px;">Passenger Registration Here</h5>
			      </div>
			      <div class="modal-body">
			      	<form action="<%=request.getContextPath()%>/PassengerVerify" method="post">
			    <!--  include for from another jsp file -->
 					<jsp:include page="/jsp/passenger/register_passenger.jsp"></jsp:include>
 					
				    </div>
	     			 <div class="modal-footer">
			      	 <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			       	<button type="submit" name="action" value="register"
						class="btn btn-primary btn-l btn2">SUBMIT</button>
			       	 	</form>
			      </div>
			    </div>
			  </div>
			</div>
<!-- MODAL -->	
	
	</div>
</nav>
