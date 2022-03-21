<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>login</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Hubballi&family=Roboto:wght@100&display=swap" rel="stylesheet">
		<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="HandheldFriendly" content="true">
<style>
.divheader{
padding:1em; 
background-color: #1c285c;
background-image: 
radial-gradient(180deg, #1c285c 0%, #637ce6 100%);
}
.input1{
font-family:'Century Gothic';
border:none;
border-bottom: 1px solid lightgray; 
width:50%;

}

.btn{
background-image: linear-gradient(180deg, #1c285c 0%, #637ce6 100%);
margin-top:1em;
}

.font{
font-family:'Century Gothic';
}



/*
body{
 background-image: url('logo.png');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
  opcaity:50%;
}
*/


</style>
	</head>

    <body">

       <jsp:include page="navbar_admin.jsp"></jsp:include>
		
        <div class="container col-md-3 col-md-offset-3" style="overflow: auto;margin-top:10em;">
		<div class="divheader shadow rounded">
				<center><h6 style="color:white;font-family:'Century Gothic'">Administrator Login</h6></center>
			</div>
			<div class="container shadow p-3 mb-5 bg-white rounded" style="padding:30px">
			
            <form action="#" method="post" >
							 <div class="input-group input-group " id="floatingInput" style="margin-bottom:2em">
								  <input type="text" placeholder="Username" class="input1 form-control">		
							</div>
								<div class="input-group input-group"style="margin-bottom:2em">  
								 <input type="text" placeholder="Password" class="input1 form-control">
							 </div>
			
	
				 
                <button  type="submit" data-bs-toggle="button" autocomplete="off" class="btn btn-primary btn-lg btn-block">Login</button>
			
            </form>
			</div>
        </div>
        <jsp:include page="/jsp/footer.jsp"></jsp:include>
    </body>

    </html>
</html>