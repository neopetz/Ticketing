<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<jsp:include page="../header.jsp"></jsp:include>
<link rel="dns-prefetch" href="https://fast.appcues.com">
<link rel="dns-prefetch" href="https://fonts.googleapis.com">
<link rel="alternate" type="application/json+oembed"
	href="https://codepen.io/api/oembed?url=https%3A%2F%2Fcodepen.io%2Fsiiron%2Fpen%2FMYXZWg&format=json"
	title="CSS seat booking" />
<link rel="stylesheet" media="all"
	href="https://cpwebassets.codepen.io/assets/global/global-cbc9025a1911ed90aceb8a9e53c5a9a927d96b296ffedaff493509da251a0e34.css" />
<link rel="stylesheet" media="screen"
	href="https://cpwebassets.codepen.io/assets/packs/css/everypage-dd76a3c2.css" />
<link rel="stylesheet" media="all"
	href="https://cpwebassets.codepen.io/assets/editor/editor-ce84559792d1fef032d25f19e7cf0e24b7e0a3308e8c697b3b8ef7cd2411b83f.css" />
<link rel="stylesheet" media="screen"
	href="https://cpwebassets.codepen.io/assets/editor/themes/twilight-9eb71b6edb11814ec9302f458eb8606e9eb58d14ef36cdf785d88aca31de5447.css"
	id="cm-theme" />

<style>
body {
	background-color: white;
	padding-left: 0;
}

* {
	box-sizing: border-box;
}

.screen {
	border: 1px solid #555;
	box-shadow: 0 3px 10px rgba(255, 255, 255, 0.9);
	margin: 20px 0;
	margin-top: 0;
	width: 540px;
}

section {
	display: flex;
	margin-bottom: 5px;
}

section>label, section>div, section>span {
	background-color: white;
	border: 2px outset;
	border-bottom: 4px solid #637CE6;
	border-radius: 5px 5px 0 0;
	color: black;
	padding: 5px;
	cursor: pointer;
	width: 30px;
	text-align: center;
}

section>span {
	background-color: transparent;
	border-color: transparent;
}

section>div:active {
	background-color: black;
}

input[type="checkbox"] {
	z-index: 2;
	opacity: 0;
	width: 85px;
	height: 55px;
	margin: 5px;
}

input[type="checkbox"]+label {
	padding: 10px;
	margin-left: -60px;
	z-index: 1;
	width: 70px;
	border-radius: 10px 10px 10px 10px;
}

input[type="checkbox"]:checked+label {
	background-color: #1C285C;
	color: white;
}

input[type="checkbox"]:disabled+label {
	background-color: red;
	color: white;
	border-color: #400;
	opcaity: 0;
	z-index: 2;
}

.input1[type="checkbox"]:disabled+label {
	background-color: none;
	border:;
	opcaity: 1;
	z-index: 2;
}
/* CSS for LEGEND */
legend {
	background-color: black;
	color: white;
	padding: 5px 10px;
	width: 30px;
	height: 30px;
}

/* CSS for hover */
input[type="checkbox"]:hover+label {
	background-color: #637CE6;
	color: white;
	border-color: none;
	opcaity: 0;
}
</style>
</head>

