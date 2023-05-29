<?php

error_reporting(E_ALL ^ E_DEPRECATED);
$servername = "localhost";
$username = "u1114618_purchase";
$password= "Disana4misbah@k";
$dbname="u1114618_purchase";

      $koneksi = mysqli_connect('localhost', 'root', '');
        $db = mysqli_select_db($koneksi ,$dbname);

	// Create connection
	global $conn;
	$conn = mysqli_connect($servername, $username, $password,$dbname);
	// Check connection
	if (!$conn) {
		die("Connection failed: " . mysqli_connect_error());
	}
?>
