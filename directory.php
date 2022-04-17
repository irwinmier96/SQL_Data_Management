<?php

session_start();

$_SESSION["user"] =  $_POST["user"];

// if (!(isset($_SESSION["user"]))) { //use these on subsequent pages
// 	# User is not logged in
// 	die("Please log in and come back to this page.");
// } 

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Directory</title>
</head>
<body>
	<strong><p style="font-size: 30px"> Welcome,
		<?php
		echo($_POST["user"])

		
		?>!
		</p></strong>
	<br>
	<img src="amsterdam_canal_img.jpg" alt="Amsterdam" style="width:800px;height:400px;">
	<br>
	<p style="font-size: 30px">In this system, you can check guest information, as well as tour information for each guest for InterContinental Amstel Amsterdam. What would you like to do?</p>
		<a href="search_guests.php" style="font-size: 30px">Search hotel guests by their preferred language</a>
		<br>
		<a href="rijksmuseum_tours.php" style="font-size: 30px">More Information on Tours to the Rijksmuseum</a>
		<br>
		<a href="canal_tours.php" style="font-size: 30px">More Information on Our Private Canal Tours around Amsterdam</a>
		<br>
		<a href="room_service_trends.php" style="font-size: 30px">Popular Room Service Options at Our Hotel</a>
</body>
</html>