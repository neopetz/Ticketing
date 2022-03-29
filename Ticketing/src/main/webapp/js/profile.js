let prevFirstname = $('#firstname').val();
let prevLastname = $('#lastname').val();
let prevEmail = $('#email').val();
let prevPhoneNumber = $('#phone_number').val();
let prevBirthdate = $('#birth_date').val();

// When clicked remove disabled in inputs and change the displayed buttons
$('#showEditFormBtn').on('click', function () {
	event.preventDefault();

	$('#fullname_field').addClass("d-none");
	$('#firstname_field').removeClass("d-none");
	$('#lastname_field').removeClass("d-none");

	$('#email').prop("disabled", false);
	$('#phone_number').prop("disabled", false);
	$('#birth_date').prop("disabled", false);
	$('#showEditFormBtn').addClass("d-none");
	$('#saveEditBtn').removeClass("d-none");
	$('#cancelEditBtn').removeClass("d-none");
	$('#closeModalBtn').addClass("d-none");
});

// When clicked add disabled in inputs and change the displayed buttons
$('#cancelEditBtn').on('click', function () {
	event.preventDefault();

	$('#firstname').val(prevFirstname);
	$('#lastname').val(prevLastname);
	$('#email').val(prevEmail);
	$('#phone_number').val(prevPhoneNumber);
	$('#birth_date').val(prevBirthdate);

	$('#fullname_field').removeClass("d-none");
	$('#firstname_field').addClass("d-none");
	$('#lastname_field').addClass("d-none");

	$('#email').prop("disabled", true);
	$('#phone_number').prop("disabled", true);
	$('#birth_date').prop("disabled", true);
	$('#showEditFormBtn').removeClass("d-none");
	$('#saveEditBtn').addClass("d-none");
	$('#cancelEditBtn').addClass("d-none");
	$('#closeModalBtn').removeClass("d-none");
});

// Automactically compute the age from the birth_date
function ageCount() {

	var dobget = document.getElementById("birth_date").value;
	var dob = new Date(dobget);

	var month_diff = Date.now() - dob.getTime();
	var age_dt = new Date(month_diff);
	var year = age_dt.getUTCFullYear();
	var age = Math.abs(year - 1970);

	document.getElementById('age').value = age;
}


// Validation for birth_date
var today = new Date();
var dd = today.getDate();
var mm = today.getMonth() + 1; //January is 0!
var yyyy = today.getFullYear() - 1; // - 1 for 1 year old verification

if (dd < 10) {
	dd = "0" + dd;
}

if (mm < 10) {
	mm = "0" + mm;
}

today = yyyy + "-" + mm + "-" + dd;
document.getElementById("birth_date").setAttribute("max", today);

// Automatically add dash on Phone Number
function addDash() {
	var inputValue = document.getElementById("contact").value;
	var inputValueLength = inputValue.length;
	if (inputValueLength == 4 || inputValueLength == 8) {
		document.getElementById("contact").value = inputValue + "-";
	}
}