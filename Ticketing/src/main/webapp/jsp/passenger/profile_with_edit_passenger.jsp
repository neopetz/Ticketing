<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!-- Modal -->
	<div class="modal fade" id="profileModal" tabindex="-1" aria-labelledby="profileModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header text-white"
					style="background-image: linear-gradient(10deg, #637ce6 0%, #1c285c 100%);">
					<h5 class="modal-title" id="profileModalLabel">Profile</h5>
					<button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form action="">
					<div class="modal-body">
						<div class="form-row">
							<input type="hidden" name="user_id">
							<div id="fullname_field" class="form-group col-12">
								<label for="fullname">Full Name</label> <input type="text"
									class="form-control text-capitalize" id="fullname" value="firstname lastname"
									disabled>
							</div>

							<div id="firstname_field" class="form-group col-6 d-none">
								<label for="firstname">First Name</label> <input type="text"
									class="form-control text-capitalize" id="firstname" name="firstname"
									value="firstname" pattern="[A-Za-z]{1,20}" title="Input letters only" maxlength="20"
									required>
							</div>

							<div id="lastname_field" class="form-group col-6 d-none">
								<label for="lastname">Last Name</label> <input type="text"
									class="form-control text-capitalize" id="lastname" name="lastname" value="lastname"
									pattern="[A-Za-z]{1,20}" title="Input letters only" maxlength="20" required>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="email">Email Address</label> <input type="email" class="form-control"
									id="email" name="email" value="email@email.com" required maxlength="30" disabled>
							</div>
							<div class="form-group col-md-6">
								<label for="phone_number">Phone Number</label> <input type="tel" class="form-control"
									id="phone_number" name="phone_number" value="0911-222-3333" maxlength="13"
									onkeypress="addDash()" pattern="[0-9]{4}-[0-9]{3}-[0-9]{4}" title="09XX-XXX-XXXX"
									disabled>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="birthdate">Birthday</label> <input type="date" class="form-control"
									id="birthdate" name="birthdate" value="2022-01-01" onchange="ageCount()" required
									disabled>
							</div>
							<div class="form-group col-md-6">
								<label for="age">Age</label> <input type="num" class="form-control" id="age" name="age"
									value="1" disabled>
							</div>
						</div>

					</div>
					<div class="modal-footer d-flex justify-content-between">
						<!-- For enabling form -->
						<button id="showEditFormBtn" type="button" class="btn btn-primary">Edit</button>
						<!-- Submit Button -->
						<button id="saveEditBtn" type="submit" class="btn btn-primary d-none">Save</button>
						<!-- Cancel the Edit -->
						<button id="cancelEditBtn" type="button" class="btn btn-default d-none">Cancel</button>
						<!-- Close the modal -->
						<button id="closeModalBtn" type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
					</div>
				</form>
			</div>
		</div>
	</div>