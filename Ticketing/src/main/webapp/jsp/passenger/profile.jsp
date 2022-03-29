<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <jsp:include page="../header.jsp"></jsp:include>
        <jsp:include page="navbar_passenger.jsp"></jsp:include>
        <div class="container my-5">
            
            <div class="row h-100 justify-content-center align-items-center">
                <div class="col-8">
                    <div class="card">
                        <form action="updatePassenger">
                            <div class="card-header">Account info</div>
                            <div class="card-body">
                                <input type="hidden" name="user_id" value='<c:out value="${existingPassenger.id}" />'>
                                <div class="form-row">
                                    <div id="fullname_field" class="form-group col-12">
                                        <label for="fullname">Full Name</label> <input type="text"
                                            class="form-control text-capitalize" id="fullname"
                                            value='<c:out value="${existingPassenger.passengerLastname}, ${existingPassenger.passengerFirstname}" />'
                                            disabled>
                                    </div>
                                    <div id="firstname_field" class="form-group col-6 d-none">
                                        <label for="firstname">First Name</label> <input type="text"
                                            class="form-control text-capitalize" id="firstname" name="firstname"
                                            value='<c:out value="${existingPassenger.passengerFirstname}" />'
                                            pattern="[a-zA-Z][a-zA-Z ]{1,20}" title="Input letters only" maxlength="20"
                                            required>
                                    </div>

                                    <div id="lastname_field" class="form-group col-6 d-none">
                                        <label for="lastname">Last Name</label> <input type="text"
                                            class="form-control text-capitalize" id="lastname" name="lastname"
                                            value='<c:out value="${existingPassenger.passengerLastname}" />'
                                            pattern="[a-zA-Z][a-zA-Z ]{1,20}" title="Input letters only" maxlength="20"
                                            required>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="email">Email Address</label> <input type="email"
                                            class="form-control" id="email" name="email"
                                            value='<c:out value="${existingPassenger.passengerEmail}" />' required
                                            maxlength="30" disabled>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="phone_number">Phone Number</label> <input type="tel"
                                            class="form-control" id="phone_number" name="phone_number"
                                            value='<c:out value="${existingPassenger.passengerPhoneNumber}" />'
                                            maxlength="13" onkeypress="addDash()" pattern="[0-9]{4}-[0-9]{3}-[0-9]{4}"
                                            title="09XX-XXX-XXXX" disabled>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="birthdate">Birthday</label> <input type="date" class="form-control"
                                            id="birth_date" name="birth_date"
                                            value='<c:out value="${existingPassenger.passengerBirthDate}" />'
                                            onchange="ageCount()" required disabled>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="age">Age</label> <input type="num" class="form-control" id="age"
                                            name="age" value='<c:out value="${existingPassenger.passengerAge}" />'
                                            readonly>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between">
                                <!-- For enabling form -->
                                <button id="showEditFormBtn" type="button" class="btn btn-primary">Edit</button>
                                <!-- Submit Button -->
                                <button id="saveEditBtn" type="submit" class="btn btn-primary d-none">Save</button>
                                <!-- Cancel the Edit -->
                                <button id="cancelEditBtn" type="button" class="btn btn-default d-none">Cancel</button>
                                <!-- Close the modal -->
                                <button id="closeModalBtn" type="button" class="btn btn-secondary"
                                    onclick="history.back()">Back</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp"></jsp:include>
        <jsp:include page="change_password.jsp"></jsp:include>
        <script src="${pageContext.request.contextPath}/js/profile.js"></script>