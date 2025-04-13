-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: perpustakaan
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `buku`
--

DROP TABLE IF EXISTS `buku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `penerbit` varchar(100) DEFAULT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `jumlah` int(11) NOT NULL,
  `jumlah_tersedia` int(11) NOT NULL,
  `dibuat_pada` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_pengadaan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_buku`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buku`
--

LOCK TABLES `buku` WRITE;
/*!40000 ALTER TABLE `buku` DISABLE KEYS */;
INSERT INTO `buku` VALUES (1,'Laskar Pelangi','Andrea Hirata','Bentang Pustaka','978-979-1227',10,8,'2023-10-01 03:00:00',NULL),(2,'Bumi Manusia','Pramoedya Ananta','Hasta Mitra','978-979-8659',5,3,'2023-10-02 04:00:00',NULL),(3,'Ayat-Ayat Cinta','Habiburrahman ES','Republika','978-979-1102',7,5,'2023-10-03 05:00:00',NULL),(4,'Negeri 5 Menara','Ahmad Fuadi','Gramedia','978-979-2233',12,10,'2023-10-04 06:00:00',NULL),(5,'Tenggelamnya Kapal Van Der','Hamka','Bulan Bintang','978-979-4180',8,6,'2023-10-05 07:00:00',NULL),(6,'Perahu Kertas','Dee Lestari','Bentang Pustaka','978-979-1228',9,7,'2023-10-06 08:00:00',NULL),(7,'Pulang','Tere Liye','Republika','978-979-1103',6,4,'2023-10-07 09:00:00',NULL),(8,'Hujan','Tere Liye','Gramedia','978-979-2234',11,9,'2023-10-08 10:00:00',NULL),(9,'Ronggeng Dukuh Paruk','Ahmad Tohari','Gramedia','978-979-2235',4,2,'2023-10-09 11:00:00',NULL),(10,'Sang Pemimpi','Andrea Hirata','Bentang Pustaka','978-979-1229',10,8,'2023-10-10 12:00:00',NULL),(12,'Kambing Jantan','Raditya Dika',NULL,NULL,10,10,'2025-03-12 05:43:17',32);
/*!40000 ALTER TABLE `buku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peminjaman`
--

DROP TABLE IF EXISTS `peminjaman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT,
  `id_pengguna` int(11) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `tanggal_peminjaman` date NOT NULL,
  `tanggal_jatuh_tempo` date NOT NULL,
  `tanggal_pengembalian` date DEFAULT NULL,
  `status` enum('dipinjam','dikembalikan') NOT NULL,
  PRIMARY KEY (`id_peminjaman`),
  KEY `id_pengguna` (`id_pengguna`),
  KEY `id_buku` (`id_buku`),
  CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`),
  CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peminjaman`
--

