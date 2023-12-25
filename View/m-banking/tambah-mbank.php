
<?php 
// koneksi database
include '../../koneksi.php';
 
// menangkap data yang di kirim dari form
$tanggal = $_POST['tanggal'];
$no_rek = $_POST['no_rek'];
$nama = $_POST['nama'];
$no_hp = $_POST['no_hp'];
$email = $_POST['email'];
 
// menginput data ke database
mysqli_query($koneksi,"insert into m_banking values('','$tanggal','$no_rek', '$nama', '$no_hp', '$email')");
 
// mengalihkan halaman kembali ke index.php
  echo
  "<script>
  alert('Data Berhasil Ditambah');
  document.location.href = '../m-banking.php';
  </script>
  ";
?>