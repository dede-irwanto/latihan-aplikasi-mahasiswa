-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_mahasiswa
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `akses_token`
--

DROP TABLE IF EXISTS `akses_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `akses_token` (
  `id_akses_token` int NOT NULL AUTO_INCREMENT,
  `id_user` int DEFAULT NULL,
  `access_token` text,
  `ip_address` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_akses_token`),
  KEY `akses_token_user_idx` (`id_user`),
  CONSTRAINT `akses_token_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `akses_token`
--

LOCK TABLES `akses_token` WRITE;
/*!40000 ALTER TABLE `akses_token` DISABLE KEYS */;
INSERT INTO `akses_token` VALUES (11,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6NywidXNlcm5hbWUiOiJkZWUiLCJlbWFpbCI6ImlkLmRlZGVpcndhbnRvQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiMjAyY2I5NjJhYzU5MDc1Yjk2NGIwNzE1MmQyMzRiNzAiLCJyb2xlIjoyLCJ0YW5nZ2FsX2RhZnRhciI6IjIwMjItMDEtMjZUMTY6MDA6MDAuMDAwWiJ9XSwiaWF0IjoxNjQzMzAwNTg2LCJleHAiOjE2NDMzMDIwMjZ9.vydCbGVz43gKF05Fj9jEX9IZo9l2kCBLUwGWaP7RnkU','172.26.224.1'),(12,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6NywidXNlcm5hbWUiOiJkZWUiLCJlbWFpbCI6ImlkLmRlZGVpcndhbnRvQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiMjAyY2I5NjJhYzU5MDc1Yjk2NGIwNzE1MmQyMzRiNzAiLCJyb2xlIjoyLCJ0YW5nZ2FsX2RhZnRhciI6IjIwMjItMDEtMjZUMTY6MDA6MDAuMDAwWiJ9XSwiaWF0IjoxNjQzMzAxNDA3LCJleHAiOjE2NDMzMDI4NDd9.TgRsgUsme5CAu_GcARPPi43b5N6yGjC7WHLdNU1PCiU','172.26.224.1'),(13,9,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6OSwidXNlcm5hbWUiOiJkZWV2YSIsImVtYWlsIjoiZGVldmFAZ21haWwuY29tIiwicGFzc3dvcmQiOiIyMDJjYjk2MmFjNTkwNzViOTY0YjA3MTUyZDIzNGI3MCIsInJvbGUiOjMsInRhbmdnYWxfZGFmdGFyIjoiMjAyMi0wMS0yN1QxNjowMDowMC4wMDBaIn1dLCJpYXQiOjE2NDMzMDE0NzEsImV4cCI6MTY0MzMwMjkxMX0.xfCp-X1QXnMiEbw32VI6hqz4NRryGWnbCbGv87VvRb0','172.26.224.1'),(14,9,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6OSwidXNlcm5hbWUiOiJkZWV2YSIsImVtYWlsIjoiZGVldmFAZ21haWwuY29tIiwicGFzc3dvcmQiOiIyMDJjYjk2MmFjNTkwNzViOTY0YjA3MTUyZDIzNGI3MCIsInJvbGUiOjMsInRhbmdnYWxfZGFmdGFyIjoiMjAyMi0wMS0yN1QxNjowMDowMC4wMDBaIn1dLCJpYXQiOjE2NDMzMDE2NTksImV4cCI6MTY0MzMwMzA5OX0.9CgXGEWdY3Z_hqHPJ_3tB-QP_lSWkAf-nmSVmZ_r1rs','172.26.224.1'),(15,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6NywidXNlcm5hbWUiOiJkZWUiLCJlbWFpbCI6ImlkLmRlZGVpcndhbnRvQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiMjAyY2I5NjJhYzU5MDc1Yjk2NGIwNzE1MmQyMzRiNzAiLCJyb2xlIjoyLCJ0YW5nZ2FsX2RhZnRhciI6IjIwMjItMDEtMjZUMTY6MDA6MDAuMDAwWiJ9XSwiaWF0IjoxNjQzMzAxNjg0LCJleHAiOjE2NDMzMDMxMjR9.pWq2wBRpfL-AiywG96aDE8ytlTzDgzdoRGsZdYnf7ak','172.26.224.1'),(16,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6NywidXNlcm5hbWUiOiJkZWUiLCJlbWFpbCI6ImlkLmRlZGVpcndhbnRvQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiMjAyY2I5NjJhYzU5MDc1Yjk2NGIwNzE1MmQyMzRiNzAiLCJyb2xlIjoyLCJ0YW5nZ2FsX2RhZnRhciI6IjIwMjItMDEtMjZUMTY6MDA6MDAuMDAwWiJ9XSwiaWF0IjoxNjQzMzAyMDM4LCJleHAiOjE2NDMzMDM0Nzh9.mwe5B150xE4LVVY6T5MTrpgsdYCZEwabVzRlbAl7HzY','172.26.224.1'),(17,9,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6OSwidXNlcm5hbWUiOiJkZWV2YSIsImVtYWlsIjoiZGVldmFAZ21haWwuY29tIiwicGFzc3dvcmQiOiIyMDJjYjk2MmFjNTkwNzViOTY0YjA3MTUyZDIzNGI3MCIsInJvbGUiOjMsInRhbmdnYWxfZGFmdGFyIjoiMjAyMi0wMS0yN1QxNjowMDowMC4wMDBaIn1dLCJpYXQiOjE2NDMzMDIxMjAsImV4cCI6MTY0MzMwMzU2MH0.DQam-6jH6DUntWw48tLM3BCPf4KfVTqqvj_nhc_X5VU','172.26.224.1'),(18,9,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6OSwidXNlcm5hbWUiOiJkZWV2YSIsImVtYWlsIjoiZGVldmFAZ21haWwuY29tIiwicGFzc3dvcmQiOiIyMDJjYjk2MmFjNTkwNzViOTY0YjA3MTUyZDIzNGI3MCIsInJvbGUiOjMsInRhbmdnYWxfZGFmdGFyIjoiMjAyMi0wMS0yN1QxNjowMDowMC4wMDBaIn1dLCJpYXQiOjE2NDM0Mzk1MTYsImV4cCI6MTY0MzQ0MDk1Nn0.X5ZlIqnzzBCt-7deEmPyIkdZ7KzCI1iT5pZMKMcxxfU','172.26.224.1'),(19,9,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6OSwidXNlcm5hbWUiOiJkZWV2YSIsImVtYWlsIjoiZGVldmFAZ21haWwuY29tIiwicGFzc3dvcmQiOiIyMDJjYjk2MmFjNTkwNzViOTY0YjA3MTUyZDIzNGI3MCIsInJvbGUiOjMsInRhbmdnYWxfZGFmdGFyIjoiMjAyMi0wMS0yN1QxNjowMDowMC4wMDBaIn1dLCJpYXQiOjE2NDM0Mzk2MjgsImV4cCI6MTY0MzQ0MTA2OH0.Kt5Ov6L9bIjBtgZ65GNxP3KNXamUjGouWZ0MnMWEAVc','172.26.224.1'),(20,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6NywidXNlcm5hbWUiOiJkZWUiLCJlbWFpbCI6ImlkLmRlZGVpcndhbnRvQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiMjAyY2I5NjJhYzU5MDc1Yjk2NGIwNzE1MmQyMzRiNzAiLCJyb2xlIjoyLCJ0YW5nZ2FsX2RhZnRhciI6IjIwMjItMDEtMjZUMTY6MDA6MDAuMDAwWiJ9XSwiaWF0IjoxNjQzNDM5NjYzLCJleHAiOjE2NDM0NDExMDN9.Mv3CwLG00wilFhzvcWQoNvBjYt05pPniIm-h5FAsC54','172.26.224.1'),(21,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6NywidXNlcm5hbWUiOiJkZWUiLCJlbWFpbCI6ImlkLmRlZGVpcndhbnRvQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiMjAyY2I5NjJhYzU5MDc1Yjk2NGIwNzE1MmQyMzRiNzAiLCJyb2xlIjoyLCJ0YW5nZ2FsX2RhZnRhciI6IjIwMjItMDEtMjZUMTY6MDA6MDAuMDAwWiJ9XSwiaWF0IjoxNjQzNDM5NjgyLCJleHAiOjE2NDM0NDExMjJ9.vypgRMn3nOq9rQ1gfdA_ArPSAUVC7q8lbTNvR1NJYPs','172.26.224.1');
/*!40000 ALTER TABLE `akses_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krs`
--

DROP TABLE IF EXISTS `krs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `krs` (
  `id_krs` int NOT NULL AUTO_INCREMENT,
  `tanggal_krs` date DEFAULT NULL,
  `id_matakuliah` int DEFAULT NULL,
  `id_mahasiswa` int DEFAULT NULL,
  PRIMARY KEY (`id_krs`),
  KEY `krs_matakuliah_idx` (`id_matakuliah`),
  KEY `krs_mahasiswa_idx` (`id_mahasiswa`),
  CONSTRAINT `krs_mahasiswa` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `krs_matakuliah` FOREIGN KEY (`id_matakuliah`) REFERENCES `matakuliah` (`id_matakuliah`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krs`
--

LOCK TABLES `krs` WRITE;
/*!40000 ALTER TABLE `krs` DISABLE KEYS */;
INSERT INTO `krs` VALUES (1,'2022-01-27',1,5),(2,'2022-01-27',2,5),(3,'2022-01-27',3,5),(4,'2022-01-27',3,1),(5,'2022-01-27',4,1);
/*!40000 ALTER TABLE `krs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int NOT NULL AUTO_INCREMENT,
  `nim` int DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_mahasiswa`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` VALUES (1,1907048015,'Dede Irwanto Ganteng','Sistem Informasi'),(2,1907048016,'Eka Wuryandari Potabuga','Teknik Informatika'),(3,1907048017,'Adeeva Dhiyaulhaq Jennaera','Teknik Informatika'),(4,1907048018,'Nazeefa Qotrunnada Salsabila','Teknik Informatika'),(5,1907048019,'Razeeta Jihan Syauqiah','Sistem Informasi'),(6,1907048020,'Arief Setiawan','Sistem Informasi'),(8,1907048021,'Angga Prayoga','Teknik Informatika'),(9,1907048022,'Yogi Saputra','Teknik Informatika'),(10,1907048023,'Sofiyah Azzahra','Teknik Informatika'),(11,1907048024,'Azra','Teknik Informatika'),(12,1907048026,'Hari',NULL),(13,1234356,'Harisaputra','Matematika'),(14,13454545,'Dodit Mulyanto','IPA'),(15,123456,'Abdul Arsyad','IPS'),(16,12345678,'dfdsafjsaf','fdafdsafdsa'),(17,134324,'Dede Purwanto','Bahasa Indonesia'),(18,1234546464,'Ade Giring','Pertanian'),(19,132435666,'Adeeva Runna Zeeta','Bahasa Inggris'),(20,3005022,'Dede Iswanto','Olahraga'),(21,123321,'Hari Santosa','Biologi'),(22,1111111,'Hadi Santosi','IPS'),(23,1234654,'Deni','Biologi'),(24,1,'d','df');
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matakuliah`
--

DROP TABLE IF EXISTS `matakuliah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matakuliah` (
  `id_matakuliah` int NOT NULL AUTO_INCREMENT,
  `matakuliah` varchar(50) DEFAULT NULL,
  `sks` int DEFAULT NULL,
  PRIMARY KEY (`id_matakuliah`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matakuliah`
--

LOCK TABLES `matakuliah` WRITE;
/*!40000 ALTER TABLE `matakuliah` DISABLE KEYS */;
INSERT INTO `matakuliah` VALUES (1,'Algoritma Dasar',3),(2,'Proyek Perangkat Lunak',3),(3,'Pemrograman Website',3),(4,'Manajemen Proyek',3),(5,'Basis Data',3),(6,'Sistem Operasi',3);
/*!40000 ALTER TABLE `matakuliah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `role` int DEFAULT NULL,
  `tanggal_daftar` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (7,'dee','id.dedeirwanto@gmail.com','202cb962ac59075b964b07152d234b70',2,'2022-01-27'),(8,'eka','id.ekapotabuga@gmail.com','202cb962ac59075b964b07152d234b70',2,'2022-01-28'),(9,'deeva','deeva@gmail.com','202cb962ac59075b964b07152d234b70',3,'2022-01-28');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-02 23:07:13
