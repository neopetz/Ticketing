<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <jsp:include page="../header.jsp"></jsp:include>

    <div class="container vh-100">
        <div class="row d-flex flex-column min-vh-100 justify-content-center align-items-center">
            <div class="card w-50" style="width: 18rem;">
                <div class="card-header bg-dark text-white">
                    Bus
                </div>
                <div class="card-body">
                    <form action="">
                        <div class="form-group">
                            <label for="exampleFormControlSelect1">Bus</label>
                            <select class="form-control" id="exampleFormControlSelect1">
                                <option>Bus 1</option>
                                <option>Bus 2</option>
                                <option>Bus 3</option>
                                <option>Bus 4</option>
                                <option>Bus 5</option>
                            </select>
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