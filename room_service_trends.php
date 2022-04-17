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
	<title>InterContinental Room Service</title>
</head>
<body>
	<strong><p style="font-size: 30px">Search here for the room service options our guests have requested during their stay here,
		<?php
		 echo($_SESSION["user"])
		?>!
	</p></strong>
	<br>
	<img src="deluxe_amstel_amsterdam.jpg" alt="Deluxe Room" style="width:700px;height:400px;">
	<img src="inter_rest_ams.jpg" alt="Night Watch" style="width:700px;height:400px;">
	<br>
	<br>
	<form method = "post" action = "room_result.php">

		<br><br>
		<label for = "room_service" style="font-size: 30px">Search by our room service options:</label>
		<input type = "text" name = "room_service" style="font-size: 30px">

		<br><br>
		<input type = "submit" value = "Go!" style="font-size: 30px">
	</form>
</body>
</html>