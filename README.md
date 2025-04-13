# 📚 Aplikasi Perpustakaan - PHPMaker 2021

Repositori ini berisi file proyek `PHPMaker` (.pmp) dan file dump SQL untuk membangun **aplikasi web perpustakaan** berbasis PHP dan MySQL. Aplikasi ini merupakan contoh implementasi dari buku _"Mudah dan Cepat: Revolusi Aplikasi Web dengan PHPMaker"_.

## 🧾 Deskripsi Singkat

Aplikasi perpustakaan ini mencakup fitur-fitur utama seperti:

- Manajemen buku (tambah/edit/hapus data buku)
- Peminjaman dan pengembalian buku
- Permintaan buku baru dari anggota
- Pengadaan buku berdasarkan permintaan
- Hak akses bertingkat (Admin, Pustakawan, Anggota/Pengunjung)
- Laporan statistik buku terpopuler dan keterlambatan pengembalian

Proyek ini dibuat menggunakan **PHPMaker 2021** dan didukung oleh **MySQL**. Desain aplikasi mengacu pada kebutuhan proses bisnis perpustakaan digital modern yang efisien dan mudah digunakan.

---

## 🛠️ File dalam Repositori

- `perpustakaan.pmp` → File proyek PHPMaker 2021
- `perpustakaan.sql` → Dump database MySQL yang berisi struktur dan data awal
- `README.md` → Dokumentasi proyek

---

## 🚀 Cara Menjalankan di Lokal

### 1. Install XAMPP
Pastikan Anda sudah menginstall **XAMPP** versi terbaru. Unduh dari: [https://www.apachefriends.org](https://www.apachefriends.org)

Aktifkan modul:
- Apache
- MySQL

### 2. Import Database
1. Buka browser dan akses `http://localhost/phpmyadmin`
2. Buat database baru bernama `perpustakaan`
3. Import file `perpustakaan.sql` ke dalam database tersebut

### 3. Generate Proyek dari PHPMaker
1. Buka aplikasi **PHPMaker 2021**
2. Buka file `perpustakaan.pmp`
3. Periksa koneksi database (pastikan user, password, dan nama database sudah sesuai)
4. Klik **Generate** untuk membuat aplikasi
5. Salin hasil generate ke folder `htdocs/perpustakaan` di direktori XAMPP Anda

### 4. Akses Aplikasi
Buka browser dan kunjungi:
```
http://localhost/perpustakaan/
```

---

## 👤 Akun Contoh

Gunakan akun berikut untuk mencoba sistem:

- **Admin**
  - Username: `admin1@mail.com`
  - Password: `hashed_password_3` (gantilah dengan hash yang sesuai jika implementasi login memverifikasi hash)

- **Pustakawan**
  - Username: `budi.santoso@mail.com`
  - Peran: `pengguna`

- **Publik**
  - Username: `cici.permata@mail.com`
  - Peran: `publik`

---

## 📘 Referensi
Buku ini mendampingi pembuatan aplikasi ini secara menyeluruh:

**Judul**: Mudah dan Cepat: Revolusi Aplikasi Web dengan PHPMaker  
**Penulis**: [Nama Penulis Anda]  
**Versi PHPMaker**: 2021  
**Link Buku**: [Coming soon]

---

## 🤝 Lisensi

Aplikasi ini bebas digunakan untuk keperluan edukasi. Harap mencantumkan atribusi kepada penulis dan repo ini jika digunakan sebagai referensi dalam karya lain.