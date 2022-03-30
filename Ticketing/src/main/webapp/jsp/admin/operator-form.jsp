<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>iWantTranseat</title>
	<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
		crossorigin="anonymous">
</head>

<c:if test='${sessionScope.account_type == "admin"}'>
	<jsp:include page="../sidebar.jsp"></jsp:include>
</c:if>
<c:if test='${sessionScope.account_type == "operator"}'>
	<jsp:include page="../sidebar_passenger.jsp"></jsp:include>
</c:if>


<body>
 
	<br><br>
	<div class="col-md-3"></div>
	<div class="container col-md-" style="margin: auto; width: 500; border: 3px solid #1C285C; padding: 10px;">	
  <div class="card">
   <div class="card-body">
    <c:if test="${operator != null}">
     <form action="updateOperator" method="post">
    </c:if>
    <c:if test="${operator == null}">
     <form action="insertOperator" method="post">
    </c:if>

    <caption>
     <h2>
      <c:if test="${operator != null}">
               Edit 
              </c:if>
      <c:if test="${operator == null}">
               Add New Operator
              </c:if>
     </h2>
    </caption>

    <c:if test="${operator != null}">
     <input type="hidden" name="id" value="<c:out value='${operator.id}' />" />
    </c:if>

    <fieldset class="form-group">
     <label>First Name</label> <input type="text"
      value="<c:out value='${operator.operator_firstname}' />" class="form-control"
      name="operator_firstname" required="required" minlength="3">
    </fieldset>

   <fieldset class="form-group">
     <label>Last Name</label> <input type="text"
      value="<c:out value='${operator.operator_lastname}' />" class="form-control"
      name="operator_lastname" minlength="3">
    </fieldset>

    <fieldset class="form-group">
     <label>User Name</label> <input type="text"
      value="<c:out value='${operator.operator_username}' />" class="form-control"
      name="operator_username" required="required">
    </fieldset>
    
     <fieldset class="form-group">
     <label>Password</label> <input type="password"
      value="<c:out value='${operator.operator_password}' />" class="form-control"
      name="operator_password" required="required">
    </fieldset>
				<button type="back" class="btn btn-danger"><a href="<%=request.getContextPath()%>/listOperator" style="color:white;"><i class="fa-solid fa-arrow-left"></i> BACK</a></button>
    <button type="submit" class="btn btn-success">Save</button>
    </form>
   </div>
  </div>
 </div>
	<div class="col-md-3"></div>

</body>
</html>