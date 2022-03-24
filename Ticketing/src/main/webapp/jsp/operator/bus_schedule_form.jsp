<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <jsp:include page="../header.jsp"></jsp:include>

    <div class="container vh-100">
        <div class="row d-flex flex-column min-vh-100 justify-content-center align-items-center">
            <div class="card w-50" style="width: 18rem;">
                <div class="card-header bg-dark text-white">
                    Bus Schedule
                </div>
                <div class="card-body">
                    <form action="">
                        <div class="form-group">
                            <label for="departure_time">Departure Time</label>
                            <input type="time" name="departure_time" class="form-control" id="departure_time">
                        </div>
                        <div class="form-group">
                            <label for="arrival_time">Arrival Time</label>
                            <input type="time" name="arrival_time" class="form-control" id="arrival_time">
                        </div>
                        <div class="d-flex justify-content-between">
                            <button type="button" class="btn btn-default">Back</button>
                            <button type="submit" class="btn btn-primary">Next</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="../footer.jsp"></jsp:include>
    </body>

    </html>