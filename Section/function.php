<?php

// Koneksi ke DB
function koneksi() {
    $conn = mysqli_connect("localhost", "root", "", "prakweb_2023_b_213040037");
    return $conn;
}

// query data ke tabel buku
function query($query) {
  $conn = koneksi();
  $result = mysqli_query($conn, $query) or die(mysqli_error($conn));
  
  // Siapkan data $buku
  $rows = [];
  while ($row = mysqli_fetch_assoc($result)) {
      $rows[] = $row;
  }
  
  return $rows;
}

// Tambah data buku
function tambah($buku) {
  // Koneksi ke db
  $conn = koneksi();

  // Mendapatkan data-data dari form
  $judul = $buku["judul"];
  $penerbit = $buku["penerbit"];
  $penulis = $buku["penulis"];
  $tahun_terbit = $buku["tahun_terbit"];
  
  // Membuat query
  $query_tambah = "INSERT INTO buku VALUES (null, '$judul', '$penerbit', '$penulis' ,'$tahun_terbit')";
  
  // Mengirim query ke db
  mysqli_query($conn, $query_tambah) or die(mysqli_error($conn));

  // Mengembalikan db yang telah ditambah datanya
  return mysqli_affected_rows($conn);
}

// Hapus buku
function hapus($id) {
  // Koneksi ke db
  $conn = koneksi();

  // Mengirim query ke db
  mysqli_query($conn, "DELETE FROM buku WHERE id = '$id'") or die(mysqli_error($conn));
  
  // Mengembalikan db dengan data yang telah dihapus
  return mysqli_affected_rows($conn);
}

// Ubah buku
function ubah($buku) {
  // Koneksi ke db
  $conn = koneksi();

  // Mendapatkan data-data dari form
  $id = $buku['id'];
  $judul = htmlspecialchars($buku["judul"]);
  $penerbit = htmlspecialchars($buku["penerbit"]);
  $penulis = htmlspecialchars($buku["penulis"]);
  $tahun_terbit = htmlspecialchars($buku["tahun_terbit"]);
  
  // Membuat query
  $query_ubah = "UPDATE buku SET 
  judul = '$judul',
  penerbit = '$penerbit',
  penulis = '$penulis',
  tahun_terbit = '$tahun_terbit'
  WHERE 
  id = '$id';
  ";
  
  // Mengirim query ke db
  mysqli_query($conn, $query_ubah) or die(mysqli_error($conn));

  // Mengembalikan db dengan data yang telah diubah
  return mysqli_affected_rows($conn);
}