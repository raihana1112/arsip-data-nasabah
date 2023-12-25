
<?php 
// koneksi database
include '../../koneksi.php';
 
// menangkap data yang di kirim dari form
$id = $_POST['id'];
$tanggal = $_POST['tanggal'];
$no_cif = $_POST['no_cif'];
$no_rek = $_POST['no_rek'];
$nama = $_POST['nama'];
$jenis_rek = $_POST['jenis_rek'];

// update data ke database
mysqli_query($koneksi,"update atm_silver set tanggal='$tanggal',no_cif='$no_cif',no_rek='$no_rek',nama='$nama',jenis_rek='$jenis_rek' where id='$id'");
 
// mengalihkan halaman kembali ke index.php
  echo
  "<script>
  alert('Data Berhasil Terupdate');
  document.location.href = '../atm-silver.php';
  </script>
  ";
 
?>