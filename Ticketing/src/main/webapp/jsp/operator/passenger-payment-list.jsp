<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
<meta name="description" content="Bootstrap.">  
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link href="/css/datatable.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/datatable.min.css">
<script type="text/javascript" src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.1.10/vue.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/webrtc-adapter/3.3.3/adapter.min.js"></script>
	
</head>
<body>
 <video id="preview" width="20%"></video> 
 <button type="button" class="btn btn-primary" onclick="ScanBtn()" id="scanBtn">SCAN</button>
 <button type="button" class="btn btn-danger" onclick="CloseBtn()" id="closeBtn">CLOSE</button>
	<div class="row">
		<div class="container">
			<h3 class="text-center">Payment List</h3>
			<hr>
			<div class="container text-left"></div>
			<br>
			<table class="table table-striped reponsive" id="myTable" style="overflow-x: auto;">
				<thead>
					<tr>
						<th>Transaction Code</th>
						<th>Payer Name</th>
						<th>Payer Email</th>
						<th>Payment Status</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="passengerPaymentDetails" items="${listOfPassengerPaymentDetails}">

						<tr>
							<td><c:out value="${passengerPaymentDetails.transaction_code}" /></td>
							<td><c:out value="${passengerPaymentDetails.payer_name}" /></td>
							<td><c:out value="${passengerPaymentDetails.payer_email}" /></td>
							<td><c:out value="${passengerPaymentDetails.payment_status}" /></td>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
			<a href="<%=request.getContextPath()%>/listOfPassengerPaymentDetails"
				class="btn btn-success">Show List</a>
		</div>
	</div>
	<!-- Fontawesome -->
<script src="https://kit.fontawesome.com/f86155eccc.js" crossorigin="anonymous"></script>
<script>
$(document).ready(function(){
    $('#myTable').dataTable();
});


var table = $('#myTable').DataTable();
let scanner = new Instascan.Scanner({video: document.getElementById('preview')});
function ScanBtn(){

Instascan.Camera.getCameras().then(function(cameras){
    if (cameras.length > 0) {
        scanner.start(cameras[0]);
    } else {
        alert("no camera found");
    }
}).catch(function (e) {
    console.error(e);
    
});

scanner.addListener('scan',function(c){
	table.search( c ).draw();
})

}

function CloseBtn(){
	console.log("close");
	scanner.stop();
	
}

</script>


</body>
</html>