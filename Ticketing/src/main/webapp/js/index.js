// for departure date validation
var today = new Date();
var dd = today.getDate() + 3; // + 3 for 3 days validation
var mm = today.getMonth() + 1; //January is 0!
var yyyy = today.getFullYear();

if (dd < 10) {
	dd = "0" + dd;
}

if (mm < 10) {
	mm = "0" + mm;
}

today = yyyy + "-" + mm + "-" + dd;
document.getElementById("departure_date").setAttribute("min", today);