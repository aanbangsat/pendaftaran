<?php
include "../koneksi.php";
	$kdpendidikan=addslashes($_GET['kdpendidikan']);
	$exec=mysqli_query($conn,"delete from pendidikan where kdpendidikan='".$kdpendidikan."'");
	if(mysqli_query($query))
		header("location:./?p=pendidikan&code=3");
	else
		header("location:./?p=pendidikan&code=2");

?>