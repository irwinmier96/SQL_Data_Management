<?php

session_start();


// if (!(isset($_SESSION["user"]))) {
// 	# User is not logged in
// 	die("Please log in and come back to this page.");
// } 

?>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>InterContinental Canal Tours</title>
</head>
<body>
	<strong><p style="font-size: 30px">Search here for details on each of the private tours booked by our guests of Amsterdam's canals here,
		<?php
		 echo($_SESSION["user"])
		?>!
	</p></strong>
	<br>
	<img src="amsterdam-jordaan.jpg" alt="Amsterdam Jordaan" style="width:700px;height:400px;">
	<img src="amsterdam_canal_night.jpg" alt="Amsterdam Canals" style="width:600px;height:400px;">
	<br>
	<br>
	<form method = "post" action = "canal_result.php">

		<label for = "model_number" style="font-size: 30px">Boat Model Number:</label>
		<select name="model_number" style="font-size: 30px"> <!--php likes name script -->
		  <option value="120">120</option>
		  <option value="130">130</option>
		  <option value="140">140</option>
		  <option value="160">160</option>
		  <option value="210">210</option>
		  <option value="220">220</option>
		  <option value="280">280</option>
		</select>

		<br><br>
		<label for = "tour_length" style="font-size: 30px">Tour Length:</label>
		<select name="tour_length" style="font-size: 30px"> <!--php likes name script -->
		  <option value="65">65</option>
		  <option value="70">70</option>
		  <option value="75">75</option>
		  <option value="80">80</option>
		  <option value="90">90</option>
		</select>

		<input type = "submit" value = "Go!" style="font-size: 30px">
	</form>
</body>
</html>