<div class="form-row">
	<div class="col-md-3"></div>
	<div class="col-md-4 mt-5">
		<section>
			<span></span> <span></span> <span></span> <input class="form-control"
				type="text" value="DRIVER"
				style="width: 100%; text-align: center; background-color: #1C285C; color: white"
				disabled> <span></span> <span></span> <span></span> <input
				class="form-control" type="text" value="CONDUCTOR"
				style="width: 80%; text-align: center; background-color: #1C285C; color: white;"
				disabled> <span></span>
		</section>
		<section>
			<span></span> <input class="single-checkbox" type="checkbox"
				value="1"> <label>1</label> <input class="single-checkbox"
				type="checkbox" value="2"> <label>2</label> <input
				class="single-checkbox" type="checkbox" value="3"> <label>3</label>
			<span></span> <input class="single-checkbox" type="checkbox"
				value="4"> <label>4</label> <input class="single-checkbox"
				type="checkbox" value="5"> <label>5</label> <span></span>
		</section>
		<section>
			<span></span> <input class="single-checkbox" type="checkbox"
				value="7"> <label>6</label> <input class="single-checkbox"
				type="checkbox" value="8"> <label>7</label> <input
				class="single-checkbox" type="checkbox" value="9"> <label>8</label>
			<span></span> <input class="single-checkbox" type="checkbox"
				value="10"> <label>9</label> <input class="single-checkbox"
				type="checkbox" value="11"> <label>10</label> <span></span>
		</section>
		<section>
			<span></span> <input class="single-checkbox" type="checkbox"
				value="13"> <label>11</label> <input class="single-checkbox"
				type="checkbox" value="14"> <label>12</label> <input
				class="single-checkbox" type="checkbox" value="15"> <label>13</label>
			<span></span> <input class="single-checkbox input1" type="checkbox">
			<input class="single-checkbox input1" type="checkbox"> <span></span>
		</section>
		<section>
			<span></span> <input class="single-checkbox" type="checkbox"
				value="19"> <label>14</label> <input class="single-checkbox"
				type="checkbox" value="20"> <label>15</label> <input
				class="single-checkbox" type="checkbox" value="21"> <label>16</label>
			<span></span> <input class="single-checkbox" type="checkbox"
				value="22"> <label>17</label> <input class="single-checkbox"
				type="checkbox" value="23"> <label>18</label> <span></span>
		</section>
		<section>
			<span></span> <input class="single-checkbox" type="checkbox"
				value="19"> <label>19</label> <input class="single-checkbox"
				type="checkbox" value="20"> <label>20</label> <input
				class="single-checkbox" type="checkbox" value="21"> <label>21</label>
			<span></span> <input class="single-checkbox" type="checkbox"
				value="22"> <label>22</label> <input class="single-checkbox"
				type="checkbox" value="23"> <label>23</label> <span></span>
		</section>
		<section>
			<span></span> <input class="single-checkbox" type="checkbox"
				value="19" disabled> <label>24</label> <input
				class="single-checkbox" type="checkbox" value="20"> <label>25</label>
			<input class="single-checkbox" type="checkbox" value="21"> <label>26</label>
			<span></span> <input class="single-checkbox" type="checkbox"
				value="22"> <label>27</label> <input class="single-checkbox"
				type="checkbox" value="23"> <label>28</label> <span></span>
		</section>
		<section>
			<span></span> <input class="single-checkbox" type="checkbox"
				value="19" disabled> <label>29</label> <input
				class="single-checkbox" type="checkbox" value="20"> <label>30</label>
			<input class="single-checkbox" type="checkbox" value="21"> <label>31</label>
			<span></span> <input class="single-checkbox" type="checkbox"
				value="22"> <label>32</label> <input class="single-checkbox"
				type="checkbox" value="23"> <label>33</label> <span></span>
		</section>

		<center>
			<input
				style="background-color: red; width: 20px; height: 20px; margin-left: 20px;"
				value=""> <label>Unavailable Seat</label> <input
				style="background-color: white; width: 20px; height: 20px; margin-left: 20px;"
				value=""> <label>Vacant Seat</label> <input
				style="background-color: #1C285C; width: 20px; height: 20px; margin-left: 20px;"
				value=""> <label>Selected Seat</label>
		</center>
	</div>
	<div class="col-md-4"></div>
</div>
</body>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"
	type="text/javascript"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"
	type="text/javascript"></script>
<script type="text/javascript">
	$('input[type=checkbox]').on('change', function(e) {
		if ($('input[type=checkbox]:checked').length > 3) {
			$(this).prop('checked', false);
			alert("allowed only 3");
		}
	});
</script>
</html>