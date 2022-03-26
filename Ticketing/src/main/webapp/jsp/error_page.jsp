<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ page isErrorPage="true" %>
        <jsp:include page="header.jsp"></jsp:include>

        <body class="bg-info text-white">
            <div class="container mt-5">
                <div class="d-flex flex-column justify-content-around">
                    <h1 class="display-2 font-weight-light">Oh no! <i class="fa-solid fa-face-sad-cry"></i></h1>
                    <h1 class="font-weight-light">Sorry for inconvience.</h1>
                </div>
                <hr class="vw-50 bg-white my-5">
                <p>Please contact the administrator.</p>
                <p>Error:
                    <span class="text-warning">
                        <%= exception %>
                    </span>
                </p>
                <div class="justify-content-center">
                    <button class="btn btn-light" onclick="history.back()">Go back</button>
                </div>
            </div>
        </body>

        </html>