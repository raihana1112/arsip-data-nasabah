
<?php 
// koneksi database
include '../../koneksi.php';
 
// menangkap data yang di kirim dari form
$tanggal = $_POST['tanggal'];
$no_cif = $_POST['no_cif'];
$no_rek = $_POST['no_rek'];
$nama = $_POST['nama'];
$alamat = $_POST['alamat'];
$setoran_awal = $_POST['setoran_awal'];

 
// menginput data ke database
mysqli_query($koneksi,"insert into tabungan_wadiah values('','$tanggal','$no_cif','$no_rek', '$nama', '$alamat', '$setoran_awal')");
 
// mengalihkan halaman kembali ke index.php
  echo
  "<script>
  alert('Data Berhasil Ditambah');
  document.location.href = '../tabungan-wadiah.php';
  </script>
  ";
?>