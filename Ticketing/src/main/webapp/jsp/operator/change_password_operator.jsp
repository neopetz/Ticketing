<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <html>

        <head>
            <title>iWantTranseat</title>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
                integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
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
            <div class="container col-md-12" style="width: 500; border: 3px solid #1C285C; padding: 10px;">
                <div class="card">
                    <div class="card-body">
                        <form action="changePasswordOperator" method="post">

                            <caption>
                                <h2>
                                    Change Password
                                </h2>
                            </caption>
                            <input type="hidden" name="username" value="<c:out value='${sessionScope.username}' />" />

                            <div class="form-group">
                                <label for="old_password">Old Password</label>
                                <input type="password" class="form-control" id="old_password" name="old_password"
                                    required minlength="8" maxlength="20">
                            </div>
                            <div class="form-group">
                                <label for="new_password">New Password</label>
                                <input type="password" class="form-control" id="new_password" name="new_password"
                                    required minlength="8" maxlength="20">
                            </div>
                            <div class="form-group">
                                <label for="confirm_new_password">Confirm New Password</label>
                                <input type="password" class="form-control" id="confirm_new_password"
                                    name="confirm_new_password" onchange="checkConfirmPassword()" required minlength="8"
                                    maxlength="20">
                            </div>
                            <div class="text-center">
                            	<button type="submit" class="btn btn-success">Save</button>
                            </div>
                        </form>
                        <c:if test="${NOTIFICATION != null }">
                            <c:if test="${passwordChanged != null }">
                                    <p class="text-center text-success">${NOTIFICATION}</p>
                            </c:if>
                            <c:if test="${passwordChanged == null }">
                                    <p class="text-center text-warning">${NOTIFICATION}</p>
                            </c:if>
                        </c:if>
                    </div>
                </div>
            </div>
            <div class="col-md-3"></div>


            <!-- JAVASCRIPTS -->
            <!-- Note: For faster loading of pages, javaScripts should be in the footer. -->
            <!-- JQuery should be loaded before other javaScripts -->
            <!-- JQuery -->
            <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
                integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
                crossorigin="anonymous"></script>
            <!-- Bootstrap 4 JS -->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
                crossorigin="anonymous"></script>
            <script>
                function checkConfirmPassword() {
                    let new_password = $('#new_password').val();
                    let confirm_new_password = $('#confirm_new_password').val();

                    if (new_password !== confirm_new_password) {
                        alert("New Password and Confirm Password not match");
                    }
                }
            </script>
        </body>

        </html>