<?php
include "../koneksi.php";
	$kdpendaftar=addslashes($_POST['kdpendaftar']);
	$nama=addslashes($_POST['nama']);
	$exec=mysqli_query($conn,"select * from pendaftar where kdpendaftar='".$kdpendaftar."'");
	$r=mysqli_fetch_array($exec);
	$kdjabfield=$r[0];
	$nmjabfield=$r[1];
	if(mysqli_num_rows($exec)==0)
		$query=mysqli_query($conn,"update pendaftar set nama='$nama' where kdpendaftar='$kdpendaftar'");
	
	else
		header("location:./?p=pendaftar&code=2");

?>