
<html>
<head>
	<title>Results</title>
	<link rel='stylesheet' href='style.css'></link>
</head>
<body>
	<table>
		<tr>
			<th>Guest Language</th><th>Country of Origin</th><th>Vaccinated Status</th>
		</tr>
<?php

# Set up parameters to connect to database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "final_project_ams";

# Create connection to database
$conn = mysqli_connect($servername, $username, $password, $dbname);

# Check the connection was successful
if (!$conn) {
	die(mysqli_connect_error());
}

# SQL query to run

$sql = "
SELECT GuestLanguage, CountryOfOrigin, VaccinatedStatus
FROM Guests
WHERE GuestLanguage LIKE \"%{$_POST["search_item_lang"]}%\" ;
";




# Send SQL query to the database
$result = mysqli_query($conn, $sql);

# Fetch results from the SQL query
# OPTIONAL: MYSQLI_ASSOC setting
# Without this setting, the fields numbered. The first field is [0], the second is [1], etc.
# With this setting, the fields are named. First name is ["First_Name"], etc.
$data = mysqli_fetch_all($result, MYSQLI_ASSOC);

# Loop through query results row-by-row
# Each row will be stored in the $row variable
foreach ($data as $key => $value) {
	echo("<tr><td>{$value["GuestLanguage"]}</td><td>{$value["CountryOfOrigin"]}</td><td>{$value["VaccinatedStatus"]}</td></tr>");
}
?>
	</table>
<body>
</html>