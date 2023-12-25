
<?php 
$koneksi = mysqli_connect("localhost","root","","arsip-data-nasabah");
 
// Check connection
if (mysqli_connect_errno()){
	echo "Koneksi database gagal : " . mysqli_connect_error();
}
 
?>