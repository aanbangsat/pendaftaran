<?php
include "../koneksi.php";
	$kdpekerjaan=addslashes($_POST['kdpekerjaan']);
	$nmpekerjaan=addslashes($_POST['nmpekerjaan']);
	$exec=mysqli_query($query,"select * from pekerjaan where kdpekerjaan='".$kdpekerjaan."'");
	$r=mysqli_fetch_array($exec);
	$kdjabfield=$r[0];
	$nmjabfield=$r[1];
	if(mysqli_num_rows($exec)==0)
		$query=mysqli_query($conn,"insert into pekerjaan values('$kdpekerjaan','$nmpekerjaan')");
	else
		$query=mysqli_query($conn,"update pekerjaan set nmpekerjaan='$nmpekerjaan' where kdpekerjaan='$kdpekerjaan'");
	if(mysqli_query($query))
		header("location:./?p=pekerjaan&code=1");
	else
		header("location:./?p=pekerjaan&code=2");

?>