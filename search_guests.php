<?php

session_start();


// if (!(isset($_SESSION["user"]))) {
// 	# User is not logged in
// 	die("Please log in and come back to this page.");
// } 

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Guest DataBase for InterContinental Amstel Amsterdam</title>
</head>
<body>
	<strong><p style="font-size: 30px">Search the guest database for the hotel here,
		<?php
		 echo($_SESSION["user"])
		?>!
	</p></strong>
	<br>
	<form method = "post" action = "search_result.php">
		<label for = "search_item_lang">Search guests by guest language:</label>
		<input type = "text" name = "search_item_lang">
	
		<br>
		<input type = "submit" value = "Go!">
	</form>
</body>
</html>