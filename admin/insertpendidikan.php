<?php
include "../koneksi.php";
	$kdpendidikan=addslashes($_POST['kdpendidikan']);
	$nmpendidikan=addslashes($_POST['nmpendidikan']);
	
	$exec=mysqli_query($conn,"select * from pendidikan where kdpendidikan='".$kdpendidikan."'");
	$r=mysqli_fetch_array($exec);
	$kdjabfield=$r[0];
	$nmjabfield=$r[1];
	if(mysqli_num_rows($exec)==0)
		$query=mysqli_query($conn,"insert into pendidikan values('$kdpendidikan','$nmpendidikan')");
	else
		$query = mysqli_query($conn,"update pendidikan set nmpendidikan='$nmpendidikan' where kdpendidikan='$kdpendidikan'");
	if(mysqli_query($query))
		header("location:./?p=pendidikan&code=1");
	else
		header("location:./?p=pendidikan&code=2");

?>