LOCK TABLES `peminjaman` WRITE;
/*!40000 ALTER TABLE `peminjaman` DISABLE KEYS */;
INSERT INTO `peminjaman` VALUES (1,1,1,'2023-10-01','2023-10-15','2023-10-14','dikembalikan'),(2,2,2,'2023-10-02','2023-10-16',NULL,'dipinjam'),(3,5,3,'2023-10-03','2023-10-17','2023-10-16','dikembalikan'),(4,4,4,'2023-10-04','2023-10-18',NULL,'dipinjam'),(5,5,5,'2023-10-05','2023-10-19','2023-10-18','dikembalikan'),(6,1,6,'2023-10-06','2023-10-20',NULL,'dipinjam'),(7,2,7,'2023-10-07','2023-10-21','2023-10-20','dikembalikan'),(8,4,8,'2023-10-08','2023-10-22',NULL,'dipinjam'),(9,4,9,'2023-10-09','2023-10-23','2023-10-22','dikembalikan'),(10,5,10,'2023-10-10','2023-10-24',NULL,'dipinjam'),(11,1,1,'2023-10-11','2023-10-25','2023-10-24','dikembalikan'),(12,2,2,'2023-10-12','2023-10-26',NULL,'dipinjam'),(13,1,3,'2023-10-13','2023-10-27','2023-10-26','dikembalikan'),(14,4,4,'2023-10-14','2023-10-28',NULL,'dipinjam'),(15,5,5,'2023-10-15','2023-10-29','2023-10-28','dikembalikan');
/*!40000 ALTER TABLE `peminjaman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengadaan`
--

DROP TABLE IF EXISTS `pengadaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pengadaan` (
  `id_pengadaan` int(11) NOT NULL AUTO_INCREMENT,
  `id_permintaan` int(11) DEFAULT NULL,
  `jumlah` int(11) NOT NULL,
  `status` enum('direncanakan','dipesan','tersedia') NOT NULL,
  `dibuat_pada` timestamp NOT NULL DEFAULT current_timestamp(),
  `judul_buku` varchar(250) NOT NULL,
  `penulis` varchar(250) NOT NULL,
  PRIMARY KEY (`id_pengadaan`),
  KEY `id_permintaan` (`id_permintaan`),
  CONSTRAINT `pengadaan_ibfk_1` FOREIGN KEY (`id_permintaan`) REFERENCES `permintaan` (`id_permintaan`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengadaan`
--

LOCK TABLES `pengadaan` WRITE;
/*!40000 ALTER TABLE `pengadaan` DISABLE KEYS */;
INSERT INTO `pengadaan` VALUES (21,1,5,'direncanakan','2023-10-01 03:00:00','Pride and Prejudice','Jane Austen'),(22,2,3,'dipesan','2023-10-02 04:00:00','Brave New World','Aldous Huxley'),(24,4,4,'direncanakan','2023-10-04 06:00:00','A Brief History of Time','Stephen Hawking'),(25,5,1,'dipesan','2023-10-05 07:00:00','The Great Gatsby','F. Scott Fitzgerald'),(32,13,10,'tersedia','2025-03-09 08:56:24','Kambing Jantan','Raditya Dika');
/*!40000 ALTER TABLE `pengadaan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengguna`
--

DROP TABLE IF EXISTS `pengguna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pengguna` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `kata_sandi` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_peran` int(11) NOT NULL,
  `dibuat_pada` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_pengguna`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengguna`
--

LOCK TABLES `pengguna` WRITE;
/*!40000 ALTER TABLE `pengguna` DISABLE KEYS */;
INSERT INTO `pengguna` VALUES (1,'Budi Santoso','santosobudi','hashed_password_1','budi.santoso@mail.com',0,'2023-10-01 03:00:00'),(2,'Ani Wijaya','aniwi','hashed_password_2','ani.wijaya@mail.com',0,'2023-10-02 04:00:00'),(3,'Admin1','admin1','hashed_password_3','admin1@mail.com',-1,'2023-10-03 05:00:00'),(4,'Cici Permata','cicip','hashed_password_4','cici.permata@mail.com',0,'2023-10-04 06:00:00'),(5,'Dodi Pratama','dpratama','hashed_password_5','dodi.pratama@mail.com',0,'2023-10-05 07:00:00');
/*!40000 ALTER TABLE `pengguna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permintaan`
--

DROP TABLE IF EXISTS `permintaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permintaan` (
  `id_permintaan` int(11) NOT NULL AUTO_INCREMENT,
  `id_pengguna` int(11) DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `status` enum('menunggu','disetujui','ditolak') NOT NULL,
  `dibuat_pada` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_permintaan`),
  KEY `id_pengguna` (`id_pengguna`),
  CONSTRAINT `permintaan_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permintaan`
--

LOCK TABLES `permintaan` WRITE;
/*!40000 ALTER TABLE `permintaan` DISABLE KEYS */;
INSERT INTO `permintaan` VALUES (1,4,'Pride and Prejudice','Jane Austen','disetujui','2025-03-08 17:00:00'),(2,2,'Brave New World','Aldous Huxley','disetujui','2023-10-02 04:00:00'),(3,1,'Beloved','Toni Morrison','ditolak','2023-10-03 05:00:00'),(4,2,'A Brief History of Time','Stephen Hawking','disetujui','2025-03-08 17:00:00'),(5,5,'The Great Gatsby','F. Scott Fitzgerald','disetujui','2023-10-05 07:00:00'),(12,2,'Buku Kalkulus V','Dosen Matematika UI','ditolak','2025-03-08 17:00:00'),(13,4,'Kambing Jantan','Raditya Dika','disetujui','2025-03-08 17:00:00');
/*!40000 ALTER TABLE `permintaan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `rekap_riwayat_pengunjung`
--

DROP TABLE IF EXISTS `rekap_riwayat_pengunjung`;
/*!50001 DROP VIEW IF EXISTS `rekap_riwayat_pengunjung`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `rekap_riwayat_pengunjung` AS SELECT 
 1 AS `nama_pengguna`,
 1 AS `status_peminjaman`,
 1 AS `jml`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `rekap_status_peminjaman`
--

DROP TABLE IF EXISTS `rekap_status_peminjaman`;
/*!50001 DROP VIEW IF EXISTS `rekap_status_peminjaman`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `rekap_status_peminjaman` AS SELECT 
 1 AS `bulan_peminjaman`,
 1 AS `status`,
 1 AS `judul`,
 1 AS `jumlah`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'perpustakaan'
--

--
-- Final view structure for view `rekap_riwayat_pengunjung`
--

/*!50001 DROP VIEW IF EXISTS `rekap_riwayat_pengunjung`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `rekap_riwayat_pengunjung` AS select `x`.`nama_pengguna` AS `nama_pengguna`,`x`.`status_peminjaman` AS `status_peminjaman`,coalesce(count(`x`.`id_peminjaman`),0) AS `jml` from (select `p`.`nama_pengguna` AS `nama_pengguna`,case when `p2`.`status` = 'dikembalikan' and `p2`.`tanggal_jatuh_tempo` - `p2`.`tanggal_pengembalian` < 0 then 'Buku dikembalikan terlambat' when `p2`.`status` = 'dikembalikan' and `p2`.`tanggal_jatuh_tempo` - `p2`.`tanggal_pengembalian` >= 0 then 'Buku dikembalikan tepat waktu' else 'Buku belum dikembalikan' end AS `status_peminjaman`,`p2`.`id_peminjaman` AS `id_peminjaman` from (`pengguna` `p` left join `peminjaman` `p2` on(`p`.`id_pengguna` = `p2`.`id_pengguna`))) `x` group by `x`.`nama_pengguna`,`x`.`status_peminjaman` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `rekap_status_peminjaman`
--

/*!50001 DROP VIEW IF EXISTS `rekap_status_peminjaman`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `rekap_status_peminjaman` AS select concat(year(`p`.`tanggal_peminjaman`),'-',month(`p`.`tanggal_peminjaman`)) AS `bulan_peminjaman`,`p`.`status` AS `status`,`b`.`judul` AS `judul`,count(`p`.`id_peminjaman`) AS `jumlah` from ((`peminjaman` `p` left join `pengguna` `p2` on(`p`.`id_pengguna` = `p2`.`id_pengguna`)) left join `buku` `b` on(`p`.`id_buku` = `b`.`id_buku`)) group by `p`.`status`,`b`.`judul`,year(`p`.`tanggal_peminjaman`),month(`p`.`tanggal_peminjaman`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-13  1:04:52
