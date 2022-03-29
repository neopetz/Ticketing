<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<nav style="background-color: #637ce6;
    background-image: linear-gradient(10deg, #637ce6 0%, #1c285c 100%);font-family:Century gothic;font-size:10px;"
	class="navbar navbar-expand-lg navbar-dark bg-primary">
	
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
				href="${pageContext.request.contextPath}/jsp/index.jsp">Home<span 
					class="material-icons d-md-inline d-lg-none ml-4"
					style="font-size: 36px;"> home</span></a></li>
		</ul>
		<ul class="navbar-nav float-lg-right">
			<li class="nav-item"><a
				class="nav-link d-flex align-items-center justify-content-end h5"
				href="#" data-toggle="modal" data-target="#exampleModal">Login <span
					class="material-icons d-md-inline d-lg-none ml-4"
					style="font-size: 36px;"> login</span>
			</a></li>
			
<!-- MODAL -->
			<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			
			    <div class="modal-content" style="width:75%;margin-top:80px;">
			      <div class="modal-header" style=" background-color: #637ce6;
			    background-image: linear-gradient(10deg, #637ce6 0%, #1c285c 100%);font-family:Century gothic;font-size:10px;">
			        <h5 class="modal-title" id="exampleModalLabel" style="color:white;margin-left:80px;">Passenger Login</h5>
			      </div>
			      <div class="modal-body">
			      	<form action="<%=request.getContextPath()%>/LoginController" method="post">
			    <!--  include for from another jsp file -->
 					<jsp:include page="/jsp/login.jsp"></jsp:include>
 					
				    </div>
	     			 <div class="modal-footer">
			      	 <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			       	 <button type="submit" class="btn btn-primary">Login</button>
			       	 	</form>
			      </div>
			    </div>
			  </div>
			</div>
<!-- MODAL -->	
			
			
			<li class="nav-item"><a
				class="nav-link d-flex align-items-center justify-content-end h5"
				href="${pageContext.request.contextPath}/jsp/passenger/register_passenger.jsp">Register
					<span class="material-icons d-md-inline d-lg-none ml-4"
					style="font-size: 36px;"> app_registration</span>
			</a></li>
		</ul>
	</div>
</nav>
