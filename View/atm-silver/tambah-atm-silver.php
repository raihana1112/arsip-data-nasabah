
<?php 
// koneksi database
include '../../koneksi.php';
 
// menangkap data yang di kirim dari form
$tanggal = $_POST['tanggal'];
$no_cif = $_POST['no_cif'];
$no_rek = $_POST['no_rek'];
$nama = $_POST['nama'];
$jenis_rek = $_POST['jenis_rek'];
 
// menginput data ke database
mysqli_query($koneksi,"insert into atm_silver values('','$tanggal','$no_cif','$no_rek', '$nama', '$jenis_rek')");
 
// mengalihkan halaman kembali ke index.php
  echo
  "<script>
  alert('Data Berhasil Ditambah');
  document.location.href = '../atm-silver.php';
  </script>
  ";
?>