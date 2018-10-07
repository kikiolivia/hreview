<?php 
global $conn;
$dbserver = "localhost";
$username = "root";
$password = "";
$dbname = "hreview";

$conn = mysqli_connect($dbserver, $username, $password, $dbname);

if (!$conn) {
	die("Connection failed : ".mysqli_connect_errno().
		" - ".mysqli_connect_error());
}

 ?>