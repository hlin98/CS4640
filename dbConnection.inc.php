<?php

$server = "localhost";
$username = "root";
$password = "";
$dbname = "Reciplz";

$conn = mysqli_connect($server, $username, $password, $dbname);
if($conn === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
?>
