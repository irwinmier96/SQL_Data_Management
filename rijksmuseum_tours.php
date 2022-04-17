<?php

session_start();


// if (!(isset($_SESSION["user"]))) {
// 	# User is not logged in
// 	die("Please log in and come back to this page.");
// } 

?>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>InterContinental Amstel Amsterdam Tours of the Rijksmuseum</title>
</head>
<body>
	<strong><p style="font-size: 30px">Search here for details on each of the private tours booked by our guests to the Rijksmuseum here,
		<?php
		 echo($_SESSION["user"])
		?>!
	</p></strong>
	<br>
	<img src="rijksmuseumams.jpg" alt="Rijksmuseum" style="width:800px;height:400px;">
	<img src="rijkshall.jfif" alt="Night Watch" style="width:700px;height:400px;">
	<br>
	<br>
	<form method = "post" action = "rijksmuseum_result.php">

		<label for = "host_name" style="font-size: 30px">Search by our tour guides:</label>
		<input type = "text" name = "host_name">

		<br><br>
		<input type = "submit" value = "Go!" style="font-size: 30px">
	</form>
</body>
</html>