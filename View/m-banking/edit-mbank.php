
<?php 
// koneksi database
include '../../koneksi.php';
 
// menangkap data yang di kirim dari form
$id = $_POST['id'];
$tanggal = $_POST['tanggal'];
$no_rek = $_POST['no_rek'];
$nama = $_POST['nama'];
$no_hp = $_POST['no_hp'];
$email = $_POST['email'];

// update data ke database
mysqli_query($koneksi,"update m_banking set tanggal='$tanggal',no_rek='$no_rek',nama='$nama',no_hp='$no_hp', email='$email' where id='$id'");
 
// mengalihkan halaman kembali ke index.php
  echo
  "<script>
  alert('Data Berhasil Terupdate');
  document.location.href = '../m-banking.php';
  </script>
  ";
 
?>