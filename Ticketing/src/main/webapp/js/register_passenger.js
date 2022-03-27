function ageCount() {

	var dobget = document.getElementById("birthday").value;
	var dob = new Date(dobget);

	var month_diff = Date.now() - dob.getTime();
	var age_dt = new Date(month_diff);
	var year = age_dt.getUTCFullYear();
	var age = Math.abs(year - 1970);

	document.getElementById('age').value = age;
}

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
document.getElementById("birthday").setAttribute("max", today);

function addDash() {
	var inputValue = document.getElementById("contact").value;
	var inputValueLength = inputValue.length;
	if (inputValueLength == 4 || inputValueLength == 8) {
		document.getElementById("contact").value = inputValue + "-";
	}
}