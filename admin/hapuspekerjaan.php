<?php
include "../koneksi.php";
	$kdpekerjaan=addslashes($_GET['kdpekerjaan']);
	$exec=mysqli_query($conn,"delete from pekerjaan where kdpekerjaan='".$kdpekerjaan."'");
	if(mysqli_query($query))
		header("location:./?p=pekerjaan&code=3");
	else
		header("location:./?p=pekerjaan&code=2");

?>