<?php
include "../koneksi.php";
$kdpendaftar= $_GET ['kdpendaftar'];

	$koneksi= mysqli_query($conn,"update pendaftar set statusdaftar='Ditolak' where kdpendaftar='$kdpendaftar'");
		
if($koneksi)
		header("location:./?p=seleksi&code=1");
else
	header("location:./?p=seleksi&code=2");

?>