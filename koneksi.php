<?php

$server = "localhost";
$username = "root";
$password = "";
$db = "db_pendaftaran";

$conn = mysqli_connect($server,$username,$password);
$select = mysqli_select_db($conn,$db);

?>