<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Operator</title>

<link rel="stylesheet"
 href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
 integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
 crossorigin="anonymous">

</head>

</head>
<body>
 <header>
  <nav class="navbar navbar-expand-md navbar-dark"
   style="background-color: tomato">
   <div>
    <a href="https://www.google.com" class="navbar-brand"> Operator</a>
   </div>

   <ul class="navbar-nav">
    <li><a href="<%=request.getContextPath()%>/listOperator"
     class="nav-link">Operator's List</a></li>
   </ul>

   <ul class="navbar-nav navbar-collapse justify-content-end">
    <li><a href="<%=request.getContextPath()%>/logout"
     class="nav-link">Logout</a></li>
   </ul>
  </nav>
 </header>
 <div class="container col-md-5">
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

    <button type="submit" class="btn btn-success">Save</button>
    </form>
   </div>
  </div>
 </div>

 <jsp:include page="/jsp/footer.jsp"></jsp:include>
</body>
</html>