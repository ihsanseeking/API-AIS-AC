-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2017 at 12:51 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ais_autocare`
--

-- --------------------------------------------------------

--
-- Table structure for table `bengkel`
--

CREATE TABLE `bengkel` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `ref_bengkel_type_id` int(11) NOT NULL,
  `address` text NOT NULL,
  `latitude` varchar(30) NOT NULL,
  `longitude` varchar(30) NOT NULL,
  `ref_area_id` int(11) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact_person1_id` int(11) DEFAULT NULL,
  `contact_person2_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `max_order` int(11) NOT NULL,
  `account_number` varchar(40) NOT NULL,
  `account_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bengkel`
--

INSERT INTO `bengkel` (`id`, `name`, `ref_bengkel_type_id`, `address`, `latitude`, `longitude`, `ref_area_id`, `phone`, `fax`, `email`, `contact_person1_id`, `contact_person2_id`, `customer_id`, `max_order`, `account_number`, `account_name`) VALUES
(1, 'Ais Aki Jogja', 3, 'Jln.Wonosari KM.1 No.9', '-7.810742', '110.404572', 47618, '85743007505', 'null', '', 1, NULL, 1, 2, '178 303 7878', 'nurhidayanto'),
(4, 'Surya Makmur Tour and Travel', 1, 'Jl. Parangtritis km 9,5 Pasar Gabusan RT 07 Timbulharjo', '-7.794559349', '110.3578166', 14, '2147483647', 'null', 'suryamakmur.travel12@yahoo.com', NULL, NULL, 1, 4, '0', 'null'),
(5, 'Andoyo motor', 1, 'Jalan gejayan no 13', '-7.772956933', '110.3816037', 14, '816689490', 'null', 'andoyoab10j@yahoo.com', NULL, NULL, 1, 4, '0', 'null'),
(6, 'Dani pisang tambal ban motor', 1, 'Jalan gejayan 30', '-7.762126851', '110.3938333', 14, '85228485014', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(7, 'Agus tambal ban', 1, 'Jl angajaya 1 depan bri depok', '-7.756115243', '110.3964082', 14, '85729400416', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(8, 'RR Otomotif Car Wash', 1, 'Jl. Ringroad Utara, Pandean Gandhok, No 58, Yogyakarta', '-7.759522363', '110.3933076', 14, '89628596343', 'null', 'Amrtabatik@gmail.com', NULL, NULL, 1, 4, '0', 'null'),
(9, 'RR otomotif rental mobil', 1, 'Jl ring road utara pandean gandok no 58 yogyakarta', '-7.759369548', '110.3928999', 14, '89628596343', 'null', 'Amrtabatik@gmail.com', NULL, NULL, 1, 4, '0', 'null'),
(10, 'Jumanto ban', 1, 'Jl. Afandi gejayan', '-7.759586146', '110.3954212', 14, '81904214799', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(11, 'Mardi motor', 1, 'Jl. Wonosari', '-7.822280712', '110.4243354', 14, '81578730939', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(12, 'Odiez ais transpor', 1, 'Jl. Wonosari Km. 7,2 No. 15', '-7.81855694', '110.4174325', 14, '91904295979', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(13, 'bengkel juanda auto service', 1, 'Jl. Wonosari Km. 10 Sampaan berbah kid funs', '-7.827708112', '110.4424752', 14, '8122690340', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(14, 'Gw guyur', 1, 'Jl. Berbah sampaan', '-7.808157756', '110.4433922', 14, '87838667720', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(15, 'Jims motor', 1, 'Maredan jl. Berbah', '-7.803775206', '110.4317329', 14, '85743100173', 'null', 'mandraxatmaja24@gmail.com', NULL, NULL, 1, 4, '0', 'null'),
(16, 'Erkie otomotif', 1, 'Jl. Babarsari 23 D', '-7.776178093', '110.4154919', 14, '87738514626', 'null', 'erwinyulianto2782@gmail.com', NULL, NULL, 1, 4, '0', 'null'),
(17, 'Wijaya carwash', 1, 'Jl. Kyai muhdi', '-7.781208221', '110.4226885', 14, '87839677821', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(18, 'Kirani rental', 1, 'Jl. K.h muhdi no.166', '-7.771290269', '110.4235951', 14, '87839199399', 'null', 'kirani_trans@yahoo.com', NULL, NULL, 1, 4, '0', 'null'),
(19, 'Lancar jaya motor', 1, 'Jl. K.h muhdi', '-7.771391257', '110.423638', 14, '85727372012', 'null', 'lancarjayasound@yahoo.com', NULL, NULL, 1, 4, '0', 'null'),
(20, 'Star ban', 1, 'Jl ring road utara', '-7.763960614', '110.4221682', 14, '81804219173', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(21, 'Mega trans', 1, 'Jl. Tasura no. 33', '-7.761537238', '110.4224603', 14, '81334162644', 'null', 'maftuhmaftuhin@gmail.com', NULL, NULL, 1, 4, '0', 'null'),
(22, 'Auto genic', 1, 'Jl. Raya tajem No. 412', '-7.752786497', '110.4344031', 14, '85647155110', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(23, 'Putra ujang ban', 1, 'Jl. Kadisuka banjeng maguwoharjo', '-7.753579817', '110.4407344', 14, '8174123544', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(24, 'Hanief moto', 1, 'Jl. Candi sambisari', '-7.762786325', '110.4462918', 14, '8128866198', 'null', 'rifqi.hanief@yahoo.co.id', NULL, NULL, 1, 4, '0', 'null'),
(25, 'jagalan auto servis', 1, 'Jl. Solo Km. 11', '-7.782773493', '110.4488052', 14, '82242252826', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(26, 'AB Motor', 1, 'Jl. Babarsari raya No. 41', '-7.774052053', '110.4136197', 14, '911253939', 'null', 'ie_nan@yahoo.com', NULL, NULL, 1, 4, '0', 'null'),
(27, 'Ais Aki Jogja', 1, 'Jl.wonosari km.1 no.9 Ketandan,Banguntapan Bantul', '-7.81080123', '110.4031352', 14, '85743007505', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(28, 'Tamban ban', 1, 'Jl. Kaliurang', '-7.749896247', '110.3862105', 14, '81328429977', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(29, 'Bimtang oli', 1, 'Jl. Kaliurang Km 8,2', '-7.737562016', '110.3936668', 14, '83867895142', 'null', 'aziz.sudi@gmail.com', NULL, NULL, 1, 4, '0', 'null'),
(30, 'Ais aki', 1, 'Jl. Kaliurang Km 8,5', '-7.736620776', '110.3941337', 14, '81325326932', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(31, 'Sumber rejeki', 1, 'Jl. Kaliurang Km. 8,5', '-7.734393539', '110.3955231', 14, '85729872273', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(32, 'Rahma', 1, 'Jl. Kaliurang Km. 8,5', '-7.732575594', '110.396537', 14, '81212551046', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(33, 'Tepos ban', 1, 'Jl. Kapten hariadi kaliurang', '-7.726462566', '110.3995733', 14, '85743432042', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(34, 'AIS AKI BANTUL', 1, 'Jl.parangtritis km9,50 meter utara pasar seni gabusan bantul.', '0', '0', 14, '87839533242', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(35, 'Bagus jaya mobil', 1, 'Jl.cuma kaliurang Kapten haryadi No. 6 C', '-7.725327659', '110.3992326', 14, '85727898478', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(36, 'Anto motor', 1, 'Jl kaliurang kapten haryadi', '-7.723355518', '110.3905007', 14, '83840373777', 'null', 'radenmas.mw@gmail.com', NULL, NULL, 1, 4, '0', 'null'),
(38, 'GOP Mandiri', 1, 'Jl. Palagan No. 90 jongkang', '-7.745888705', '110.3731872', 14, '81804087900', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(39, 'Blink Blink Car Wash', 1, 'Jl wonosari km 2 no 49', '-7.810896762', '110.4056666', 14, '81336113741', 'null', 'gloriousmega@gmail.com', NULL, NULL, 1, 4, '0', 'null'),
(40, 'Jaya makmur', 1, 'Jl. Wonosari kp.Ketandan', '-7.810948711', '110.4062627', 14, '83869195027', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(41, 'Abunawas ban', 1, 'Jl. Patimura', '-7.785958497', '110.3719291', 14, '85865276775', 'null', 'narimojoyo@gmail.com', NULL, NULL, 1, 4, '0', 'null'),
(42, 'Gzaha', 1, 'Jl. Magelang Km. 5,6 No. 40', '-7.755038885', '110.3619741', 14, '817461644', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(44, 'Surya Makmur Tour and Travel', 1, 'Jl. Parangtritis km 9,5 Pasar Gabusan RT 07 Timbulharjo', '-7.794559349', '110.3578166', 14, '2147483647', 'null', 'suryamakmur.travel12@yahoo.com', NULL, NULL, 1, 4, '0', 'null'),
(45, 'Andoyo motor', 1, 'Jalan gejayan no 13', '-7.772956933', '110.3816037', 14, '816689490', 'null', 'andoyoab10j@yahoo.com', NULL, NULL, 1, 4, '0', 'null'),
(46, 'Dani pisang tambal ban motor', 1, 'Jalan gejayan 30', '-7.762126851', '110.3938333', 14, '85228485014', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(47, 'Agus tambal ban', 1, 'Jl angajaya 1 depan bri depok', '-7.756115243', '110.3964082', 14, '85729400416', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(48, 'RR Otomotif Car Wash', 1, 'Jl. Ringroad Utara, Pandean Gandhok, No 58, Yogyakarta', '-7.759522363', '110.3933076', 14, '89628596343', 'null', 'Amrtabatik@gmail.com', NULL, NULL, 1, 4, '0', 'null'),
(49, 'RR otomotif rental mobil', 1, 'Jl ring road utara pandean gandok no 58 yogyakarta', '-7.759369548', '110.3928999', 14, '89628596343', 'null', 'Amrtabatik@gmail.com', NULL, NULL, 1, 4, '0', 'null'),
(50, 'Jumanto ban', 1, 'Jl. Afandi gejayan', '-7.759586146', '110.3954212', 14, '81904214799', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(51, 'Mardi motor', 1, 'Jl. Wonosari', '-7.822280712', '110.4243354', 14, '81578730939', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(52, 'Odiez ais transpor', 1, 'Jl. Wonosari Km. 7,2 No. 15', '-7.81855694', '110.4174325', 14, '91904295979', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(53, 'bengkel juanda auto service', 1, 'Jl. Wonosari Km. 10 Sampaan berbah kid funs', '-7.827708112', '110.4424752', 14, '8122690340', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(54, 'Gw guyur', 1, 'Jl. Berbah sampaan', '-7.808157756', '110.4433922', 14, '87838667720', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(55, 'Jims motor', 1, 'Maredan jl. Berbah', '-7.803775206', '110.4317329', 14, '85743100173', 'null', 'mandraxatmaja24@gmail.com', NULL, NULL, 1, 4, '0', 'null'),
(56, 'Erkie otomotif', 1, 'Jl. Babarsari 23 D', '-7.776178093', '110.4154919', 14, '87738514626', 'null', 'erwinyulianto2782@gmail.com', NULL, NULL, 1, 4, '0', 'null'),
(57, 'Wijaya carwash', 1, 'Jl. Kyai muhdi', '-7.781208221', '110.4226885', 14, '87839677821', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(58, 'Kirani rental', 1, 'Jl. K.h muhdi no.166', '-7.771290269', '110.4235951', 14, '87839199399', 'null', 'kirani_trans@yahoo.com', NULL, NULL, 1, 4, '0', 'null'),
(59, 'Lancar jaya motor', 1, 'Jl. K.h muhdi', '-7.771391257', '110.423638', 14, '85727372012', 'null', 'lancarjayasound@yahoo.com', NULL, NULL, 1, 4, '0', 'null'),
(60, 'Star ban', 1, 'Jl ring road utara', '-7.763960614', '110.4221682', 14, '81804219173', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(61, 'Mega trans', 1, 'Jl. Tasura no. 33', '-7.761537238', '110.4224603', 14, '81334162644', 'null', 'maftuhmaftuhin@gmail.com', NULL, NULL, 1, 4, '0', 'null'),
(62, 'Auto genic', 1, 'Jl. Raya tajem No. 412', '-7.752786497', '110.4344031', 14, '85647155110', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(63, 'Putra ujang ban', 1, 'Jl. Kadisuka banjeng maguwoharjo', '-7.753579817', '110.4407344', 14, '8174123544', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(64, 'Hanief moto', 1, 'Jl. Candi sambisari', '-7.762786325', '110.4462918', 14, '8128866198', 'null', 'rifqi.hanief@yahoo.co.id', NULL, NULL, 1, 4, '0', 'null'),
(65, 'jagalan auto servis', 1, 'Jl. Solo Km. 11', '-7.782773493', '110.4488052', 14, '82242252826', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(66, 'AB Motor', 1, 'Jl. Babarsari raya No. 41', '-7.774052053', '110.4136197', 14, '911253939', 'null', 'ie_nan@yahoo.com', NULL, NULL, 1, 4, '0', 'null'),
(67, 'Ais Aki Jogja', 1, 'Jl.wonosari km.1 no.9 Ketandan,Banguntapan Bantul', '-7.81080123', '110.4031352', 14, '85743007505', 'null', '', NULL, NULL, 22, 4, '0', 'null'),
(68, 'Tamban ban', 1, 'Jl. Kaliurang', '-7.749896247', '110.3862105', 14, '81328429977', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(69, 'Bimtang oli', 1, 'Jl. Kaliurang Km 8,2', '-7.737562016', '110.3936668', 14, '83867895142', 'null', 'aziz.sudi@gmail.com', NULL, NULL, 1, 4, '0', 'null'),
(70, 'Ais aki', 1, 'Jl. Kaliurang Km 8,5', '-7.736620776', '110.3941337', 14, '81325326932', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(71, 'Sumber rejeki', 1, 'Jl. Kaliurang Km. 8,5', '-7.734393539', '110.3955231', 14, '85729872273', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(72, 'Rahma', 1, 'Jl. Kaliurang Km. 8,5', '-7.732575594', '110.396537', 14, '81212551046', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(73, 'Tepos ban', 1, 'Jl. Kapten hariadi kaliurang', '-7.726462566', '110.3995733', 14, '85743432042', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(75, 'Bagus jaya mobil', 1, 'Jl.cuma kaliurang Kapten haryadi No. 6 C', '-7.725327659', '110.3992326', 14, '85727898478', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(76, 'Anto motor', 1, 'Jl kaliurang kapten haryadi', '-7.723355518', '110.3905007', 14, '83840373777', 'null', 'radenmas.mw@gmail.com', NULL, NULL, 1, 4, '0', 'null'),
(78, 'GOP Mandiri', 1, 'Jl. Palagan No. 90 jongkang', '-7.745888705', '110.3731872', 14, '81804087900', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(79, 'Blink Blink Car Wash', 1, 'Jl wonosari km 2 no 49', '-7.810896762', '110.4056666', 14, '81336113741', 'null', 'gloriousmega@gmail.com', NULL, NULL, 1, 4, '0', 'null'),
(80, 'Jaya makmur', 1, 'Jl. Wonosari kp.Ketandan', '-7.810948711', '110.4062627', 14, '83869195027', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(81, 'Abunawas ban', 1, 'Jl. Patimura', '-7.785958497', '110.3719291', 14, '85865276775', 'null', 'narimojoyo@gmail.com', NULL, NULL, 1, 4, '0', 'null'),
(82, 'Gzaha', 1, 'Jl. Magelang Km. 5,6 No. 40', '-7.755038885', '110.3619741', 14, '817461644', 'null', NULL, NULL, NULL, 1, 4, '0', 'null'),
(83, 'KVM', 1, 'Jl. Kebon agung cebongan', '-7.732564963', '110.3350393', 14, '87745522006', 'null', '', NULL, NULL, 20, 4, '0', 'null'),
(84, 'Orange car steam', 2, 'Jl. Kamdanen kapten haryadi No. 9,5\r\n', '-7.720556764', '110.3836329', 14, '089656344581', '089656344581', '', NULL, NULL, 21, 6, '', 'asdf');

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8_unicode_ci,
  `responses` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_apicustom`
--

INSERT INTO `cms_apicustom` (`id`, `created_at`, `updated_at`, `permalink`, `tabel`, `aksi`, `kolom`, `orderby`, `sub_query_1`, `sql_where`, `nama`, `keterangan`, `parameter`, `method_type`, `parameters`, `responses`) VALUES
(1, NULL, NULL, 'list_service_type', 'ref_service_type', 'list', NULL, NULL, NULL, '', 'List Service Type', '<p>Menampilkan Daftar Tipe Service<br></p>', NULL, 'get', 'a:6:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:5:\"wheel\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:11:\"description\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:8:\"category\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:4:\"note\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:6:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:5:\"wheel\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:11:\"description\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:8:\"category\";s:4:\"type\";s:4:\"enum\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:4:\"note\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}}'),
(2, NULL, NULL, 'add_customer', 'customer', 'save_add', NULL, NULL, NULL, '', 'Add Customer', '<p>Untuk Tambah Data Customer<br></p>', NULL, 'post', 'a:9:{i:0;a:5:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:2;a:5:{s:4:\"name\";s:9:\"cellphone\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:3;a:5:{s:4:\"name\";s:7:\"address\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:4;a:5:{s:4:\"name\";s:17:\"ref_occupation_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:5;a:5:{s:4:\"name\";s:8:\"latitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:6;a:5:{s:4:\"name\";s:9:\"longitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:7;a:5:{s:4:\"name\";s:11:\"ref_area_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:8;a:5:{s:4:\"name\";s:7:\"user_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:10:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:9:\"cellphone\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:7:\"address\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:17:\"ref_occupation_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:8:\"latitude\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:9:\"longitude\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:11:\"ref_area_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:7:\"user_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}}'),
(3, NULL, NULL, 'list_customer', 'customer', 'list', NULL, NULL, NULL, '', 'List Customer', '<p>Menampilkan daftar Customer<br></p>', NULL, 'get', 'a:10:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:9:\"cellphone\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:7:\"address\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:17:\"ref_occupation_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:8:\"latitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:9:\"longitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:8;a:5:{s:4:\"name\";s:11:\"ref_area_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:9;a:5:{s:4:\"name\";s:7:\"user_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:10:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:9:\"cellphone\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:7:\"address\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:17:\"ref_occupation_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:8:\"latitude\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:9:\"longitude\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:11:\"ref_area_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:7:\"user_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}}'),
(4, NULL, NULL, 'add_member_customer', 'user', 'save_add', NULL, NULL, NULL, '', 'Add Member Customer', '<p>Add Member From Customer<br></p>', NULL, 'post', 'a:11:{i:0;a:5:{s:4:\"name\";s:17:\"ref_user_group_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:1:\"1\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:10:\"first_name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:2;a:5:{s:4:\"name\";s:9:\"last_name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:5:\"email\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:4;a:5:{s:4:\"name\";s:8:\"password\";s:4:\"type\";s:8:\"password\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:5;a:5:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:6;a:5:{s:4:\"name\";s:9:\"cellphone\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:7;a:5:{s:4:\"name\";s:7:\"address\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:8;a:5:{s:4:\"name\";s:11:\"ref_area_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:9;a:5:{s:4:\"name\";s:11:\"facebook_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:10;a:5:{s:4:\"name\";s:10:\"twitter_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:12:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"0\";}i:1;a:4:{s:4:\"name\";s:17:\"ref_user_group_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:10:\"first_name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:9:\"last_name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:8:\"password\";s:4:\"type\";s:8:\"password\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:9:\"cellphone\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:7:\"address\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:11:\"ref_area_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:11:\"facebook_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:10:\"twitter_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}}'),
(5, NULL, NULL, 'add_order', 'order', 'save_add', NULL, NULL, NULL, '', 'Add Order', '<p>Add Order</p><p><br></p>', NULL, 'post', 'a:15:{i:0;a:5:{s:4:\"name\";s:11:\"customer_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:10:\"order_date\";s:4:\"type\";s:4:\"date\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:10:\"order_time\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:12:\"service_date\";s:4:\"type\";s:4:\"date\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:12:\"service_time\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:16:\"service_location\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:6;a:5:{s:4:\"name\";s:8:\"latitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:7;a:5:{s:4:\"name\";s:9:\"longitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:8;a:5:{s:4:\"name\";s:7:\"area_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:9;a:5:{s:4:\"name\";s:12:\"is_emergency\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:10;a:5:{s:4:\"name\";s:13:\"license_plate\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:11;a:5:{s:4:\"name\";s:14:\"ref_service_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:12;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:1:\"1\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:13;a:5:{s:4:\"name\";s:6:\"method\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:14;a:5:{s:4:\"name\";s:14:\"payment_status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:16:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:11:\"customer_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:10:\"order_date\";s:4:\"type\";s:4:\"date\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:10:\"order_time\";s:4:\"type\";s:4:\"time\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:12:\"service_date\";s:4:\"type\";s:4:\"date\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:12:\"service_time\";s:4:\"type\";s:4:\"time\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:16:\"service_location\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:8:\"latitude\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:9:\"longitude\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:7:\"area_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:12:\"is_emergency\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:13:\"license_plate\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:12;a:4:{s:4:\"name\";s:14:\"ref_service_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:13;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:4:\"enum\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:14;a:4:{s:4:\"name\";s:6:\"method\";s:4:\"type\";s:4:\"enum\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:15;a:4:{s:4:\"name\";s:14:\"payment_status\";s:4:\"type\";s:7:\"tinyint\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}}'),
(6, NULL, NULL, 'list_order', 'order', 'list', NULL, NULL, NULL, '', 'List Order', '<p>list order<br></p>', NULL, 'get', 'a:16:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:11:\"customer_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:10:\"order_date\";s:4:\"type\";s:4:\"date\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:10:\"order_time\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:12:\"service_date\";s:4:\"type\";s:4:\"date\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:12:\"service_time\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:16:\"service_location\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:8:\"latitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:8;a:5:{s:4:\"name\";s:9:\"longitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:9;a:5:{s:4:\"name\";s:7:\"area_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:10;a:5:{s:4:\"name\";s:12:\"is_emergency\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:11;a:5:{s:4:\"name\";s:13:\"license_plate\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:12;a:5:{s:4:\"name\";s:14:\"ref_service_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:13;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:14;a:5:{s:4:\"name\";s:6:\"method\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:15;a:5:{s:4:\"name\";s:14:\"payment_status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:16:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:11:\"customer_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:10:\"order_date\";s:4:\"type\";s:4:\"date\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:10:\"order_time\";s:4:\"type\";s:4:\"time\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:12:\"service_date\";s:4:\"type\";s:4:\"date\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:12:\"service_time\";s:4:\"type\";s:4:\"time\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:16:\"service_location\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:8:\"latitude\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:9:\"longitude\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:7:\"area_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:12:\"is_emergency\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:13:\"license_plate\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:12;a:4:{s:4:\"name\";s:14:\"ref_service_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:13;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:4:\"enum\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:14;a:4:{s:4:\"name\";s:6:\"method\";s:4:\"type\";s:4:\"enum\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:15;a:4:{s:4:\"name\";s:14:\"payment_status\";s:4:\"type\";s:7:\"tinyint\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}}'),
(7, NULL, NULL, 'update_order', 'order', 'save_edit', NULL, NULL, NULL, '', 'Update Order', '<p>Update Order<br></p>', NULL, 'post', 'a:16:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:11:\"customer_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:10:\"order_date\";s:4:\"type\";s:4:\"date\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:3;a:5:{s:4:\"name\";s:10:\"order_time\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:4;a:5:{s:4:\"name\";s:12:\"service_date\";s:4:\"type\";s:4:\"date\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:5;a:5:{s:4:\"name\";s:12:\"service_time\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:6;a:5:{s:4:\"name\";s:16:\"service_location\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:8:\"latitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:8;a:5:{s:4:\"name\";s:9:\"longitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:9;a:5:{s:4:\"name\";s:7:\"area_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:10;a:5:{s:4:\"name\";s:12:\"is_emergency\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:11;a:5:{s:4:\"name\";s:13:\"license_plate\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:12;a:5:{s:4:\"name\";s:14:\"ref_service_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:13;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:14;a:5:{s:4:\"name\";s:6:\"method\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:15;a:5:{s:4:\"name\";s:14:\"payment_status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}}', 'a:16:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:11:\"customer_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:10:\"order_date\";s:4:\"type\";s:4:\"date\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:10:\"order_time\";s:4:\"type\";s:4:\"time\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:12:\"service_date\";s:4:\"type\";s:4:\"date\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:12:\"service_time\";s:4:\"type\";s:4:\"time\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:16:\"service_location\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:8:\"latitude\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:9:\"longitude\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:7:\"area_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:12:\"is_emergency\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:13:\"license_plate\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:12;a:4:{s:4:\"name\";s:14:\"ref_service_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:13;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:4:\"enum\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:14;a:4:{s:4:\"name\";s:6:\"method\";s:4:\"type\";s:4:\"enum\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:15;a:4:{s:4:\"name\";s:14:\"payment_status\";s:4:\"type\";s:7:\"tinyint\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}}'),
(8, NULL, NULL, 'list_brand', 'ref_brand', 'list', NULL, NULL, NULL, '', 'List Brand', 'Listing Brand <br>', NULL, 'get', 'a:3:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:5:\"wheel\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:3:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:5:\"wheel\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}}'),
(9, NULL, NULL, 'list_area', 'ref_area', 'list', NULL, NULL, NULL, '', 'List Area', '<p>Listing Area<br></p>', NULL, 'get', 'a:5:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:9:\"parent_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:15:\"lingkup_wilayah\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:13:\"kode_mendagri\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:5:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:9:\"parent_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:15:\"lingkup_wilayah\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:13:\"kode_mendagri\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}}'),
(10, NULL, NULL, 'list_vehicle_type', 'ref_vehicle_type', 'list', NULL, NULL, NULL, '', 'List Vehicle Type', '<p>Listing Vehicle Type<br></p>', NULL, 'get', 'a:7:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:5:\"wheel\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:12:\"ref_brand_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:4:\"type\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:4:\"year\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:12:\"transmission\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:4:\"note\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:5:\"wheel\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:12:\"ref_brand_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:4:\"type\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:4:\"year\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:12:\"transmission\";s:4:\"type\";s:4:\"enum\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:4:\"note\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}}'),
(11, NULL, NULL, 'list_occupation', 'ref_occupation', 'list', NULL, NULL, NULL, '', 'List Occupation', '<p>Listing occupation<br></p>', NULL, 'get', 'a:2:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:2:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}}'),
(12, NULL, NULL, 'list_user_group', 'ref_user_group', 'list', NULL, NULL, NULL, '', 'List User Group', '<p>List User Group<br></p>', NULL, 'get', 'a:3:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:11:\"description\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:3:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:11:\"description\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}}'),
(13, NULL, NULL, 'list_user_group', 'ref_user_group', 'list', NULL, NULL, NULL, '', 'List User Group', '<p>List User Group<br></p>', NULL, 'get', 'a:3:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:11:\"description\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:3:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:11:\"description\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}}'),
(14, NULL, NULL, 'list_bengkel_type', 'ref_bengkel_type', 'list', NULL, NULL, NULL, '', 'List Bengkel Type', '<p>List Bengkel Type<br></p>', NULL, 'get', 'a:4:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:5:\"wheel\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:4:\"size\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:4:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:5:\"wheel\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:4:\"size\";s:4:\"type\";s:4:\"enum\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}}'),
(15, NULL, NULL, 'list_service_type', 'ref_service_type', 'list', NULL, NULL, NULL, '', 'List Service Type', '<p>Daftar Tipe Service<br></p>', NULL, 'get', 'a:6:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:5:\"wheel\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:11:\"description\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:8:\"category\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:4:\"note\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:6:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:5:\"wheel\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:11:\"description\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:8:\"category\";s:4:\"type\";s:4:\"enum\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:4:\"note\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}}'),
(16, NULL, NULL, 'list_spare_part', 'ref_spare_part', 'list', NULL, NULL, NULL, '', 'List Spare Part', '<p>List Spare Part<br></p>', NULL, 'get', 'a:6:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:5:\"brand\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:4:\"tipe\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:11:\"ref_part_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:4:\"note\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:6:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:5:\"brand\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:4:\"tipe\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:11:\"ref_part_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:4:\"note\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}}'),
(17, NULL, NULL, 'list_bengkel', 'bengkel', 'list', NULL, NULL, NULL, '', 'List Bengkel', '<p>List Bengkel<br></p>', NULL, 'get', 'a:16:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:19:\"ref_bengkel_type_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:7:\"address\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:8:\"latitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:9:\"longitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:11:\"ref_area_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:5:\"phone\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:8;a:5:{s:4:\"name\";s:3:\"fax\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:9;a:5:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:10;a:5:{s:4:\"name\";s:18:\"contact_person1_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:11;a:5:{s:4:\"name\";s:18:\"contact_person2_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:12;a:5:{s:4:\"name\";s:8:\"owner_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:13;a:5:{s:4:\"name\";s:9:\"max_order\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:14;a:5:{s:4:\"name\";s:14:\"account_number\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:15;a:5:{s:4:\"name\";s:12:\"account_name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:16:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:19:\"ref_bengkel_type_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:7:\"address\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:8:\"latitude\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:9:\"longitude\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:11:\"ref_area_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:5:\"phone\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:3:\"fax\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:18:\"contact_person1_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:18:\"contact_person2_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:12;a:4:{s:4:\"name\";s:8:\"owner_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:13;a:4:{s:4:\"name\";s:9:\"max_order\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:14;a:4:{s:4:\"name\";s:14:\"account_number\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:15;a:4:{s:4:\"name\";s:12:\"account_name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}}'),
(18, NULL, NULL, 'order', 'order', 'save_add', NULL, NULL, NULL, '', 'POST Order', '', NULL, 'post', 'a:15:{i:0;a:5:{s:4:\"name\";s:11:\"customer_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:10:\"order_date\";s:4:\"type\";s:4:\"date\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:2;a:5:{s:4:\"name\";s:10:\"order_time\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:3;a:5:{s:4:\"name\";s:12:\"service_date\";s:4:\"type\";s:4:\"date\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:4;a:5:{s:4:\"name\";s:12:\"service_time\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:5;a:5:{s:4:\"name\";s:16:\"service_location\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:6;a:5:{s:4:\"name\";s:8:\"latitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:7;a:5:{s:4:\"name\";s:9:\"longitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:8;a:5:{s:4:\"name\";s:7:\"area_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:9;a:5:{s:4:\"name\";s:12:\"is_emergency\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:10;a:5:{s:4:\"name\";s:13:\"license_plate\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:11;a:5:{s:4:\"name\";s:14:\"ref_service_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:12;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:13;a:5:{s:4:\"name\";s:6:\"method\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:14;a:5:{s:4:\"name\";s:14:\"payment_status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:16:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:11:\"customer_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:10:\"order_date\";s:4:\"type\";s:4:\"date\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:10:\"order_time\";s:4:\"type\";s:4:\"time\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:12:\"service_date\";s:4:\"type\";s:4:\"date\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:12:\"service_time\";s:4:\"type\";s:4:\"time\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:16:\"service_location\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:8:\"latitude\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:9:\"longitude\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:7:\"area_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:12:\"is_emergency\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:13:\"license_plate\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:12;a:4:{s:4:\"name\";s:14:\"ref_service_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:13;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:4:\"enum\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:14;a:4:{s:4:\"name\";s:6:\"method\";s:4:\"type\";s:4:\"enum\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:15;a:4:{s:4:\"name\";s:14:\"payment_status\";s:4:\"type\";s:7:\"tinyint\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}}'),
(19, NULL, NULL, 'login', 'cms_users', 'detail', NULL, NULL, NULL, '', 'Login', '', NULL, 'post', 'a:7:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:5:\"photo\";s:4:\"type\";s:5:\"image\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:4;a:5:{s:4:\"name\";s:8:\"password\";s:4:\"type\";s:8:\"password\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:5;a:5:{s:4:\"name\";s:17:\"id_cms_privileges\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:10:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:5:\"photo\";s:4:\"type\";s:5:\"image\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:8:\"password\";s:4:\"type\";s:8:\"password\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:17:\"id_cms_privileges\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:19:\"cms_privileges_name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:28:\"cms_privileges_is_superadmin\";s:4:\"type\";s:7:\"tinyint\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:26:\"cms_privileges_theme_color\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}}'),
(21, NULL, NULL, 'register', 'customer', 'save_add', NULL, NULL, NULL, '', 'register', '', NULL, 'post', 'a:11:{i:0;a:5:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:2;a:5:{s:4:\"name\";s:9:\"cellphone\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:3;a:5:{s:4:\"name\";s:7:\"address\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:4;a:5:{s:4:\"name\";s:17:\"ref_occupation_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:5;a:5:{s:4:\"name\";s:8:\"latitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:6;a:5:{s:4:\"name\";s:9:\"longitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:7;a:5:{s:4:\"name\";s:11:\"ref_area_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:8;a:5:{s:4:\"name\";s:8:\"deviceid\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:9;a:5:{s:4:\"name\";s:3:\"uid\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:10;a:5:{s:4:\"name\";s:4:\"type\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:12:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:9:\"cellphone\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:7:\"address\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:17:\"ref_occupation_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:8:\"latitude\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:9:\"longitude\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:11:\"ref_area_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:9:\"device_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:3:\"uid\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:4:\"type\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}}');
INSERT INTO `cms_apicustom` (`id`, `created_at`, `updated_at`, `permalink`, `tabel`, `aksi`, `kolom`, `orderby`, `sub_query_1`, `sql_where`, `nama`, `keterangan`, `parameter`, `method_type`, `parameters`, `responses`) VALUES
(23, NULL, NULL, 'order', 'order', 'save_add', NULL, NULL, NULL, '', 'order', '', NULL, 'post', 'a:15:{i:0;a:5:{s:4:\"name\";s:11:\"customer_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:10:\"order_date\";s:4:\"type\";s:4:\"date\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:2;a:5:{s:4:\"name\";s:10:\"order_time\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:3;a:5:{s:4:\"name\";s:12:\"service_date\";s:4:\"type\";s:4:\"date\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:4;a:5:{s:4:\"name\";s:12:\"service_time\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:5;a:5:{s:4:\"name\";s:16:\"service_location\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:6;a:5:{s:4:\"name\";s:8:\"latitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:7;a:5:{s:4:\"name\";s:9:\"longitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:8;a:5:{s:4:\"name\";s:7:\"area_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:9;a:5:{s:4:\"name\";s:12:\"is_emergency\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:10;a:5:{s:4:\"name\";s:13:\"license_plate\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:11;a:5:{s:4:\"name\";s:14:\"ref_service_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:12;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:13;a:5:{s:4:\"name\";s:6:\"method\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:14;a:5:{s:4:\"name\";s:14:\"payment_status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:16:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:11:\"customer_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:10:\"order_date\";s:4:\"type\";s:4:\"date\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:10:\"order_time\";s:4:\"type\";s:4:\"time\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:12:\"service_date\";s:4:\"type\";s:4:\"date\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"0\";}i:5;a:4:{s:4:\"name\";s:12:\"service_time\";s:4:\"type\";s:4:\"time\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"0\";}i:6;a:4:{s:4:\"name\";s:16:\"service_location\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:8:\"latitude\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:9:\"longitude\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:7:\"area_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:12:\"is_emergency\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:13:\"license_plate\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:12;a:4:{s:4:\"name\";s:14:\"ref_service_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:13;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:4:\"enum\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:14;a:4:{s:4:\"name\";s:6:\"method\";s:4:\"type\";s:4:\"enum\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:15;a:4:{s:4:\"name\";s:14:\"payment_status\";s:4:\"type\";s:7:\"tinyint\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}}'),
(25, NULL, NULL, 'updatedevice', 'customer', 'save_edit', NULL, NULL, NULL, '', 'updatedevice', '', NULL, 'post', 'a:12:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:9:\"cellphone\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:7:\"address\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:17:\"ref_occupation_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:8:\"latitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:9:\"longitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:8;a:5:{s:4:\"name\";s:11:\"ref_area_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:9;a:5:{s:4:\"name\";s:8:\"deviceid\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:10;a:5:{s:4:\"name\";s:3:\"uid\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:11;a:5:{s:4:\"name\";s:4:\"type\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:12:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:9:\"cellphone\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:7:\"address\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:17:\"ref_occupation_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:8:\"latitude\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:9:\"longitude\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:11:\"ref_area_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:9:\"device_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:3:\"uid\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:4:\"type\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}}'),
(26, NULL, NULL, 'customerbyuid', 'customer', 'detail', NULL, NULL, NULL, '', 'customerbyuid', '', NULL, 'get', 'a:12:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:9:\"cellphone\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:7:\"address\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:17:\"ref_occupation_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:8:\"latitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:9:\"longitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:8;a:5:{s:4:\"name\";s:11:\"ref_area_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:9;a:5:{s:4:\"name\";s:8:\"deviceid\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:10;a:5:{s:4:\"name\";s:3:\"uid\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:11;a:5:{s:4:\"name\";s:4:\"type\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:11:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:9:\"cellphone\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:7:\"address\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:17:\"ref_occupation_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:8:\"latitude\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:9:\"longitude\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:11:\"ref_area_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:3:\"uid\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:4:\"type\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}}'),
(27, NULL, NULL, 'ditelharga', 'ref_service_type', 'detail', NULL, NULL, NULL, '', 'ditelHarga', '', NULL, 'post', 'a:7:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:5:\"wheel\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:3:\"sub\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:11:\"description\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:4:\"note\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:5:\"price\";s:4:\"type\";s:7:\"numeric\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:5:\"wheel\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:3:\"sub\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:11:\"description\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:4:\"note\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:5:\"price\";s:4:\"type\";s:7:\"numeric\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}}'),
(28, NULL, NULL, 'sendnotiftocustomer', 'bengkel', 'detail', NULL, NULL, NULL, '', 'sendnotiftocustomer', '', NULL, 'post', 'a:16:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:19:\"ref_bengkel_type_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:7:\"address\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:8:\"latitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:9:\"longitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:11:\"ref_area_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:5:\"phone\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:8;a:5:{s:4:\"name\";s:3:\"fax\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:9;a:5:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:10;a:5:{s:4:\"name\";s:18:\"contact_person1_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:11;a:5:{s:4:\"name\";s:18:\"contact_person2_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:12;a:5:{s:4:\"name\";s:8:\"owner_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:13;a:5:{s:4:\"name\";s:9:\"max_order\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:14;a:5:{s:4:\"name\";s:14:\"account_number\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:15;a:5:{s:4:\"name\";s:12:\"account_name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:15:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:19:\"ref_bengkel_type_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:7:\"address\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:8:\"latitude\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:9:\"longitude\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:11:\"ref_area_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:5:\"phone\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:3:\"fax\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:18:\"contact_person1_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:18:\"contact_person2_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:12;a:4:{s:4:\"name\";s:9:\"max_order\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:13;a:4:{s:4:\"name\";s:14:\"account_number\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:14;a:4:{s:4:\"name\";s:12:\"account_name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}}'),
(30, NULL, NULL, 'detail_bengkel', 'bengkel', 'list', NULL, NULL, NULL, '', 'detail_bengkel', '', NULL, 'get', 'a:16:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:19:\"ref_bengkel_type_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:7:\"address\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:8:\"latitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:9:\"longitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:11:\"ref_area_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:5:\"phone\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:8;a:5:{s:4:\"name\";s:3:\"fax\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:9;a:5:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:10;a:5:{s:4:\"name\";s:18:\"contact_person1_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:11;a:5:{s:4:\"name\";s:18:\"contact_person2_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:12;a:5:{s:4:\"name\";s:11:\"customer_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:13;a:5:{s:4:\"name\";s:9:\"max_order\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:14;a:5:{s:4:\"name\";s:14:\"account_number\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:15;a:5:{s:4:\"name\";s:12:\"account_name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:16:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:19:\"ref_bengkel_type_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:7:\"address\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:8:\"latitude\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:9:\"longitude\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:11:\"ref_area_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:5:\"phone\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:3:\"fax\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:18:\"contact_person1_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:18:\"contact_person2_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:12;a:4:{s:4:\"name\";s:11:\"customer_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:13;a:4:{s:4:\"name\";s:9:\"max_order\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:14;a:4:{s:4:\"name\";s:14:\"account_number\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:15;a:4:{s:4:\"name\";s:12:\"account_name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}}'),
(31, NULL, NULL, 'sendnotifnotgetmechanic', 'order', 'detail', NULL, NULL, NULL, '', 'sendNotifNotGetMechanic', '', NULL, 'get', 'a:16:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:11:\"customer_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:10:\"order_date\";s:4:\"type\";s:4:\"date\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:10:\"order_time\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:12:\"service_date\";s:4:\"type\";s:4:\"date\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:12:\"service_time\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:16:\"service_location\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:8:\"latitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:8;a:5:{s:4:\"name\";s:9:\"longitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:9;a:5:{s:4:\"name\";s:7:\"area_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:10;a:5:{s:4:\"name\";s:12:\"is_emergency\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:11;a:5:{s:4:\"name\";s:13:\"license_plate\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:12;a:5:{s:4:\"name\";s:14:\"ref_service_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:13;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:14;a:5:{s:4:\"name\";s:6:\"method\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:15;a:5:{s:4:\"name\";s:14:\"payment_status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:1:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}}'),
(32, NULL, NULL, 'sendconfirmordered', 'order', 'detail', NULL, NULL, NULL, '', 'sendConfirmOrdered', '', NULL, 'get', 'a:16:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:11:\"customer_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:10:\"order_date\";s:4:\"type\";s:4:\"date\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:10:\"order_time\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:12:\"service_date\";s:4:\"type\";s:4:\"date\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:12:\"service_time\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:16:\"service_location\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:8:\"latitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:8;a:5:{s:4:\"name\";s:9:\"longitude\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:9;a:5:{s:4:\"name\";s:7:\"area_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:10;a:5:{s:4:\"name\";s:12:\"is_emergency\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:11;a:5:{s:4:\"name\";s:13:\"license_plate\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:12;a:5:{s:4:\"name\";s:14:\"ref_service_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:13;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:14;a:5:{s:4:\"name\";s:6:\"method\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:15;a:5:{s:4:\"name\";s:14:\"payment_status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:1:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}}');

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `screetkey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_apikey`
--

INSERT INTO `cms_apikey` (`id`, `created_at`, `updated_at`, `screetkey`, `hit`, `status`) VALUES
(1, '2017-02-24 03:24:52', NULL, '39e62113a2ce7562a4fad82775c4b01a', 0, 'non active');

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8_unicode_ci,
  `email_attachments` text COLLATE utf8_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2017-01-06 18:50:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ipaddress` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `created_at`, `updated_at`, `ipaddress`, `useragent`, `url`, `description`, `id_cms_users`) VALUES
(1, '2017-01-06 18:52:00', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address ::1', 1),
(2, '2017-01-08 13:15:23', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address ::1', 1),
(3, '2017-01-08 13:18:52', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://localhost:8000/admin/users/add-save', 'Add New Data Ihsan Faturohman at Users', 1),
(4, '2017-01-08 14:08:44', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://localhost:8000/admin/menu_management/delete/10', 'Delete data Vehicle Type at Menu Management', 1),
(5, '2017-01-08 14:08:51', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://localhost:8000/admin/menu_management/delete/10', 'Delete data  at Menu Management', 1),
(6, '2017-01-08 14:08:59', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://localhost:8000/admin/menu_management/delete/10', 'Delete data  at Menu Management', 1),
(7, '2017-01-08 14:09:27', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://localhost:8000/admin/module_generator/delete/15', 'Delete data Vehicle Type at Module Generator', 1),
(8, '2017-01-08 14:11:30', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://localhost:8000/admin/module_generator/delete/14', 'Delete data Vehicle Type at Module Generator', 1),
(9, '2017-01-08 14:11:59', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://localhost:8000/admin/menu_management/delete/7', 'Delete data Vehicle Type at Menu Management', 1),
(10, '2017-01-08 23:03:52', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://localhost:8000/admin/login', 'ihsan.seeking@gmail.com login with IP Address ::1', 2),
(11, '2017-01-13 17:52:34', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://localhost:8000/admin/login', 'ihsan.seeking@gmail.com login with IP Address ::1', 2),
(12, '2017-01-14 03:44:43', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://localhost:8000/admin/login', 'ihsan.seeking@gmail.com login with IP Address ::1', 2),
(13, '2017-01-16 00:13:25', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://localhost:8000/admin/login', 'ihsan.seeking@gmail.com login with IP Address ::1', 2),
(14, '2017-01-16 08:16:07', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://localhost:8000/admin/login', 'ihsan.seeking@gmail.com login with IP Address ::1', 2),
(15, '2017-01-17 04:57:22', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://localhost:8000/admin/login', 'ihsan.seeking@gmail.com login with IP Address ::1', 2),
(16, '2017-01-19 05:39:47', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://localhost:8000/admin/login', 'ihsan.seeking@gmail.com login with IP Address ::1', 2),
(17, '2017-02-17 00:55:46', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost:8080/API/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', 1),
(18, '2017-02-24 02:25:25', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost:8080/API/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', 1),
(19, '2017-02-24 23:57:39', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost:8080/API/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', 1),
(20, '2017-02-25 17:47:56', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost:8080/API/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', 1),
(21, '2017-02-25 17:52:04', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost:8080/API/public/admin/module_generator/delete/23', 'Delete data Customer at Module Generator', 1),
(22, '2017-02-26 11:27:46', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost:8080/API/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', 1),
(23, '2017-02-27 11:34:46', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost:8080/API/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', 1),
(24, '2017-02-28 05:41:00', NULL, '120.188.1.186', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/login', 'admin@crudbooster.com login with IP Address 120.188.1.186', 1),
(25, '2017-02-28 05:48:58', NULL, '120.188.1.186', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/menu_management/delete/34', 'Delete data Customer at Menu Management', 1),
(26, '2017-02-28 05:49:27', NULL, '120.188.1.186', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/module_generator/delete/26', 'Delete data Customer at Module Generator', 1),
(27, '2017-02-28 05:50:11', NULL, '120.188.1.186', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/menu_management/delete/43', 'Delete data Customer at Menu Management', 1),
(28, '2017-02-28 19:00:07', NULL, '120.188.2.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/login', 'admin@crudbooster.com login with IP Address 120.188.2.3', 1),
(29, '2017-03-03 07:56:59', NULL, '120.188.3.128', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/login', 'admin@crudbooster.com login with IP Address 120.188.3.128', 1),
(30, '2017-03-04 06:54:21', NULL, '202.80.215.124', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/login', 'admin@crudbooster.com login with IP Address 202.80.215.124', 1),
(31, '2017-03-05 04:04:18', NULL, '202.80.215.124', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/login', 'admin@crudbooster.com login with IP Address 202.80.215.124', 1),
(32, '2017-03-06 22:34:43', NULL, '120.188.92.122', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/login', 'admin@crudbooster.com login with IP Address 120.188.92.122', 1),
(33, '2017-03-07 03:44:53', NULL, '120.188.92.122', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/login', 'admin@crudbooster.com login with IP Address 120.188.92.122', 1),
(34, '2017-03-07 04:00:57', NULL, '120.188.92.122', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/module_generator/delete/21', 'Delete data Bengkel at Module Generator', 1),
(35, '2017-03-07 04:08:30', NULL, '120.188.92.122', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/module_generator/delete/27', 'Delete data Bengkel at Module Generator', 1),
(36, '2017-03-07 04:09:57', NULL, '120.188.92.122', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/bengkel/delete/90', 'Delete data Star auto care at Bengkel', 1),
(37, '2017-03-07 04:13:39', NULL, '120.188.92.122', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/bengkel/delete/89', 'Delete data Saleh motor at Bengkel', 1),
(38, '2017-03-07 04:13:43', NULL, '120.188.92.122', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/bengkel/delete/88', 'Delete data Cahaya motor at Bengkel', 1),
(39, '2017-03-07 04:13:46', NULL, '120.188.92.122', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/bengkel/delete/87', 'Delete data Bintang ban seyegan at Bengkel', 1),
(40, '2017-03-07 04:13:49', NULL, '120.188.92.122', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/bengkel/delete/86', 'Delete data Caraka motor at Bengkel', 1),
(41, '2017-03-07 04:13:52', NULL, '120.188.92.122', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/bengkel/delete/85', 'Delete data Seno motor at Bengkel', 1),
(42, '2017-03-07 04:13:58', NULL, '120.188.92.122', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/bengkel/delete/84', 'Delete data Anugrah motor at Bengkel', 1),
(43, '2017-03-07 04:14:04', NULL, '120.188.92.122', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/bengkel/delete/74', 'Delete data AIS AKI BANTUL at Bengkel', 1),
(44, '2017-03-07 04:21:10', NULL, '120.188.92.122', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/bengkel/edit-save/83', 'Update data KVM at Bengkel', 1),
(45, '2017-03-07 05:19:47', NULL, '120.188.92.122', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/bengkel/edit-save/67', 'Update data Ais Aki Jogja at Bengkel', 1),
(46, '2017-03-07 05:21:45', NULL, '120.188.92.122', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/bengkel/edit-save/77', 'Update data Orange car steam at Bengkel', 1),
(47, '2017-03-07 05:58:33', NULL, '120.188.92.122', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/bengkel/add-save', 'Add New Data Orange car steam at Bengkel', 1),
(48, '2017-03-10 19:15:12', NULL, '120.188.35.93', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/login', 'admin@crudbooster.com login with IP Address 120.188.35.93', 1),
(49, '2017-03-10 19:16:35', NULL, '120.188.35.93', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/logout', ' logout', NULL),
(50, '2017-03-10 19:16:50', NULL, '120.188.35.93', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/login', 'admin@crudbooster.com login with IP Address 120.188.35.93', 1),
(51, '2017-03-10 19:19:49', NULL, '120.188.35.93', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/statistic_builder/add-save', 'Add New Data test at Statistic Builder', 1),
(52, '2017-03-10 19:23:53', NULL, '120.188.35.93', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/menu_management/add-save', 'Add New Data test at Menu Management', 1),
(53, '2017-03-10 19:26:17', NULL, '120.188.35.93', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/menu_management/edit-save/50', 'Update data test at Menu Management', 1),
(54, '2017-03-10 23:27:22', NULL, '120.188.35.93', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/menu_management/delete/46', 'Delete data Bengkel at Menu Management', 1),
(55, '2017-03-10 23:28:00', NULL, '120.188.35.93', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/menu_management/delete/28', 'Delete data Bengkel at Menu Management', 1),
(56, '2017-03-10 23:28:40', NULL, '120.188.35.93', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/statistic_builder/edit-save/1', 'Update data Statistik Terkini at Statistic Builder', 1),
(57, '2017-03-10 23:41:38', NULL, '120.188.35.93', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/logout', ' logout', NULL),
(58, '2017-03-10 23:41:51', NULL, '120.188.35.93', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/login', 'admin@crudbooster.com login with IP Address 120.188.35.93', 1),
(59, '2017-03-11 01:36:07', NULL, '120.188.35.93', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/notifications/action-selected', 'Delete data 6,5,4,3,2,1 at Notifications', 1),
(60, '2017-03-11 07:52:21', NULL, '120.188.94.248', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/login', 'admin@crudbooster.com login with IP Address 120.188.94.248', 1),
(61, '2017-03-11 07:53:37', NULL, '120.188.94.248', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/menu_management/edit-save/50', 'Update data test at Menu Management', 1),
(62, '2017-03-13 03:16:50', NULL, '120.188.93.234', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/login', 'admin@crudbooster.com login with IP Address 120.188.93.234', 1),
(63, '2017-03-13 07:33:15', NULL, '120.188.93.234', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/menu_management/add-save', 'Add New Data Peta at Menu Management', 1),
(64, '2017-03-13 07:33:45', NULL, '120.188.93.234', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://119.235.250.107/API/public/admin/menu_management/edit-save/54', 'Update data Peta at Menu Management', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Brand', 'URL External', '#', NULL, 'fa fa-trademark', 0, 1, 0, 1, 1, '2017-01-06 19:47:07', NULL),
(2, 'Add New Brand', 'Route', 'AdminRefBrandControllerGetAdd', NULL, 'fa fa-plus', 1, 1, 0, 1, 2, '2017-01-06 19:47:07', NULL),
(3, 'List Brand', 'Route', 'AdminRefBrandControllerGetIndex', NULL, 'fa fa-bars', 1, 1, 0, 1, 1, '2017-01-06 19:47:07', NULL),
(4, 'Area', 'URL External', '#', NULL, 'fa fa-map', 0, 1, 0, 1, 2, '2017-01-06 20:03:08', NULL),
(5, 'Add New Area', 'Route', 'AdminRefAreaControllerGetAdd', NULL, 'fa fa-plus', 4, 1, 0, 1, 1, '2017-01-06 20:03:08', NULL),
(6, 'List Area', 'Route', 'AdminRefAreaControllerGetIndex', NULL, 'fa fa-bars', 4, 1, 0, 1, 2, '2017-01-06 20:03:08', NULL),
(7, 'Vehicle Type', 'URL External', '#', NULL, 'fa fa-paperclip', 0, 1, 0, 1, 3, '2017-01-08 14:12:30', NULL),
(8, 'Add New Vehicle Type', 'Route', 'AdminRefVehicleTypeControllerGetAdd', NULL, 'fa fa-plus', 7, 1, 0, 1, 1, '2017-01-08 14:12:31', NULL),
(9, 'List Vehicle Type', 'Route', 'AdminRefVehicleTypeControllerGetIndex', NULL, 'fa fa-bars', 7, 1, 0, 1, 2, '2017-01-08 14:12:32', NULL),
(10, 'Occupation', 'URL External', '#', NULL, 'fa fa-slideshare', 0, 1, 0, 1, 4, '2017-01-08 19:37:16', NULL),
(11, 'Add New Occupation', 'Route', 'AdminRefOccupationControllerGetAdd', NULL, 'fa fa-plus', 10, 1, 0, 1, 1, '2017-01-08 19:37:16', NULL),
(12, 'List Occupation', 'Route', 'AdminRefOccupationControllerGetIndex', NULL, 'fa fa-bars', 10, 1, 0, 1, 2, '2017-01-08 19:37:16', NULL),
(13, 'User Grup', 'URL External', '#', NULL, 'fa fa-users', 0, 1, 0, 1, 5, '2017-01-08 23:06:20', NULL),
(14, 'Add New User Grup', 'Route', 'AdminRefUserGroupControllerGetAdd', NULL, 'fa fa-plus', 13, 1, 0, 1, 1, '2017-01-08 23:06:20', NULL),
(15, 'List User Grup', 'Route', 'AdminRefUserGroupControllerGetIndex', NULL, 'fa fa-bars', 13, 1, 0, 1, 2, '2017-01-08 23:06:20', NULL),
(16, 'Bengkel Type', 'URL External', '#', NULL, 'fa fa-building-o', 0, 1, 0, 1, 6, '2017-01-08 23:09:32', NULL),
(17, 'Add New Bengkel Type', 'Route', 'AdminRefBengkelTypeControllerGetAdd', NULL, 'fa fa-plus', 16, 1, 0, 1, 1, '2017-01-08 23:09:32', NULL),
(18, 'List Bengkel Type', 'Route', 'AdminRefBengkelTypeControllerGetIndex', NULL, 'fa fa-bars', 16, 1, 0, 1, 2, '2017-01-08 23:09:32', NULL),
(19, 'Service Type', 'URL External', '#', NULL, 'fa fa-wrench', 0, 1, 0, 1, 7, '2017-01-08 23:13:40', NULL),
(20, 'Add New Service Type', 'Route', 'AdminRefServiceTypeControllerGetAdd', NULL, 'fa fa-plus', 19, 1, 0, 1, 1, '2017-01-08 23:13:40', NULL),
(21, 'List Service Type', 'Route', 'AdminRefServiceTypeControllerGetIndex', NULL, 'fa fa-bars', 19, 1, 0, 1, 2, '2017-01-08 23:13:40', NULL),
(22, 'Spare Part', 'URL External', '#', NULL, 'fa fa-cube', 0, 1, 0, 1, 8, '2017-01-08 23:20:25', NULL),
(23, 'Add New Spare Part', 'Route', 'AdminRefSparePartControllerGetAdd', NULL, 'fa fa-plus', 22, 1, 0, 1, 1, '2017-01-08 23:20:25', NULL),
(24, 'List Spare Part', 'Route', 'AdminRefSparePartControllerGetIndex', NULL, 'fa fa-bars', 22, 1, 0, 1, 2, '2017-01-08 23:20:25', NULL),
(25, 'User', 'URL External', '#', NULL, 'fa fa-user', 0, 1, 0, 1, 9, '2017-01-08 23:22:33', NULL),
(26, 'Add New User', 'Route', 'AdminUserControllerGetAdd', NULL, 'fa fa-plus', 25, 1, 0, 1, 1, '2017-01-08 23:22:33', NULL),
(27, 'List User', 'Route', 'AdminUserControllerGetIndex', NULL, 'fa fa-bars', 25, 1, 0, 1, 2, '2017-01-08 23:22:33', NULL),
(31, 'Employee', 'URL External', '#', NULL, 'fa fa-user-md', 0, 1, 0, 1, 11, '2017-01-08 23:27:16', NULL),
(32, 'Add New Employee', 'Route', 'AdminEmployeeControllerGetAdd', NULL, 'fa fa-plus', 31, 1, 0, 1, 1, '2017-01-08 23:27:16', NULL),
(33, 'List Employee', 'Route', 'AdminEmployeeControllerGetIndex', NULL, 'fa fa-bars', 31, 1, 0, 1, 2, '2017-01-08 23:27:16', NULL),
(37, 'Employee Service', 'URL External', '#', NULL, 'fa fa-briefcase', 0, 1, 0, 1, 13, '2017-01-08 23:31:41', NULL),
(38, 'Add New Employee Service', 'Route', 'AdminEmployeeServiceControllerGetAdd', NULL, 'fa fa-plus', 37, 1, 0, 1, 1, '2017-01-08 23:31:41', NULL),
(39, 'List Employee Service', 'Route', 'AdminEmployeeServiceControllerGetIndex', NULL, 'fa fa-bars', 37, 1, 0, 1, 2, '2017-01-08 23:31:41', NULL),
(40, 'Order', 'URL External', '#', NULL, 'fa fa-shopping-cart', 0, 1, 0, 1, 14, '2017-01-16 20:05:40', NULL),
(41, 'Add New Order', 'Route', 'AdminOrderControllerGetAdd', NULL, 'fa fa-plus', 40, 1, 0, 1, 1, '2017-01-16 20:05:40', NULL),
(42, 'List Order', 'Route', 'AdminOrderControllerGetIndex', NULL, 'fa fa-bars', 40, 1, 0, 1, 2, '2017-01-16 20:05:40', NULL),
(43, 'Customer', 'URL External', '#', NULL, 'fa fa-glass', 0, 1, 0, 1, 15, '2017-02-28 05:50:33', NULL),
(44, 'Add New Customer', 'Route', 'AdminCustomerControllerGetAdd', NULL, 'fa fa-plus', 43, 1, 0, 1, 1, '2017-02-28 05:50:33', NULL),
(45, 'List Customer', 'Route', 'AdminCustomerControllerGetIndex', NULL, 'fa fa-bars', 43, 1, 0, 1, 2, '2017-02-28 05:50:33', NULL),
(47, 'Bengkel', 'URL External', '#', NULL, 'fa fa-star', 0, 1, 0, 1, 17, '2017-03-07 04:08:56', NULL),
(48, 'Add New Bengkel', 'Route', 'AdminBengkelControllerGetAdd', NULL, 'fa fa-plus', 47, 1, 0, 1, 1, '2017-03-07 04:08:56', NULL),
(49, 'List Bengkel', 'Route', 'AdminBengkelControllerGetIndex', NULL, 'fa fa-bars', 47, 1, 0, 1, 2, '2017-03-07 04:08:56', NULL),
(50, 'test', 'URL External', 'http://119.235.250.107/API/public/admin/statistic_builder/show/test', 'normal', 'fa fa-glass', 0, 1, 0, 1, NULL, '2017-03-10 19:23:53', '2017-03-11 07:53:37'),
(51, 'Peta', 'URL External', '#', NULL, 'fa fa-glass', 0, 1, 0, 1, 18, '2017-03-10 23:43:57', NULL),
(52, 'Add New Peta', 'Route', 'AdminBengkelControllerGetAdd', NULL, 'fa fa-plus', 51, 1, 0, 1, 1, '2017-03-10 23:43:57', NULL),
(53, 'List Peta', 'Route', 'AdminBengkelControllerGetIndex', NULL, 'fa fa-bars', 51, 1, 0, 1, 2, '2017-03-10 23:43:57', NULL),
(54, 'Peta', 'Admin Path', 'peta', 'normal', 'fa fa-sitemap', 0, 1, 1, 1, NULL, '2017-03-13 07:33:15', '2017-03-13 07:33:45');

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `created_at`, `updated_at`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`) VALUES
(1, '2017-01-06 18:50:32', NULL, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1),
(2, '2017-01-06 18:50:32', NULL, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1),
(3, '2017-01-06 18:50:32', NULL, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1),
(4, '2017-01-06 18:50:32', NULL, 'Users', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1),
(5, '2017-01-06 18:50:32', NULL, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1),
(6, '2017-01-06 18:50:32', NULL, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1),
(7, '2017-01-06 18:50:32', NULL, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1),
(8, '2017-01-06 18:50:32', NULL, 'Email Template', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1),
(9, '2017-01-06 18:50:32', NULL, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1),
(10, '2017-01-06 18:50:32', NULL, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1),
(11, '2017-01-06 18:50:32', NULL, 'Logs', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1),
(12, '2017-01-06 19:47:06', NULL, 'Brand', 'fa fa-trademark', 'ref_brand', 'ref_brand', 'AdminRefBrandController', 0, 0),
(13, '2017-01-06 20:03:08', NULL, 'Area', 'fa fa-map', 'ref_area', 'ref_area', 'AdminRefAreaController', 0, 0),
(14, '2017-01-08 14:12:29', NULL, 'Vehicle Type', 'fa fa-paperclip', 'ref_vehicle_type', 'ref_vehicle_type', 'AdminRefVehicleTypeController', 0, 0),
(15, '2017-01-08 19:37:16', NULL, 'Occupation', 'fa fa-slideshare', 'ref_occupation', 'ref_occupation', 'AdminRefOccupationController', 0, 0),
(16, '2017-01-08 23:06:19', NULL, 'User Grup', 'fa fa-users', 'ref_user_group', 'ref_user_group', 'AdminRefUserGroupController', 0, 0),
(17, '2017-01-08 23:09:32', NULL, 'Bengkel Type', 'fa fa-building-o', 'ref_bengkel_type', 'ref_bengkel_type', 'AdminRefBengkelTypeController', 0, 0),
(18, '2017-01-08 23:13:40', NULL, 'Service Type', 'fa fa-wrench', 'ref_service_type', 'ref_service_type', 'AdminRefServiceTypeController', 0, 0),
(19, '2017-01-08 23:20:25', NULL, 'Spare Part', 'fa fa-cube', 'ref_spare_part', 'ref_spare_part', 'AdminRefSparePartController', 0, 0),
(20, '2017-01-08 23:22:32', NULL, 'User', 'fa fa-user', 'user', 'user', 'AdminUserController', 0, 0),
(22, '2017-01-08 23:27:15', NULL, 'Employee', 'fa fa-user-md', 'employee', 'employee', 'AdminEmployeeController', 0, 0),
(24, '2017-01-08 23:31:40', NULL, 'Employee Service', 'fa fa-briefcase', 'employee_service', 'employee_service', 'AdminEmployeeServiceController', 0, 0),
(25, '2017-01-16 20:05:39', NULL, 'Order', 'fa fa-shopping-cart', 'order', 'order', 'AdminOrderController', 0, 0),
(26, '2017-02-28 05:50:33', NULL, 'Customer', 'fa fa-glass', 'customer', 'customer', 'AdminCustomerController', 0, 0),
(27, '2017-03-07 04:08:56', NULL, 'Bengkel', 'fa fa-star', 'bengkel', 'bengkel', 'AdminBengkelController', 0, 0),
(28, '2017-03-10 23:43:57', NULL, 'Peta', 'fa fa-glass', 'bengkel', 'bengkel', 'AdminBengkelController', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_notifications`
--

INSERT INTO `cms_notifications` (`id`, `created_at`, `updated_at`, `id_cms_users`, `content`, `url`, `is_read`) VALUES
(7, '2017-03-11 01:36:28', NULL, 1, 'adaw', 'adaw.com', 1),
(8, '2017-03-13 11:43:22', NULL, 1, 'adaw', 'adaw.com', 1),
(9, '2017-03-13 12:04:29', NULL, 1, 'adaw', 'adaw.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `created_at`, `updated_at`, `name`, `is_superadmin`, `theme_color`) VALUES
(1, '2017-01-06 18:50:32', NULL, 'Super Administrator', 1, 'skin-yellow'),
(2, NULL, NULL, 'Customer', 0, 'skin-blue');

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `created_at`, `updated_at`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`) VALUES
(1, NULL, NULL, 1, 1, 1, 1, 1, 1, 13),
(2, NULL, NULL, 1, 1, 1, 1, 1, 1, 27),
(3, NULL, NULL, 1, 1, 1, 1, 1, 1, 17),
(4, NULL, NULL, 1, 1, 1, 1, 1, 1, 12),
(5, NULL, NULL, 1, 1, 1, 1, 1, 1, 26),
(6, NULL, NULL, 1, 1, 1, 1, 1, 1, 22),
(7, NULL, NULL, 1, 1, 1, 1, 1, 1, 24),
(8, NULL, NULL, 1, 1, 1, 1, 1, 1, 15),
(9, NULL, NULL, 1, 1, 1, 1, 1, 1, 25),
(10, NULL, NULL, 1, 1, 1, 1, 1, 1, 18),
(11, NULL, NULL, 1, 1, 1, 1, 1, 1, 19),
(12, NULL, NULL, 1, 1, 1, 1, 1, 1, 20),
(13, NULL, NULL, 1, 1, 1, 1, 1, 1, 16),
(14, NULL, NULL, 1, 1, 1, 1, 1, 1, 4),
(15, NULL, NULL, 1, 1, 1, 1, 1, 1, 14),
(16, NULL, NULL, 1, 1, 1, 1, 1, 1, 28);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `created_at`, `updated_at`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `group_setting`, `label`) VALUES
(1, '2017-01-06 18:50:32', NULL, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', 'Login Register Style', 'Login Background Color'),
(2, '2017-01-06 18:50:32', NULL, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', 'Login Register Style', 'Login Font Color'),
(3, '2017-01-06 18:50:32', NULL, 'login_background_image', NULL, 'upload_image', NULL, NULL, 'Login Register Style', 'Login Background Image'),
(4, '2017-01-06 18:50:32', NULL, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, 'Email Setting', 'Email Sender'),
(5, '2017-01-06 18:50:32', NULL, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, 'Email Setting', 'Mail Driver'),
(6, '2017-01-06 18:50:32', NULL, 'smtp_host', '', 'text', NULL, NULL, 'Email Setting', 'SMTP Host'),
(7, '2017-01-06 18:50:32', NULL, 'smtp_port', '25', 'text', NULL, 'default 25', 'Email Setting', 'SMTP Port'),
(8, '2017-01-06 18:50:32', NULL, 'smtp_username', '', 'text', NULL, NULL, 'Email Setting', 'SMTP Username'),
(9, '2017-01-06 18:50:32', NULL, 'smtp_password', '', 'text', NULL, NULL, 'Email Setting', 'SMTP Password'),
(10, '2017-01-06 18:50:32', NULL, 'appname', 'Ais Autocare', 'text', NULL, NULL, 'Application Setting', 'Application Name'),
(11, '2017-01-06 18:50:32', NULL, 'default_paper_size', 'A4', 'text', NULL, 'Paper size, ex : A4, Legal, etc', 'Application Setting', 'Default Paper Print Size'),
(12, '2017-01-06 18:50:32', NULL, 'logo', 'uploads/2017-03/9a7abb582e88003c6408ccff11db7efb.png', 'upload_image', NULL, NULL, 'Application Setting', 'Logo'),
(13, '2017-01-06 18:50:32', NULL, 'favicon', 'uploads/2017-03/700e3cc4a95a36a72870d4dd4dd436c8.png', 'upload_image', NULL, NULL, 'Application Setting', 'Favicon'),
(14, '2017-01-06 18:50:32', NULL, 'api_debug_mode', 'true', 'select', 'true,false', NULL, 'Application Setting', 'API Debug Mode'),
(15, '2017-01-06 18:50:32', NULL, 'google_api_key', '', 'text', NULL, NULL, 'Application Setting', 'Google API Key'),
(16, '2017-01-06 18:50:32', NULL, 'google_fcm_key', '', 'text', NULL, NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Statistik Terkini', 'test', '2017-03-10 19:19:49', '2017-03-10 23:28:40');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(1, 1, '85dec91b0ae1ae1b20ed042271d9421f', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Jumlah Pengguna\",\"icon\":\"ion-android-notifications-none\",\"color\":\"bg-green\",\"link\":\"http:\\/\\/119.235.250.107\\/API\\/public\\/admin\\/order\",\"sql\":\"select count(id) from customer\"}', '2017-03-10 19:20:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `created_at`, `updated_at`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `status`) VALUES
(1, '2017-01-06 18:50:32', NULL, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$l/elJjjaULKUf4hPVy4LbOcz/Zf7ECavsXcvD64uRiwR0pvzmtYyu', 1, 'Active'),
(2, '2017-01-08 13:18:51', NULL, 'Ihsan Faturohman', 'uploads/2017-01/e861affe573613bf68937764563738e5.jpg', 'ihsan.seeking@gmail.com', '$2y$10$fxSjELsG21r5b0kzvCSdye8bQc6FMU8k7e3NPW0UB1zuIAuWgHg6O', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cellphone` varchar(20) NOT NULL,
  `address` text,
  `ref_occupation_id` int(11) DEFAULT NULL,
  `latitude` varchar(30) DEFAULT NULL,
  `longitude` varchar(30) DEFAULT NULL,
  `ref_area_id` int(11) DEFAULT NULL,
  `deviceid` text,
  `uid` text,
  `type` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `cellphone`, `address`, `ref_occupation_id`, `latitude`, `longitude`, `ref_area_id`, `deviceid`, `uid`, `type`) VALUES
(1, 'adaw', 'adaw@adaw.com', '123', '', 1, '', '', 14, '', 'tw4wD3jOMOQGWL37wQdxs1I0Gbx2', '1'),
(2, 'adaw', 'adaw@adaw.com', '123', '', 1, '', '', 14, '', 'asdf', '1'),
(3, 'ainglieur', 'adawsed@asdf.com', '0859', '', 1, '', '', 14, '1', 'QY6yBy2kqXa2HxnU1tFcA0bHCW13', '1'),
(4, 'aing lieur', 'adaws@adaws.com', '08965', NULL, 1, NULL, NULL, 14, '1', 'OkFX9IvG1bPHFzHoVhqykIzFOCH3', '1'),
(5, 'bababa', 'c1@ais.com', '085', NULL, 1, NULL, NULL, 14, '1', 'mSKGNVLrdRMsul0Ln85dMpm3WT22', '1'),
(6, 'cus1', 'cus1@ais.com', '089564321', NULL, 1, NULL, NULL, 14, 'ft329TgsHKA:APA91bFNOMZxWj77J5vrtdQXBzaKa7xSJK0h7co1A0sNIkyNeoJTUmZe8arBBIZmYPeSp-3wo-oEvOjhicXgjJPja0zRCBKoBKvJo_y238YCf2H8aw9olyZL5VGi4ym1J9_8DEl3pDan', 'kv6eB1scArcTclCuNkrquvGozFo2', '1'),
(7, 'customer d', 'custo@cus.com', '8566', NULL, 1, NULL, NULL, 14, '', 'BYWnpbtFxAYOxiAdCNaBrQAw0L32', '1'),
(8, 'adawxe', 'adawx@adaw.com', '08596', NULL, 1, NULL, NULL, 14, '', 'CvhadN1ZmIXKEtnGWIe11Iwtpmq1', '1'),
(9, 'customer2', 'cucus@cus.com', '085649234', NULL, 1, NULL, NULL, 14, '', '6EJIEvBh6dSp41ZDbYefnQbGPwh2', '1'),
(10, 'banan', 'adaw@ciats.com', '08856434', NULL, 1, NULL, NULL, 14, '', 'eeGtd5Oa2mWRUjla1B1M4RGPBUR2', '1'),
(11, 'doni', 'doni.hernawan@yandex.com', '087822215416', NULL, 1, NULL, NULL, 14, '', 'gXRcr0GwuWOitsMf3dacuiaVSH02', '1'),
(12, 'tes don', 'customer3@ais.com', '087822215416', NULL, 1, NULL, NULL, 14, '', 'OG40FelFt4ZUv4xbTB2mZxhHlav1', '1'),
(13, 'doni her', 'doni_hernawan@yahoo.com', '087822215416', NULL, 1, NULL, NULL, 14, 'd8x27WKdUYI:APA91bFBHaByzFRxGyb8jhO0v8N1sJiRbaxFEFt_H3c9LGWKcoVGaA15za48bWyBfbLaiiTvd0v99JWXJWCq06jDiR7iwxTfPFFgI1CZvOUYrNZaTBv8BCBWZf5TjF89yEZi_1WgSqto', '4G6xa1vHAdYyC46GhykLLkwcsO72', '1'),
(14, 'cucus', 'adawer@adaw.com', '8552', NULL, 1, NULL, NULL, 14, '', 'BkUjCmhu1lVz2QraPp9lmKxol2f2', '1'),
(15, 'doncoba', 'dh@petakita.com', '087822215416', NULL, 1, NULL, NULL, 14, '', 'i0lSurFBQxYWOdiq4h6xuxpH0pq1', '1'),
(16, 'caknur', 'caknurbisnis@gmail.com', '081328172625', NULL, 1, NULL, NULL, 14, 'fGer-i3TWtg:APA91bHh_LqtTSFgSifctCKlVUXidjaRRMnmNNaaGV79WgR-wUlHMKFk3NdOc7zstkz2YwhD_iW_TCFov3ANs_eskXUbvxcT73rJkiyxDLOdC0_x6_wo7QP5GDsZJkSVdQKeSB79CXol', '8211gHbWLDbjHTVAnq5OGP9S2F03', '1'),
(17, 'dekoya', 'dekoy@yahoo.com', '0878222154', NULL, 1, NULL, NULL, 14, '', 'ukyAZM2KC2dNcXyPTchj3ysOURX2', '1'),
(18, 'doni', 'doni@petakita.com', '087822215416', NULL, 1, NULL, NULL, 14, '', 'b12lbzcRmrNu3xrsrpQWM5eNeDY2', '1'),
(19, 'star autocare', 'starautocare@ais.com', '081227575754', NULL, 1, NULL, NULL, 14, '', 'yvDa7ikbSwZMKR1OQCTLmgZ3XRx2', '1'),
(20, 'kvm', 'kvm@ais.com', '081227575754', NULL, 1, NULL, NULL, 14, 'eyhdg9djxgY:APA91bF9taInWcqIGJYjX-_Gx8o5UHbfdiv4Fz3Q--i1dz-7rjellp4wCKWraDPx4n35C4NxhOXrEDydA_0QKQqapIqYqLiUtpcsQgwJcVdRxV4YVWr80TeJalYKrWhJ4rM4iq3YrXMr', 'ImW4G0EBX4h8ccioKY0tYkzPm5A3', '1'),
(21, 'orange car steam', 'orange@ais.com', '087738439607', NULL, 1, NULL, NULL, 14, 'eyhdg9djxgY:APA91bF9taInWcqIGJYjX-_Gx8o5UHbfdiv4Fz3Q--i1dz-7rjellp4wCKWraDPx4n35C4NxhOXrEDydA_0QKQqapIqYqLiUtpcsQgwJcVdRxV4YVWr80TeJalYKrWhJ4rM4iq3YrXMr', '29MhmKvbRtd1yAP0QBnVQ1pp1g12', '1'),
(22, 'aisaki', 'aisaki@ais.com', '087738439607', NULL, 1, NULL, NULL, 14, '', 'V2ejgz1ljtXjjRzs14YrW4QJbw43', '1');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `bengkel_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `nik` varchar(20) NOT NULL,
  `cellphone` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` text NOT NULL,
  `ref_area_id` int(11) NOT NULL,
  `ref_service_type_id` int(11) NOT NULL,
  `image_id` varchar(50) DEFAULT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `bengkel_id`, `first_name`, `last_name`, `nik`, `cellphone`, `email`, `address`, `ref_area_id`, `ref_service_type_id`, `image_id`, `note`) VALUES
(1, 1, 'didit', 'nini', '3273151708880000', '81522216789', '', 'jln.mangkubumi 45', 47619, 1, 'didit_nini.jpg', 'tidak menerima pekerjaan di weekend dan hari libur');

-- --------------------------------------------------------

--
-- Table structure for table `employee_service`
--

CREATE TABLE `employee_service` (
  `id` int(11) NOT NULL,
  `ref_service_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_service`
--

INSERT INTO `employee_service` (`id`, `ref_service_type_id`) VALUES
(1, 2),
(1, 3),
(1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(40) NOT NULL,
  `access_type` enum('1','2') NOT NULL,
  `date` date DEFAULT NULL,
  `start` time DEFAULT NULL,
  `finish` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `user_id`, `ip_address`, `access_type`, `date`, `start`, `finish`) VALUES
(1, 1, '222,124,121,230', '1', '0000-00-00', '13:00:00', '13:15:00'),
(2, 1, '222,124,121,230', '1', '0000-00-00', '15:00:00', '15:15:00'),
(3, 1, '118.96.195.145', '2', '0000-00-00', '17:13:00', '19:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_08_07_145904_add_table_cms_apicustom', 1),
(4, '2016_08_07_150834_add_table_cms_dashboard', 1),
(5, '2016_08_07_151210_add_table_cms_logs', 1),
(6, '2016_08_07_152014_add_table_cms_privileges', 1),
(7, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(8, '2016_08_07_152320_add_table_cms_settings', 1),
(9, '2016_08_07_152421_add_table_cms_users', 1),
(10, '2016_08_07_154624_add_table_cms_moduls', 1),
(11, '2016_08_17_225409_add_status_cms_users', 1),
(12, '2016_08_20_125418_add_table_cms_notifications', 1),
(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
(14, '2016_09_16_035347_add_group_setting', 1),
(15, '2016_09_16_045425_add_label_setting', 1),
(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(17, '2016_10_01_141740_add_method_type_apicustom', 1),
(18, '2016_10_01_141846_add_parameters_apicustom', 1),
(19, '2016_10_01_141934_add_responses_apicustom', 1),
(20, '2016_10_01_144826_add_table_apikey', 1),
(21, '2016_11_14_141657_create_cms_menus', 1),
(22, '2016_11_15_132350_create_cms_email_templates', 1),
(23, '2016_11_15_190410_create_cms_statistics', 1),
(24, '2016_11_17_102740_create_cms_statistic_components', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_date` date DEFAULT NULL,
  `order_time` time DEFAULT NULL,
  `service_date` date DEFAULT NULL,
  `service_time` time DEFAULT NULL,
  `service_location` text,
  `latitude` varchar(30) NOT NULL,
  `longitude` varchar(30) NOT NULL,
  `area_id` int(11) NOT NULL,
  `is_emergency` varchar(30) DEFAULT NULL,
  `license_plate` varchar(20) NOT NULL,
  `ref_service_id` int(11) NOT NULL,
  `status` enum('1','2','3','4','5') NOT NULL,
  `method` enum('1','2','3','4','5') NOT NULL,
  `payment_status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `customer_id`, `order_date`, `order_time`, `service_date`, `service_time`, `service_location`, `latitude`, `longitude`, `area_id`, `is_emergency`, `license_plate`, `ref_service_id`, `status`, `method`, `payment_status`) VALUES
(1, 1, '2024-01-01', '01:01:00', '2024-01-01', '01:01:00', '1', '-7.726247', '110.320547', 14, '1', 'AB100CA', 1, '1', '1', 1),
(2, 2, '2024-01-01', '01:01:00', '2024-01-01', '01:01:00', '1', '-7.726247', '110.320547', 14, '1', 'AB100CA', 1, '1', '1', 1),
(3, 2, '2024-01-01', '01:01:00', '2024-01-01', '01:01:00', '1', '-7.726247', '110.320547', 14, '1', 'AB100CA', 1, '1', '1', 1),
(4, 2, '2024-01-01', '01:01:00', '2024-01-01', '01:01:00', '1', '-7.726247', '110.320547', 14, '1', 'AB100CA', 1, '1', '1', 1),
(5, 2, '2024-01-01', '01:01:00', '2024-01-01', '01:01:00', '1', '-7.726247', '110.320547', 14, '1', 'AB100CA', 1, '1', '1', 1),
(6, 1, '2024-01-01', '01:01:00', '2024-01-01', '01:01:00', '1', '-7.726247', '110.320547', 14, '1', 'AB100CA', 1, '1', '1', 1),
(7, 1, '2024-01-01', '01:01:00', '2024-01-01', '01:01:00', '1', '-7.726247', '110.320547', 14, '1', 'AB100CA', 1, '1', '1', 1),
(8, 2, '2024-01-01', '01:01:00', '2024-01-01', '01:01:00', '1', '-7.726247', '110.320547', 14, '1', 'AB100CA', 1, '1', '1', 1),
(9, 2, '2024-01-01', '01:01:00', '2024-01-01', '01:01:00', '1', '-7.726247', '110.320547', 14, '1', 'AB100CA', 1, '1', '1', 1),
(10, 2, '2024-01-01', '01:01:00', '2024-01-01', '01:01:00', '1', '-7.726247', '110.320547', 14, '1', 'AB100CA', 1, '1', '1', 1),
(11, 2, '2024-01-01', '01:01:00', '2024-01-01', '01:01:00', '1', '-7.726247', '110.320547', 14, '1', 'AB100CA', 1, '1', '1', 1),
(12, 2, '2024-01-01', '01:01:00', '2024-01-01', '01:01:00', '1', '-7.726247', '110.320547', 14, '1', 'AB100CA', 1, '1', '1', 1),
(13, 2, '2024-01-01', '01:01:00', '2024-01-01', '01:01:00', '1', '-7.726247', '110.320547', 14, '1', 'AB100CA', 1, '1', '1', 1),
(14, 2, '2024-01-01', '01:01:00', '2024-01-01', '01:01:00', '1', '-7.726247', '110.320547', 14, '1', 'AB100CA', 1, '1', '1', 1),
(15, 2, '2024-01-01', '01:01:00', '2024-01-01', '01:01:00', '1', '-7.726247', '110.320547', 14, '1', 'AB100CA', 1, '1', '1', 1),
(16, 2, '2024-01-01', '01:01:00', '2024-01-01', '01:01:00', '1', '-7.726247', '110.320547', 14, '1', 'AB100CA', 1, '1', '1', 1),
(17, 2, '2024-01-01', '01:01:00', '2024-01-01', '01:01:00', '1', '-7.726247', '110.320547', 14, '1', 'AB100CA', 1, '1', '1', 1),
(18, 2, '2024-01-01', '01:01:00', '2024-01-01', '01:01:00', '1', '-7.726247', '110.320547', 14, '1', 'AB100CA', 1, '1', '1', 1),
(19, 2, '2024-01-01', '01:01:00', '2024-01-01', '01:01:00', '1', '-7.726247', '110.320547', 14, '1', 'AB100CA', 1, '1', '1', 1),
(20, 2, '2024-01-01', '01:01:00', '2024-01-01', '01:01:00', '1', '-7.726247', '110.320547', 14, '1', 'AB100CA', 1, '1', '1', 1),
(21, 2, '2024-01-01', '01:01:00', '2024-01-01', '01:01:00', '1', '-7.726247', '110.320547', 14, '1', 'AB100CA', 1, '1', '1', 1),
(22, 2, '2024-01-01', '01:01:00', '2024-01-01', '01:01:00', '1', '-7.726247', '110.320547', 14, '1', 'AB100CA', 1, '1', '1', 1),
(23, 2, '2024-01-01', '01:01:00', '2024-01-01', '01:01:00', '1', '-7.726247', '110.320547', 14, '1', 'AB100CA', 1, '1', '1', 1),
(24, 2, '2024-01-01', '01:01:00', '2024-01-01', '01:01:00', '1', '-7.726247', '110.320547', 14, '1', 'AB100CA', 1, '1', '1', 1),
(25, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'asdf', '1', '1', 14, '1', 'AB100CA', 1, '1', '1', 1),
(26, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'asdf', '1', '1', 14, '1', 'AB100CA', 1, '1', '1', 1),
(27, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'asdf', '1', '1', 14, '1', 'AB100CA', 1, '1', '1', 1),
(28, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'asdf', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(29, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'asdf', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(30, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'asdf', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(31, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'asdf', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(32, 1, '2017-02-28', '13:30:59', '2003-02-01', '00:00:00', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(33, 1, '2017-02-28', '13:31:45', '2003-02-01', '00:00:00', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(34, 1, '2017-02-28', '16:12:42', '2003-02-01', '00:00:00', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(35, 1, '2017-02-28', '16:18:37', '2003-02-01', '00:00:00', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(36, 1, '2017-02-28', '17:12:51', '2003-02-01', '00:00:00', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(37, 1, '2017-02-28', '17:13:23', '2003-02-01', '00:00:00', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(38, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'asdf', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(39, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'asdf', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(40, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'asdf', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(41, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'asdf', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(42, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'asdf', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(43, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'asdf', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(44, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'asdf', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(45, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'asdf', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(46, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'asdf', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(47, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'asdf', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(48, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'asdf', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(49, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'asdf', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(50, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'asdf', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(51, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'asdf', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(52, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'ceritanya alamat', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(53, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'ceritanya alamat', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(54, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'ceritanya alamat', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(55, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'ceritanya alamat', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(56, 5, '2017-02-28', '23:22:29', '2017-02-28', '23:22:29', 'Place: -7.7374974999999955,110.35152734375 \nAlamat: Jl. Kebon Agung, Trihanggo, Gamping, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55291, Indonesia \n', '-7.7374974999999955', '110.35152734375', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(57, 5, '2017-02-28', '23:22:51', '2017-02-28', '23:22:51', 'Place: -7.7374974999999955,110.35152734375 \nAlamat: Jl. Kebon Agung, Trihanggo, Gamping, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55291, Indonesia \n', '-7.7374974999999955', '110.35152734375', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(58, 5, '2017-02-28', '23:23:08', '2017-02-28', '23:23:08', 'Place: -7.7374974999999955,110.35152734375 \nAlamat: Jl. Kebon Agung, Trihanggo, Gamping, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55291, Indonesia \n', '-7.7374974999999955', '110.35152734375', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(59, 5, '2017-02-28', '23:39:14', '2017-02-28', '23:39:14', 'Place: -7.7374974999999955,110.35152734375 \nAlamat: Jl. Kebon Agung, Trihanggo, Gamping, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55291, Indonesia \n', '-7.7374974999999955', '110.35152734375', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(60, 5, '2017-02-28', '23:39:39', '2017-02-28', '23:39:39', 'Place: -7.7374974999999955,110.35152734375 \nAlamat: Jl. Kebon Agung, Trihanggo, Gamping, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55291, Indonesia \n', '-7.7374974999999955', '110.35152734375', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(61, 5, '2017-02-28', '23:39:56', '2017-02-28', '23:39:56', 'Place: -7.7374974999999955,110.35152734375 \nAlamat: Jl. Kebon Agung, Trihanggo, Gamping, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55291, Indonesia \n', '-7.7374974999999955', '110.35152734375', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(62, 5, '2017-02-28', '23:40:32', '2017-02-28', '23:40:32', 'Place: -7.7374974999999955,110.35152734375 \nAlamat: Jl. Kebon Agung, Trihanggo, Gamping, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55291, Indonesia \n', '-7.7374974999999955', '110.35152734375', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(63, 5, '2017-03-01', '00:05:10', '2017-03-01', '00:05:10', 'Place: -7.7374974999999955,110.35152734375 \nAlamat: Jl. Kebon Agung, Trihanggo, Gamping, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55291, Indonesia \n', '-7.7374974999999955', '110.35152734375', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(64, 5, '2017-03-01', '00:08:18', '2017-03-01', '00:08:18', 'Place: -7.7374974999999955,110.35152734375 \nAlamat: Jl. Kebon Agung, Trihanggo, Gamping, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55291, Indonesia \n', '-7.7374974999999955', '110.35152734375', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(65, 6, '2017-03-01', '07:07:37', '2017-03-01', '07:07:37', 'Place: -7.765427499999994,110.36167578125 \nAlamat: Ruko Permai Magelang, Jl. Magelang No.8, Sinduadi, Mlati, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55284, Indonesia \n', '-7.765427499999994', '110.36167578125', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(66, 6, '2017-03-01', '07:13:02', '2017-03-01', '07:13:02', 'Place: -7.7450325,110.37348828125002 \nAlamat: Jl. Palagan Tentara Pelajar No.55, Sariharjo, Ngaglik, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55581, Indonesia \n', '-7.7450325', '110.37348828125002', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(67, 6, '2017-03-01', '07:13:24', '2017-03-01', '07:13:24', 'Place: -7.7450325,110.37348828125002 \nAlamat: Jl. Palagan Tentara Pelajar No.55, Sariharjo, Ngaglik, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55581, Indonesia \n', '-7.7450325', '110.37348828125002', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(68, 6, '2017-03-01', '07:13:38', '2017-03-01', '07:13:38', 'Place: -7.7450325,110.37348828125002 \nAlamat: Jl. Palagan Tentara Pelajar No.55, Sariharjo, Ngaglik, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55581, Indonesia \n', '-7.7450325', '110.37348828125002', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(69, 6, '2017-03-01', '07:16:04', '2017-03-01', '07:16:04', 'Place: -7.743602500000001,110.37565234374998 \nAlamat: Jl. Nglempongsari VI No.62A, Sariharjo, Ngaglik, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55581, Indonesia \n', '-7.743602500000001', '110.37565234374998', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(70, 6, '2017-03-01', '07:20:51', '2017-03-01', '07:20:51', 'Place: -7.7611274999999935,110.36223046874997 \nAlamat: Jl. Selokan Mataram No.30A, Sinduadi, Mlati, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55284, Indonesia \n', '-7.7611274999999935', '110.36223046874997', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(71, 6, '2017-03-01', '07:24:24', '2017-03-01', '07:24:24', 'Place: -7.815357499999982,110.36954296874998 \nAlamat: Jl. Kol. Sugiyono No.28, Brontokusuman, Mergangsan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55153, Indonesia \n', '-7.815357499999982', '110.36954296874998', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(72, 6, '2017-03-01', '07:25:22', '2017-03-01', '07:25:22', 'Place: -7.727682499999993,110.33196484374994 \nAlamat: Jl. Purbaya, Sumberadi, Mlati, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55288, Indonesia \n', '-7.727682499999993', '110.33196484374994', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(73, 6, '2017-03-01', '07:26:15', '2017-03-01', '07:26:15', 'Place: -7.85777249999999,110.40903515625 \nAlamat: Jl. Pleret, Jambidan, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55791, Indonesia \n', '-7.85777249999999', '110.40903515625', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(74, 6, '2017-03-01', '07:31:17', '2017-03-01', '07:31:17', 'Place: -7.85777249999999,110.40903515625 \nAlamat: Jl. Pleret, Jambidan, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55791, Indonesia \n', '-7.85777249999999', '110.40903515625', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(75, 6, '2017-03-01', '07:34:45', '2017-03-01', '07:34:45', 'Place: -7.736447499999991,110.34584765625002 \nAlamat: Tlogoadi, Mlati, Kabupaten Sleman, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.736447499999991', '110.34584765625002', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(76, 6, '2017-03-01', '07:38:35', '2017-03-01', '07:38:35', 'Place: -7.836642499999989,110.31137890624998 \nAlamat: Jl. Ngentak - Kalirandu, Bangunjiwo, Kasihan, Bantul, Daerah Istimewa Yogyakarta 55184, Indonesia \n', '-7.836642499999989', '110.31137890624998', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(77, 6, '2017-03-01', '07:38:48', '2017-03-01', '07:38:48', 'Place: -7.836642499999989,110.31137890624998 \nAlamat: Jl. Ngentak - Kalirandu, Bangunjiwo, Kasihan, Bantul, Daerah Istimewa Yogyakarta 55184, Indonesia \n', '-7.836642499999989', '110.31137890624998', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(78, 6, '2017-03-01', '07:39:13', '2017-03-01', '07:39:13', 'Place: -7.836642499999989,110.31137890624998 \nAlamat: Jl. Ngentak - Kalirandu, Bangunjiwo, Kasihan, Bantul, Daerah Istimewa Yogyakarta 55184, Indonesia \n', '-7.836642499999989', '110.31137890624998', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(79, 6, '2017-03-01', '07:39:24', '2017-03-01', '07:39:24', 'Place: -7.836642499999989,110.31137890624998 \nAlamat: Jl. Ngentak - Kalirandu, Bangunjiwo, Kasihan, Bantul, Daerah Istimewa Yogyakarta 55184, Indonesia \n', '-7.836642499999989', '110.31137890624998', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(80, 6, '2017-03-01', '07:40:04', '2017-03-01', '07:40:04', 'Place: -7.871492499999995,110.39033984375001 \nAlamat: Jl. Imogiri Tim. No.10, Wonokromo, Pleret, Bantul, Daerah Istimewa Yogyakarta 55791, Indonesia \n', '-7.871492499999995', '110.39033984375001', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(81, 6, '2017-03-01', '07:41:56', '2017-03-01', '07:41:56', 'Place: -7.817787499999987,110.38798828125007 \nAlamat: Jl. Perintis Kemerdekaan No.4, Pandeyan, Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55161, Indonesia \n', '-7.817787499999987', '110.38798828125007', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(82, 6, '2017-03-01', '08:20:33', '2017-03-01', '08:20:33', 'Place: -7.817787499999987,110.38798828125007 \nAlamat: Jl. Perintis Kemerdekaan No.4, Pandeyan, Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55161, Indonesia \n', '-7.817787499999987', '110.38798828125007', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(83, 6, '2017-03-01', '08:20:41', '2017-03-01', '08:20:41', 'Place: -7.817787499999987,110.38798828125007 \nAlamat: Jl. Perintis Kemerdekaan No.4, Pandeyan, Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55161, Indonesia \n', '-7.817787499999987', '110.38798828125007', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(84, 6, '2017-03-01', '08:21:08', '2017-03-01', '08:21:08', 'Place: -7.817787499999987,110.38798828125007 \nAlamat: Jl. Perintis Kemerdekaan No.4, Pandeyan, Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55161, Indonesia \n', '-7.817787499999987', '110.38798828125007', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(85, 6, '2017-03-01', '08:21:11', '2017-03-01', '08:21:11', 'Place: -7.817787499999987,110.38798828125007 \nAlamat: Jl. Perintis Kemerdekaan No.4, Pandeyan, Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55161, Indonesia \n', '-7.817787499999987', '110.38798828125007', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(86, 6, '2017-03-01', '08:21:14', '2017-03-01', '08:21:14', 'Place: -7.817787499999987,110.38798828125007 \nAlamat: Jl. Perintis Kemerdekaan No.4, Pandeyan, Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55161, Indonesia \n', '-7.817787499999987', '110.38798828125007', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(87, 6, '2017-03-01', '08:21:17', '2017-03-01', '08:21:17', 'Place: -7.817787499999987,110.38798828125007 \nAlamat: Jl. Perintis Kemerdekaan No.4, Pandeyan, Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55161, Indonesia \n', '-7.817787499999987', '110.38798828125007', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(88, 6, '2017-03-01', '08:21:20', '2017-03-01', '08:21:20', 'Place: -7.817787499999987,110.38798828125007 \nAlamat: Jl. Perintis Kemerdekaan No.4, Pandeyan, Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55161, Indonesia \n', '-7.817787499999987', '110.38798828125007', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(89, 6, '2017-03-01', '08:21:23', '2017-03-01', '08:21:23', 'Place: -7.817787499999987,110.38798828125007 \nAlamat: Jl. Perintis Kemerdekaan No.4, Pandeyan, Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55161, Indonesia \n', '-7.817787499999987', '110.38798828125007', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(90, 6, '2017-03-01', '08:21:25', '2017-03-01', '08:21:25', 'Place: -7.817787499999987,110.38798828125007 \nAlamat: Jl. Perintis Kemerdekaan No.4, Pandeyan, Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55161, Indonesia \n', '-7.817787499999987', '110.38798828125007', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(91, 6, '2017-03-01', '08:21:28', '2017-03-01', '08:21:28', 'Place: -7.817787499999987,110.38798828125007 \nAlamat: Jl. Perintis Kemerdekaan No.4, Pandeyan, Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55161, Indonesia \n', '-7.817787499999987', '110.38798828125007', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(92, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'ceritanya alamat', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(93, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'ceritanya alamat', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(94, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'ceritanya alamat', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(95, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'ceritanya alamat', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(96, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'ceritanya alamat', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(97, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'ceritanya alamat', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(98, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'ceritanya alamat', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(99, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'ceritanya alamat', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(100, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'ceritanya alamat', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(101, 6, '2017-03-01', '11:07:38', '2017-03-01', '11:07:38', 'Place: -7.817787499999987,110.38798828125007 \nAlamat: Jl. Perintis Kemerdekaan No.4, Pandeyan, Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55161, Indonesia \n', '-7.817787499999987', '110.38798828125007', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(102, 6, '2017-03-01', '12:30:20', '2017-03-01', '12:30:20', 'Place: -7.817787499999987,110.38798828125007 \nAlamat: Jl. Perintis Kemerdekaan No.4, Pandeyan, Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55161, Indonesia \n', '-7.817787499999987', '110.38798828125007', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(103, 6, '2017-03-01', '12:55:03', '2017-03-01', '12:55:03', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(104, 8, '2017-03-01', '13:01:42', '2017-03-01', '13:01:42', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Yogyakarta City, Special Region of Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(105, 9, '2017-03-01', '13:16:43', '2017-03-01', '13:16:43', 'Place: -7.78977249999999,110.31195703124999 \nAlamat: Jl. Bibis No.11, Sidokarto, Godean, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55264, Indonesia \n', '-7.78977249999999', '110.31195703124999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(106, 9, '2017-03-01', '13:17:00', '2017-03-01', '13:17:00', 'Place: -7.78977249999999,110.31195703124999 \nAlamat: Jl. Bibis No.11, Sidokarto, Godean, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55264, Indonesia \n', '-7.78977249999999', '110.31195703124999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(107, 9, '2017-03-01', '13:17:38', '2017-03-01', '13:17:38', 'Place: -7.78977249999999,110.31195703124999 \nAlamat: Jl. Bibis No.11, Sidokarto, Godean, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55264, Indonesia \n', '-7.78977249999999', '110.31195703124999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(108, 9, '2017-03-01', '13:18:10', '2017-03-01', '13:18:10', 'Place: -7.7628824999999955,110.36980859374998 \nAlamat: Jl. Monjali No.249, Sinduadi, Mlati, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55284, Indonesia \n', '-7.7628824999999955', '110.36980859374998', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(109, 9, '2017-03-01', '13:18:52', '2017-03-01', '13:18:52', 'Place: -7.731577500000008,110.33178515624999 \nAlamat: Jl. Kebon Agung No.88, Tlogoadi, Mlati, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55286, Indonesia \n', '-7.731577500000008', '110.33178515624999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(110, 6, '2017-03-01', '14:49:22', '2017-03-01', '14:49:22', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(111, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'ceritanya alamat', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(112, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'ceritanya alamat', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(113, 1, '2017-03-01', '15:21:35', '2003-02-01', '00:00:00', 'Place: -7.810741999999999,110.404572 \nAlamat: Jalan Wonosari KM.1 No.9, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55198, Indonesia \n', '-7.810741999999999', '110.404572', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(114, 1, '2017-03-01', '15:21:40', '2003-02-01', '00:00:00', 'Place: -7.810741999999999,110.404572 \nAlamat: Jalan Wonosari KM.1 No.9, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55198, Indonesia \n', '-7.810741999999999', '110.404572', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(115, 6, '2017-03-01', '15:42:05', '2017-03-01', '15:42:05', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(116, 6, '2017-03-01', '15:43:22', '2017-03-01', '15:43:22', 'Place: -7.77335249999998,110.31589453125 \nAlamat: Jl. Godean No.4, Sidomoyo, Godean, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55264, Indonesia \n', '-7.77335249999998', '110.31589453125', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(117, 6, '2017-03-01', '15:45:14', '2017-03-01', '15:45:14', 'Place: -7.77335249999998,110.31589453125 \nAlamat: Jl. Godean No.4, Sidomoyo, Godean, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55264, Indonesia \n', '-7.77335249999998', '110.31589453125', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(118, 10, '2017-03-01', '15:51:44', '2017-03-01', '15:51:44', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(119, 10, '2017-03-01', '15:52:04', '2017-03-01', '15:52:04', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(120, 10, '2017-03-01', '15:52:30', '2017-03-01', '15:52:30', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(121, 11, '2017-03-01', '16:16:24', '2017-03-01', '16:16:24', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Yogyakarta City, Special Region of Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(122, 12, '2017-03-01', '16:25:01', '2017-03-01', '16:25:01', 'Place: -7.810741999999999,110.404572 \nAlamat: Jalan Wonosari KM.1 No.9, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55198, Indonesia \n', '-7.810741999999999', '110.404572', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(123, 12, '2017-03-01', '16:30:09', '2017-03-01', '16:30:09', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Yogyakarta City, Special Region of Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(124, 12, '2017-03-01', '16:30:12', '2017-03-01', '16:30:12', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Yogyakarta City, Special Region of Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(125, 12, '2017-03-01', '16:30:15', '2017-03-01', '16:30:15', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Yogyakarta City, Special Region of Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(126, 12, '2017-03-01', '16:32:52', '2017-03-01', '16:32:52', 'Place: -7.811887800000003,110.36312699999999 \nAlamat: Jalan Alun Alun Kidul, Patehan, Kraton, Patehan, Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55133, Indonesia \n', '-7.811887800000003', '110.36312699999999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(127, 12, '2017-03-01', '16:36:23', '2017-03-01', '16:36:23', 'Place: -7.8037591,110.36337329999999 \nAlamat: Jl. Alun-Alun Utara, Ngupasan, Gondomanan, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8037591', '110.36337329999999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(128, 12, '2017-03-01', '16:36:26', '2017-03-01', '16:36:26', 'Place: -7.8037591,110.36337329999999 \nAlamat: Jl. Alun-Alun Utara, Ngupasan, Gondomanan, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8037591', '110.36337329999999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(129, 12, '2017-03-01', '16:59:57', '2017-03-01', '16:59:57', 'Place: -7.767382,110.2931036 \nAlamat: Godean, Sleman Regency, Special Region of Yogyakarta, Indonesia \n', '-7.767382', '110.2931036', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(130, 10, '2017-03-01', '18:49:10', '2017-03-01', '18:49:10', 'Place: -6.887097500000003,107.61556640625 \nAlamat: Jl. Dipatiukur No.95, Lebakgede, Coblong, Kota Bandung, Jawa Barat 40132, Indonesia \n', '-6.887097500000003', '107.61556640625', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(131, 10, '2017-03-01', '18:49:32', '2017-03-01', '18:49:32', 'Place: -6.887097500000003,107.61556640625 \nAlamat: Jl. Dipatiukur No.95, Lebakgede, Coblong, Kota Bandung, Jawa Barat 40132, Indonesia \n', '-6.887097500000003', '107.61556640625', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(132, 10, '2017-03-01', '18:49:41', '2017-03-01', '18:49:41', 'Place: -6.887097500000003,107.61556640625 \nAlamat: Jl. Dipatiukur No.95, Lebakgede, Coblong, Kota Bandung, Jawa Barat 40132, Indonesia \n', '-6.887097500000003', '107.61556640625', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(133, 10, '2017-03-01', '18:50:06', '2017-03-01', '18:50:06', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(134, 10, '2017-03-01', '19:00:36', '2017-03-01', '19:00:36', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(135, 10, '2017-03-01', '19:04:31', '2017-03-01', '19:04:31', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(136, 10, '2017-03-01', '19:15:12', '2017-03-01', '19:15:12', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(137, 10, '2017-03-01', '19:17:01', '2017-03-01', '19:17:01', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(138, 10, '2017-03-01', '19:17:04', '2017-03-01', '19:17:04', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(139, 10, '2017-03-01', '19:23:00', '2017-03-01', '19:23:00', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(140, 10, '2017-03-01', '19:23:15', '2017-03-01', '19:23:15', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(141, 10, '2017-03-01', '19:25:07', '2017-03-01', '19:25:07', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(142, 10, '2017-03-01', '19:29:05', '2017-03-01', '19:29:05', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(143, 10, '2017-03-01', '19:33:44', '2017-03-01', '19:33:44', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(144, 10, '2017-03-01', '19:36:12', '2017-03-01', '19:36:12', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(145, 10, '2017-03-01', '19:42:21', '2017-03-01', '19:42:21', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(146, 10, '2017-03-01', '19:45:31', '2017-03-01', '19:45:31', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(147, 10, '2017-03-01', '19:45:45', '2017-03-01', '19:45:45', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(148, 10, '2017-03-01', '19:52:10', '2017-03-01', '19:52:10', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(149, 10, '2017-03-01', '19:52:26', '2017-03-01', '19:52:26', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(150, 13, '2017-03-01', '22:19:33', '2017-03-01', '22:19:33', 'Place: -7.793122100000001,110.36606139999999 \nAlamat: Jl. Malioboro No. 52 - 58, Suryatmajan, Danurejan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55271, Indonesia \n', '-7.793122100000001', '110.36606139999999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(151, 13, '2017-03-01', '22:21:20', '2017-03-01', '22:21:20', 'Place: -7.598066799999999,110.4258679 \nAlamat: Hargobinangun, Pakem, Hargobinangun, Pakem, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55582, Indonesia \n', '-7.598066799999999', '110.4258679', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(152, 13, '2017-03-01', '22:22:12', '2017-03-01', '22:22:12', 'Place: -7.598066799999999,110.4258679 \nAlamat: Hargobinangun, Pakem, Hargobinangun, Pakem, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55582, Indonesia \n', '-7.598066799999999', '110.4258679', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(153, 14, '2017-03-01', '22:56:24', '2017-03-01', '22:56:24', 'Place: -7.8090256,110.363649 \nAlamat: Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8090256', '110.363649', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(154, 15, '2017-03-01', '23:22:46', '2017-03-01', '23:22:46', 'Place: -7.8326183,110.4101221 \nAlamat: Banguntapan, Bantul Regency, Special Region of Yogyakarta, Indonesia \n', '-7.8326183', '110.4101221', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(155, 15, '2017-03-01', '23:24:18', '2017-03-01', '23:24:18', 'Place: -7.767382,110.2931036 \nAlamat: Godean, Sleman Regency, Special Region of Yogyakarta, Indonesia \n', '-7.767382', '110.2931036', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(156, 15, '2017-03-01', '23:25:34', '2017-03-01', '23:25:34', 'Place: -8.0100571,110.3130087 \nAlamat: Parangtritis, Kretek, Bantul Regency, Special Region of Yogyakarta, Indonesia \n', '-8.0100571', '110.3130087', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(157, 15, '2017-03-01', '23:25:57', '2017-03-01', '23:25:57', 'Place: -7.793122100000001,110.36606139999999 \nAlamat: Jl. Malioboro No. 52 - 58, Suryatmajan, Danurejan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55271, Indonesia \n', '-7.793122100000001', '110.36606139999999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(158, 15, '2017-03-01', '23:26:00', '2017-03-01', '23:26:00', 'Place: -7.793122100000001,110.36606139999999 \nAlamat: Jl. Malioboro No. 52 - 58, Suryatmajan, Danurejan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55271, Indonesia \n', '-7.793122100000001', '110.36606139999999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(159, 15, '2017-03-01', '23:33:38', '2017-03-01', '23:33:38', 'Place: -7.7355344,110.39343880000001 \nAlamat: Sinduharjo, Ngaglik, Sleman Regency, Special Region of Yogyakarta, Indonesia \n', '-7.7355344', '110.39343880000001', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(160, 15, '2017-03-01', '23:33:41', '2017-03-01', '23:33:41', 'Place: -7.7355344,110.39343880000001 \nAlamat: Sinduharjo, Ngaglik, Sleman Regency, Special Region of Yogyakarta, Indonesia \n', '-7.7355344', '110.39343880000001', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(161, 16, '2017-03-02', '08:12:34', '2017-03-02', '08:12:34', 'Place: -7.8108949999999995,110.40530400000002 \nAlamat: Jl. Wonosari Blok B No.12, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55198, Indonesia \n', '-7.8108949999999995', '110.40530400000002', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(162, 16, '2017-03-02', '08:14:47', '2017-03-02', '08:14:47', 'Place: -7.810682499999992,110.40453515624999 \nAlamat: Jl. Wonosari No.9, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55198, Indonesia \n', '-7.810682499999992', '110.40453515624999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(163, 16, '2017-03-02', '08:14:50', '2017-03-02', '08:14:50', 'Place: -7.810682499999992,110.40453515624999 \nAlamat: Jl. Wonosari No.9, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55198, Indonesia \n', '-7.810682499999992', '110.40453515624999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(164, 16, '2017-03-02', '08:14:53', '2017-03-02', '08:14:53', 'Place: -7.810682499999992,110.40453515624999 \nAlamat: Jl. Wonosari No.9, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55198, Indonesia \n', '-7.810682499999992', '110.40453515624999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(165, 1, '2017-03-02', '08:39:39', '2003-02-01', '00:00:00', 'Place: -7.810662499999999,110.40303515624996 \nAlamat: Jl. Wonosari No.2-7, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55198, Indonesia \n', '-7.810662499999999', '110.40303515624996', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(166, 16, '2017-03-02', '08:43:25', '2017-03-02', '08:43:25', 'Place: -7.810757499999987,110.40515234374996 \nAlamat: Jl. Wonosari No.9, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55198, Indonesia \n', '-7.810757499999987', '110.40515234374996', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(167, 16, '2017-03-02', '08:43:28', '2017-03-02', '08:43:28', 'Place: -7.810757499999987,110.40515234374996 \nAlamat: Jl. Wonosari No.9, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55198, Indonesia \n', '-7.810757499999987', '110.40515234374996', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(168, 16, '2017-03-02', '08:47:20', '2017-03-02', '08:47:20', 'Place: -7.810757499999987,110.40515234374996 \nAlamat: Jl. Wonosari No.9, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55198, Indonesia \n', '-7.810757499999987', '110.40515234374996', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(169, 16, '2017-03-02', '08:47:23', '2017-03-02', '08:47:23', 'Place: -7.810757499999987,110.40515234374996 \nAlamat: Jl. Wonosari No.9, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55198, Indonesia \n', '-7.810757499999987', '110.40515234374996', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(170, 16, '2017-03-02', '09:33:58', '2017-03-02', '09:33:58', 'Place: -7.838157499999988,110.40271484374999 \nAlamat: Jl. Kemasan No.14, Wirokerten, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55196, Indonesia \n', '-7.838157499999988', '110.40271484374999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(171, 16, '2017-03-02', '09:34:09', '2017-03-02', '09:34:09', 'Place: -7.838157499999988,110.40271484374999 \nAlamat: Jl. Kemasan No.14, Wirokerten, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55196, Indonesia \n', '-7.838157499999988', '110.40271484374999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(172, 16, '2017-03-02', '09:34:13', '2017-03-02', '09:34:13', 'Place: -7.838157499999988,110.40271484374999 \nAlamat: Jl. Kemasan No.14, Wirokerten, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55196, Indonesia \n', '-7.838157499999988', '110.40271484374999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(173, 16, '2017-03-02', '09:34:18', '2017-03-02', '09:34:18', 'Place: -7.838157499999988,110.40271484374999 \nAlamat: Jl. Kemasan No.14, Wirokerten, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55196, Indonesia \n', '-7.838157499999988', '110.40271484374999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(174, 16, '2017-03-02', '09:34:20', '2017-03-02', '09:34:20', 'Place: -7.838157499999988,110.40271484374999 \nAlamat: Jl. Kemasan No.14, Wirokerten, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55196, Indonesia \n', '-7.838157499999988', '110.40271484374999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(175, 16, '2017-03-02', '09:34:23', '2017-03-02', '09:34:23', 'Place: -7.838157499999988,110.40271484374999 \nAlamat: Jl. Kemasan No.14, Wirokerten, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55196, Indonesia \n', '-7.838157499999988', '110.40271484374999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(176, 16, '2017-03-02', '09:34:26', '2017-03-02', '09:34:26', 'Place: -7.838157499999988,110.40271484374999 \nAlamat: Jl. Kemasan No.14, Wirokerten, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55196, Indonesia \n', '-7.838157499999988', '110.40271484374999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(177, 16, '2017-03-02', '09:34:29', '2017-03-02', '09:34:29', 'Place: -7.838157499999988,110.40271484374999 \nAlamat: Jl. Kemasan No.14, Wirokerten, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55196, Indonesia \n', '-7.838157499999988', '110.40271484374999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(178, 16, '2017-03-02', '11:03:34', '2017-03-02', '11:03:34', 'Place: -7.810697499999996,110.40258203124998 \nAlamat: Jl. Wonosari No.2, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55198, Indonesia \n', '-7.810697499999996', '110.40258203124998', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(179, 16, '2017-03-02', '11:03:37', '2017-03-02', '11:03:37', 'Place: -7.810697499999996,110.40258203124998 \nAlamat: Jl. Wonosari No.2, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55198, Indonesia \n', '-7.810697499999996', '110.40258203124998', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(180, 16, '2017-03-02', '11:06:15', '2017-03-02', '11:06:15', 'Place: -7.810587500000005,110.40268359374997 \nAlamat: Jl. Wonosari No.2, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55198, Indonesia \n', '-7.810587500000005', '110.40268359374997', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(181, 16, '2017-03-02', '15:26:53', '2017-03-02', '15:26:53', 'Place: -7.810682499999992,110.40453515624999 \nAlamat: Jl. Wonosari No.9, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55198, Indonesia \n', '-7.810682499999992', '110.40453515624999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(182, 17, '2017-03-02', '19:35:03', '2017-03-02', '19:35:03', 'Place: -7.8326183,110.4101221 \nAlamat: Banguntapan, Bantul, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8326183', '110.4101221', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(183, 17, '2017-03-02', '19:35:07', '2017-03-02', '19:35:07', 'Place: -7.8326183,110.4101221 \nAlamat: Banguntapan, Bantul, Daerah Istimewa Yogyakarta, Indonesia \n', '-7.8326183', '110.4101221', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(184, 1, '2017-03-04', '13:46:49', '2003-02-01', '00:00:00', 'Place: -7.810682499999992,110.40453515624999 \nAlamat: Jl. Wonosari No.9, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55198, Indonesia \n', '-7.810682499999992', '110.40453515624999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(185, 1, '2017-03-04', '13:46:52', '2003-02-01', '00:00:00', 'Place: -7.810682499999992,110.40453515624999 \nAlamat: Jl. Wonosari No.9, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55198, Indonesia \n', '-7.810682499999992', '110.40453515624999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(186, 1, '2017-03-04', '13:48:47', '2003-02-01', '00:00:00', 'Place: -7.810682499999992,110.40453515624999 \nAlamat: Jl. Wonosari No.9, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55198, Indonesia \n', '-7.810682499999992', '110.40453515624999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(187, 1, '2017-03-04', '13:50:02', '2003-02-01', '00:00:00', 'Place: -7.8105574999999945,110.39904296875002 \nAlamat: Jl. Rejowinangun No.11, Rejowinangun, Kotagede, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55171, Indonesia \n', '-7.8105574999999945', '110.39904296875002', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(188, 1, '2017-03-04', '13:56:33', '2003-02-01', '00:00:00', 'Place: -7.810582500000003,110.39983984375002 \nAlamat: Jl. Rejowinangun No.29, Rejowinangun, Kotagede, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55171, Indonesia \n', '-7.810582500000003', '110.39983984375002', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(189, 6, '2017-03-04', '19:31:41', '2017-03-04', '19:31:41', 'lat/lng: (-7.80902556794629,110.36364901810884)', '-7.80902556794629', '110.36364901810884', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(190, 6, '2017-03-04', '19:32:51', '2017-03-04', '19:32:51', 'lat/lng: (-7.80902556794629,110.36364901810884)', '-7.80902556794629', '110.36364901810884', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(191, 6, '2017-03-04', '19:36:11', '2017-03-04', '19:36:11', 'lat/lng: (-7.802588123323491,110.36348707973957)', '-7.802588123323491', '110.36348707973957', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(192, 6, '2017-03-04', '19:54:24', '2017-03-04', '19:54:24', 'lat/lng: (-7.80621974449514,110.36674730479719)', '-7.80621974449514', '110.36674730479719', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(193, 18, '2017-03-04', '20:40:37', '2017-03-04', '20:40:37', 'lat/lng: (-7.791844544979711,110.36420591175555)', '-7.791844544979711', '110.36420591175555', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(194, 18, '2017-03-04', '20:42:33', '2017-03-04', '20:42:33', 'lat/lng: (-7.791844544979711,110.36420591175555)', '-7.791844544979711', '110.36420591175555', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(195, 18, '2017-03-04', '20:42:35', '2017-03-04', '20:42:35', 'lat/lng: (-7.791844544979711,110.36420591175555)', '-7.791844544979711', '110.36420591175555', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(196, 18, '2017-03-04', '20:44:47', '2017-03-04', '20:44:47', 'lat/lng: (-7.791844544979711,110.36420591175555)', '-7.791844544979711', '110.36420591175555', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(197, 18, '2017-03-04', '20:55:46', '2017-03-04', '20:55:46', 'lat/lng: (-7.764922770418544,110.29082402586937)', '-7.764922770418544', '110.29082402586937', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(198, 18, '2017-03-04', '20:55:49', '2017-03-04', '20:55:49', 'lat/lng: (-7.764922770418544,110.29082402586937)', '-7.764922770418544', '110.29082402586937', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(199, 16, '2017-03-04', '22:12:50', '2017-03-04', '22:12:50', 'lat/lng: (-7.810719283672327,110.40381107479334)', '-7.810719283672327', '110.40381107479334', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(200, 16, '2017-03-04', '22:17:33', '2017-03-04', '22:17:33', 'lat/lng: (-7.772713829169183,110.3307393193245)', '-7.772713829169183', '110.3307393193245', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(201, 16, '2017-03-04', '22:23:36', '2017-03-04', '22:23:36', 'lat/lng: (-7.775731484337884,110.3588944673538)', '-7.775731484337884', '110.3588944673538', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(202, 16, '2017-03-04', '22:23:39', '2017-03-04', '22:23:39', 'lat/lng: (-7.775731484337884,110.3588944673538)', '-7.775731484337884', '110.3588944673538', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(203, 16, '2017-03-04', '22:31:41', '2017-03-04', '22:31:41', 'lat/lng: (-7.824528839236235,110.340397618711)', '-7.824528839236235', '110.340397618711', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(204, 16, '2017-03-04', '22:41:55', '2017-03-04', '22:41:55', 'lat/lng: (-7.742320475097433,110.36747351288795)', '-7.742320475097433', '110.36747351288795', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(205, 16, '2017-03-04', '22:41:58', '2017-03-04', '22:41:58', 'lat/lng: (-7.742320475097433,110.36747351288795)', '-7.742320475097433', '110.36747351288795', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(206, 1, '2017-03-05', '08:36:22', '2003-02-01', '00:00:00', 'Place: -7.827917500000006,110.38211328125001 \nAlamat: Gg. Nila, Sorosutan, Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55162, Indonesia \n', '-7.827917500000006', '110.38211328125001', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(207, 1, '2017-03-05', '08:36:26', '2003-02-01', '00:00:00', 'Place: -7.827917500000006,110.38211328125001 \nAlamat: Gg. Nila, Sorosutan, Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55162, Indonesia \n', '-7.827917500000006', '110.38211328125001', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(208, 1, '2017-03-05', '08:46:53', '2003-02-01', '00:00:00', 'Place: -7.797522499999992,110.37261328125003 \nAlamat: Jl. Gajah Mada No.89, Purwokinanti, Pakualaman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55166, Indonesia \n', '-7.797522499999992', '110.37261328125003', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(209, 1, '2017-03-05', '08:46:56', '2003-02-01', '00:00:00', 'Place: -7.797522499999992,110.37261328125003 \nAlamat: Jl. Gajah Mada No.89, Purwokinanti, Pakualaman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55166, Indonesia \n', '-7.797522499999992', '110.37261328125003', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(210, 1, '2017-03-05', '08:46:59', '2003-02-01', '00:00:00', 'Place: -7.797522499999992,110.37261328125003 \nAlamat: Jl. Gajah Mada No.89, Purwokinanti, Pakualaman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55166, Indonesia \n', '-7.797522499999992', '110.37261328125003', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(211, 1, '2017-03-05', '08:47:02', '2003-02-01', '00:00:00', 'Place: -7.797522499999992,110.37261328125003 \nAlamat: Jl. Gajah Mada No.89, Purwokinanti, Pakualaman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55166, Indonesia \n', '-7.797522499999992', '110.37261328125003', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(212, 1, '2017-03-05', '08:47:04', '2003-02-01', '00:00:00', 'Place: -7.797522499999992,110.37261328125003 \nAlamat: Jl. Gajah Mada No.89, Purwokinanti, Pakualaman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55166, Indonesia \n', '-7.797522499999992', '110.37261328125003', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(213, 1, '2017-03-05', '08:47:07', '2003-02-01', '00:00:00', 'Place: -7.797522499999992,110.37261328125003 \nAlamat: Jl. Gajah Mada No.89, Purwokinanti, Pakualaman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55166, Indonesia \n', '-7.797522499999992', '110.37261328125003', 14, 'false', 'AB100CA', 1, '1', '3', 1);
INSERT INTO `order` (`id`, `customer_id`, `order_date`, `order_time`, `service_date`, `service_time`, `service_location`, `latitude`, `longitude`, `area_id`, `is_emergency`, `license_plate`, `ref_service_id`, `status`, `method`, `payment_status`) VALUES
(214, 1, '2017-03-05', '08:47:10', '2003-02-01', '00:00:00', 'Place: -7.797522499999992,110.37261328125003 \nAlamat: Jl. Gajah Mada No.89, Purwokinanti, Pakualaman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55166, Indonesia \n', '-7.797522499999992', '110.37261328125003', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(215, 1, '2017-03-05', '08:47:13', '2003-02-01', '00:00:00', 'Place: -7.797522499999992,110.37261328125003 \nAlamat: Jl. Gajah Mada No.89, Purwokinanti, Pakualaman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55166, Indonesia \n', '-7.797522499999992', '110.37261328125003', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(216, 1, '2017-03-05', '08:47:15', '2003-02-01', '00:00:00', 'Place: -7.797522499999992,110.37261328125003 \nAlamat: Jl. Gajah Mada No.89, Purwokinanti, Pakualaman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55166, Indonesia \n', '-7.797522499999992', '110.37261328125003', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(217, 1, '2017-03-05', '08:47:18', '2003-02-01', '00:00:00', 'Place: -7.797522499999992,110.37261328125003 \nAlamat: Jl. Gajah Mada No.89, Purwokinanti, Pakualaman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55166, Indonesia \n', '-7.797522499999992', '110.37261328125003', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(218, 1, '2017-03-05', '08:47:21', '2003-02-01', '00:00:00', 'Place: -7.797522499999992,110.37261328125003 \nAlamat: Jl. Gajah Mada No.89, Purwokinanti, Pakualaman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55166, Indonesia \n', '-7.797522499999992', '110.37261328125003', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(219, 1, '2017-03-05', '08:47:24', '2003-02-01', '00:00:00', 'Place: -7.797522499999992,110.37261328125003 \nAlamat: Jl. Gajah Mada No.89, Purwokinanti, Pakualaman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55166, Indonesia \n', '-7.797522499999992', '110.37261328125003', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(220, 1, '2017-03-05', '08:47:27', '2003-02-01', '00:00:00', 'Place: -7.797522499999992,110.37261328125003 \nAlamat: Jl. Gajah Mada No.89, Purwokinanti, Pakualaman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55166, Indonesia \n', '-7.797522499999992', '110.37261328125003', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(221, 1, '2017-03-05', '08:47:30', '2003-02-01', '00:00:00', 'Place: -7.797522499999992,110.37261328125003 \nAlamat: Jl. Gajah Mada No.89, Purwokinanti, Pakualaman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55166, Indonesia \n', '-7.797522499999992', '110.37261328125003', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(222, 1, '2017-03-05', '08:47:32', '2003-02-01', '00:00:00', 'Place: -7.797522499999992,110.37261328125003 \nAlamat: Jl. Gajah Mada No.89, Purwokinanti, Pakualaman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55166, Indonesia \n', '-7.797522499999992', '110.37261328125003', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(223, 1, '2017-03-05', '08:47:35', '2003-02-01', '00:00:00', 'Place: -7.801422499999993,110.37383984375 \nAlamat: Jl. Sultan Agung No.21, Gunungketur, Pakualaman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55151, Indonesia \n', '-7.801422499999993', '110.37383984375', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(224, 1, '2017-03-05', '08:47:38', '2003-02-01', '00:00:00', 'Place: -7.801422499999993,110.37383984375 \nAlamat: Jl. Sultan Agung No.21, Gunungketur, Pakualaman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55151, Indonesia \n', '-7.801422499999993', '110.37383984375', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(225, 1, '2017-03-05', '08:47:41', '2003-02-01', '00:00:00', 'Place: -7.801422499999993,110.37383984375 \nAlamat: Jl. Sultan Agung No.21, Gunungketur, Pakualaman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55151, Indonesia \n', '-7.801422499999993', '110.37383984375', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(226, 1, '2017-03-05', '08:47:44', '2003-02-01', '00:00:00', 'Place: -7.801422499999993,110.37383984375 \nAlamat: Jl. Sultan Agung No.21, Gunungketur, Pakualaman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55151, Indonesia \n', '-7.801422499999993', '110.37383984375', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(227, 1, '2017-03-05', '08:47:47', '2003-02-01', '00:00:00', 'Place: -7.801422499999993,110.37383984375 \nAlamat: Jl. Sultan Agung No.21, Gunungketur, Pakualaman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55151, Indonesia \n', '-7.801422499999993', '110.37383984375', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(228, 1, '2017-03-05', '08:47:50', '2003-02-01', '00:00:00', 'Place: -7.801422499999993,110.37383984375 \nAlamat: Jl. Sultan Agung No.21, Gunungketur, Pakualaman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55151, Indonesia \n', '-7.801422499999993', '110.37383984375', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(229, 1, '2017-03-05', '08:47:53', '2003-02-01', '00:00:00', 'Place: -7.801422499999993,110.37383984375 \nAlamat: Jl. Sultan Agung No.21, Gunungketur, Pakualaman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55151, Indonesia \n', '-7.801422499999993', '110.37383984375', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(230, 1, '2017-03-05', '08:47:56', '2003-02-01', '00:00:00', 'Place: -7.801422499999993,110.37383984375 \nAlamat: Jl. Sultan Agung No.21, Gunungketur, Pakualaman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55151, Indonesia \n', '-7.801422499999993', '110.37383984375', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(231, 1, '2017-03-05', '08:52:56', '2003-02-01', '00:00:00', 'Place: -7.8279425,110.38207421874998 \nAlamat: Gg. Nila, Sorosutan, Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55162, Indonesia \n', '-7.8279425', '110.38207421874998', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(232, 1, '2017-03-05', '08:55:04', '2003-02-01', '00:00:00', 'Place: -7.795902500000005,110.37755859374997 \nAlamat: Jl. Dr. Sutomo No.13A, Bausasran, Danurejan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55211, Indonesia \n', '-7.795902500000005', '110.37755859374997', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(233, 1, '2017-03-05', '08:56:34', '2003-02-01', '00:00:00', 'Place: -7.776172500000008,110.37843359374997 \nAlamat: Jl. Colombo No.3, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281, Indonesia \n', '-7.776172500000008', '110.37843359374997', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(234, 16, '2017-03-05', '09:06:25', '2017-03-05', '09:06:25', 'lat/lng: (-7.74743430247899,110.36923605948687)', '-7.74743430247899', '110.36923605948687', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(235, 16, '2017-03-05', '09:06:31', '2017-03-05', '09:06:31', 'lat/lng: (-7.74743430247899,110.36923605948687)', '-7.74743430247899', '110.36923605948687', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(236, 16, '2017-03-05', '09:06:34', '2017-03-05', '09:06:34', 'lat/lng: (-7.74743430247899,110.36923605948687)', '-7.74743430247899', '110.36923605948687', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(237, 16, '2017-03-05', '09:09:41', '2017-03-05', '09:09:41', 'lat/lng: (-7.83496467358481,110.38886312395334)', '-7.83496467358481', '110.38886312395334', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(238, 16, '2017-03-05', '13:49:36', '2017-03-05', '13:49:36', 'lat/lng: (-7.801377686647149,110.39550092071293)', '-7.801377686647149', '110.39550092071293', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(239, 16, '2017-03-05', '22:10:03', '2017-03-05', '22:10:03', 'lat/lng: (-7.8129128994017165,110.37856377661228)', '-7.8129128994017165', '110.37856377661228', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(240, 16, '2017-03-05', '22:10:06', '2017-03-05', '22:10:06', 'lat/lng: (-7.8129128994017165,110.37856377661228)', '-7.8129128994017165', '110.37856377661228', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(241, 16, '2017-03-06', '07:35:16', '2017-03-06', '07:35:16', 'lat/lng: (-7.823523406085191,110.39026893675326)', '-7.823523406085191', '110.39026893675326', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(242, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'ceritanya alamat', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(243, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'ceritanya alamat', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(244, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'ceritanya alamat', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(245, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'ceritanya alamat', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(246, 1, '2004-01-01', '01:01:00', '2004-01-01', '01:01:00', 'ceritanya alamat', '-7.730475', '110.330627', 14, '1', 'AB100CA', 1, '1', '1', 1),
(247, 6, '2017-03-06', '19:03:28', '2017-03-06', '19:03:28', 'lat/lng: (-7.80902556794629,110.36364901810884)', '-7.80902556794629', '110.36364901810884', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(248, 6, '2017-03-06', '19:05:07', '2017-03-06', '19:05:07', 'lat/lng: (-7.725232738960003,110.33289983868599)', '-7.725232738960003', '110.33289983868599', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(249, 6, '2017-03-06', '19:09:16', '2017-03-06', '19:09:16', 'lat/lng: (-7.72961919102798,110.33070042729378)', '-7.72961919102798', '110.33070042729378', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(250, 20, '2017-03-07', '10:29:04', '2017-03-07', '10:29:04', 'lat/lng: (-7.730785648039952,110.33076345920563)', '-7.730785648039952', '110.33076345920563', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(251, 20, '2017-03-07', '10:29:17', '2017-03-07', '10:29:17', 'lat/lng: (-7.730785648039952,110.33076345920563)', '-7.730785648039952', '110.33076345920563', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(252, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.731055', '110.3287263', 14, '1', 'AB100CA', 1, '1', '1', 1),
(253, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.731055', '110.3287263', 14, '1', 'AB100CA', 1, '1', '1', 1),
(254, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.731055', '110.3287263', 14, '1', 'AB100CA', 1, '1', '1', 1),
(255, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.731055', '110.3287263', 14, '1', 'AB100CA', 1, '1', '1', 1),
(256, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.731055', '110.3287263', 14, '1', 'AB100CA', 1, '1', '1', 1),
(257, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.731055', '110.3287263', 14, '1', 'AB100CA', 1, '1', '1', 1),
(258, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.731055', '110.3287263', 14, '1', 'AB100CA', 1, '1', '1', 1),
(259, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.731055', '110.3287263', 14, '1', 'AB100CA', 1, '1', '1', 1),
(260, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.731055', '110.3287263', 14, '1', 'AB100CA', 1, '1', '1', 1),
(261, 20, '2017-03-07', '10:43:55', '2017-03-07', '10:43:55', 'lat/lng: (-7.730785648039952,110.33076345920563)', '-7.730785648039952', '110.33076345920563', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(262, 20, '2017-03-07', '10:44:05', '2017-03-07', '10:44:05', 'lat/lng: (-7.730785648039952,110.33076345920563)', '-7.730785648039952', '110.33076345920563', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(263, 20, '2017-03-07', '10:45:22', '2017-03-07', '10:45:22', 'lat/lng: (-7.730785648039952,110.33076345920563)', '-7.730785648039952', '110.33076345920563', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(264, 20, '2017-03-07', '10:53:39', '2017-03-07', '10:53:39', 'lat/lng: (-7.730785648039952,110.33076345920563)', '-7.730785648039952', '110.33076345920563', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(265, 6, '2017-03-07', '10:58:49', '2017-03-07', '10:58:49', 'lat/lng: (-7.732098282081261,110.33529438078403)', '-7.732098282081261', '110.33529438078403', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(266, 6, '2017-03-07', '11:00:37', '2017-03-07', '11:00:37', 'lat/lng: (-6.887097443788177,107.61556696146727)', '-6.887097443788177', '107.61556696146727', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(267, 22, '2017-03-07', '11:30:56', '2017-03-07', '11:30:56', 'lat/lng: (-7.721848265862789,110.33353284001349)', '-7.721848265862789', '110.33353284001349', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(268, 6, '2017-03-07', '11:35:56', '2017-03-07', '11:35:56', 'lat/lng: (-7.7388776678993105,110.39099749177694)', '-7.7388776678993105', '110.39099749177694', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(269, 6, '2017-03-07', '11:40:08', '2017-03-07', '11:40:08', 'lat/lng: (-7.694219626746438,110.38789182901382)', '-7.694219626746438', '110.38789182901382', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(270, 6, '2017-03-07', '11:41:12', '2017-03-07', '11:41:12', 'lat/lng: (-7.717649448271901,110.38369987159967)', '-7.717649448271901', '110.38369987159967', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(271, 6, '2017-03-07', '11:41:20', '2017-03-07', '11:41:20', 'lat/lng: (-7.717649448271901,110.38369987159967)', '-7.717649448271901', '110.38369987159967', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(272, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.731055', '110.3287263', 14, '1', 'AB100CA', 1, '1', '1', 1),
(273, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.731055', '110.3287263', 14, '1', 'AB100CA', 1, '1', '1', 1),
(274, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.717563', '110.384079', 14, '1', 'AB100CA', 1, '1', '1', 1),
(275, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.717563', '110.384079', 14, '1', 'AB100CA', 1, '1', '1', 1),
(276, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.717563', '110.384079', 14, '1', 'AB100CA', 1, '1', '1', 1),
(277, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.717563', '110.384079', 14, '1', 'AB100CA', 1, '1', '1', 1),
(278, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.717563', '110.384079', 14, '1', 'AB100CA', 1, '1', '1', 1),
(279, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.717563', '110.384079', 14, '1', 'AB100CA', 1, '1', '1', 1),
(280, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.717563', '110.384079', 14, '1', 'AB100CA', 1, '1', '1', 1),
(281, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.717563', '110.384079', 14, '1', 'AB100CA', 1, '1', '1', 1),
(282, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.717563', '110.384079', 14, '1', 'AB100CA', 1, '1', '1', 1),
(283, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.717563', '110.384079', 14, '1', 'AB100CA', 1, '1', '1', 1),
(284, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.717563', '110.384079', 14, '1', 'AB100CA', 1, '1', '1', 1),
(285, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.717563', '110.384079', 14, '1', 'AB100CA', 1, '1', '1', 1),
(286, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.717563', '110.384079', 14, '1', 'AB100CA', 1, '1', '1', 1),
(287, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.717563', '110.384079', 14, '1', 'AB100CA', 1, '1', '1', 1),
(288, 6, '2017-03-07', '12:01:15', '2017-03-07', '12:01:15', 'lat/lng: (-7.717649448271901,110.38369987159967)', '-7.717649448271901', '110.38369987159967', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(289, 6, '2017-03-07', '13:07:49', '2017-03-07', '13:07:49', 'lat/lng: (-7.719006643042755,110.33489305526018)', '-7.719006643042755', '110.33489305526018', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(290, 6, '2017-03-07', '13:09:01', '2017-03-07', '13:09:01', 'lat/lng: (-7.719006643042755,110.33489305526018)', '-7.719006643042755', '110.33489305526018', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(291, 6, '2017-03-07', '13:09:34', '2017-03-07', '13:09:34', 'lat/lng: (-7.719006643042755,110.33489305526018)', '-7.719006643042755', '110.33489305526018', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(292, 6, '2017-03-07', '13:10:12', '2017-03-07', '13:10:12', 'lat/lng: (-7.719006643042755,110.33489305526018)', '-7.719006643042755', '110.33489305526018', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(293, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.7219717', '110.3317963', 14, '1', 'AB100CA', 1, '1', '1', 1),
(294, 6, '2017-03-07', '13:11:12', '2017-03-07', '13:11:12', 'lat/lng: (-7.719006643042755,110.33489305526018)', '-7.719006643042755', '110.33489305526018', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(295, 6, '2017-03-07', '13:11:32', '2017-03-07', '13:11:32', 'lat/lng: (-7.719006643042755,110.33489305526018)', '-7.719006643042755', '110.33489305526018', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(296, 6, '2017-03-07', '13:15:14', '2017-03-07', '13:15:14', 'lat/lng: (-7.7186946713623765,110.33536545932294)', '-7.7186946713623765', '110.33536545932294', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(297, 6, '2017-03-07', '13:30:42', '2017-03-07', '13:30:42', 'lat/lng: (-7.712200026535826,110.38573801517487)', '-7.712200026535826', '110.38573801517487', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(298, 6, '2017-03-07', '13:31:02', '2017-03-07', '13:31:02', 'lat/lng: (-7.712200026535826,110.38573801517487)', '-7.712200026535826', '110.38573801517487', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(299, 1, '2017-03-07', '16:08:29', '2003-02-01', '00:00:00', 'Place: -7.8107074999999995,110.40230078124998 \nAlamat: Jl. Wonosari No.2, Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55198, Indonesia \n', '-7.8107074999999995', '110.40230078124998', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(300, 13, '2017-03-09', '08:16:23', '2017-03-09', '08:16:23', 'lat/lng: (-7.767382053837916,110.29310356825592)', '-7.767382053837916', '110.29310356825592', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(301, 13, '2017-03-09', '08:17:27', '2017-03-09', '08:17:27', 'lat/lng: (-7.767382053837916,110.29310356825592)', '-7.767382053837916', '110.29310356825592', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(302, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.7219717', '110.3317963', 14, '1', 'AB100CA', 1, '1', '1', 1),
(303, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.7219717', '110.3317963', 14, '1', 'AB100CA', 1, '1', '1', 1),
(304, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.7219717', '110.3317963', 14, '1', 'AB100CA', 1, '1', '1', 1),
(305, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.7219717', '110.3317963', 14, '1', 'AB100CA', 1, '1', '1', 1),
(306, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.7219717', '110.3317963', 14, '1', 'AB100CA', 1, '1', '1', 1),
(307, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.7219717', '110.3317963', 14, '1', 'AB100CA', 1, '1', '1', 1),
(308, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.7219717', '110.3317963', 14, '1', 'AB100CA', 1, '1', '1', 1),
(309, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.7219717', '110.3317963', 14, '1', 'AB100CA', 1, '1', '1', 1),
(310, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.7219717', '110.3317963', 14, '1', 'AB100CA', 1, '1', '1', 1),
(311, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.7219717', '110.3317963', 14, '1', 'AB100CA', 1, '1', '1', 1),
(312, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.7219717', '110.3317963', 14, '1', 'AB100CA', 1, '1', '1', 1),
(313, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.7219717', '110.3317963', 14, '1', 'AB100CA', 1, '1', '1', 1),
(314, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.7219717', '110.3317963', 14, '1', 'AB100CA', 1, '1', '1', 1),
(315, 2, '2016-01-01', '01:01:00', '2016-01-01', '01:01:00', 'asdf', '-7.7219717', '110.3317963', 14, '1', 'AB100CA', 1, '1', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `payment_date` date NOT NULL,
  `payment_time` time NOT NULL,
  `order_id` int(11) NOT NULL,
  `receipt_id` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `payment_account` varchar(40) NOT NULL,
  `payment_account_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ref_area`
--

CREATE TABLE `ref_area` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lingkup_wilayah` varchar(50) NOT NULL,
  `kode_mendagri` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_area`
--

INSERT INTO `ref_area` (`id`, `name`, `parent_id`, `lingkup_wilayah`, `kode_mendagri`) VALUES
(14, 'D.I. YOGYAKARTA', NULL, 'nasional', 34),
(234, 'KULON PROGO', 14, 'kabupaten', 3401),
(235, 'BANTUL', 14, 'kabupaten', 3402),
(236, 'GUNUNG KIDUL', 14, 'kabupaten', 3403),
(237, 'SLEMAN', 14, 'kabupaten', 3404),
(238, 'KOTA YOGYAKARTA', 14, 'kabupaten', 3471),
(3863, 'TEMON', 234, 'kecamatan', 3401010),
(3864, 'WATES', 234, 'kecamatan', 3401020),
(3865, 'PANJATAN', 234, 'kecamatan', 3401030),
(3866, 'GALUR', 234, 'kecamatan', 3401040),
(3867, 'LENDAH', 234, 'kecamatan', 3401050),
(3868, 'SENTOLO', 234, 'kecamatan', 3401060),
(3869, 'PENGASIH', 234, 'kecamatan', 3401070),
(3870, 'KOKAP', 234, 'kecamatan', 3401080),
(3871, 'GIRIMULYO', 234, 'kecamatan', 3401090),
(3872, 'NANGGULAN', 234, 'kecamatan', 3401100),
(3873, 'KALIBAWANG', 234, 'kecamatan', 3401110),
(3874, 'SAMIGALUH', 234, 'kecamatan', 3401120),
(3875, 'SRANDAKAN', 235, 'kecamatan', 3402010),
(3876, 'SANDEN', 235, 'kecamatan', 3402020),
(3877, 'KRETEK', 235, 'kecamatan', 3402030),
(3878, 'PUNDONG', 235, 'kecamatan', 3402040),
(3879, 'BAMBANG LIPURO', 235, 'kecamatan', 3402050),
(3880, 'PANDAK', 235, 'kecamatan', 3402060),
(3881, 'BANTUL', 235, 'kecamatan', 3402070),
(3882, 'JETIS', 235, 'kecamatan', 3402080),
(3883, 'IMOGIRI', 235, 'kecamatan', 3402090),
(3884, 'DLINGO', 235, 'kecamatan', 3402100),
(3885, 'PLERET', 235, 'kecamatan', 3402110),
(3886, 'PIYUNGAN', 235, 'kecamatan', 3402120),
(3887, 'BANGUNTAPAN', 235, 'kecamatan', 3402130),
(3888, 'SEWON', 235, 'kecamatan', 3402140),
(3889, 'KASIHAN', 235, 'kecamatan', 3402150),
(3890, 'PAJANGAN', 235, 'kecamatan', 3402160),
(3891, 'SEDAYU', 235, 'kecamatan', 3402170),
(3892, 'PANGGANG', 236, 'kecamatan', 3403010),
(3893, 'PURWOSARI', 236, 'kecamatan', 3403011),
(3894, 'PALIYAN', 236, 'kecamatan', 3403020),
(3895, 'SAPTO SARI', 236, 'kecamatan', 3403030),
(3896, 'TEPUS', 236, 'kecamatan', 3403040),
(3897, 'TANJUNGSARI', 236, 'kecamatan', 3403041),
(3898, 'RONGKOP', 236, 'kecamatan', 3403050),
(3899, 'GIRISUBO', 236, 'kecamatan', 3403051),
(3900, 'SEMANU', 236, 'kecamatan', 3403060),
(3901, 'PONJONG', 236, 'kecamatan', 3403070),
(3902, 'KARANGMOJO', 236, 'kecamatan', 3403080),
(3903, 'WONOSARI', 236, 'kecamatan', 3403090),
(3904, 'PLAYEN', 236, 'kecamatan', 3403100),
(3905, 'PATUK', 236, 'kecamatan', 3403110),
(3906, 'GEDANG SARI', 236, 'kecamatan', 3403120),
(3907, 'NGLIPAR', 236, 'kecamatan', 3403130),
(3908, 'NGAWEN', 236, 'kecamatan', 3403140),
(3909, 'SEMIN', 236, 'kecamatan', 3403150),
(3910, 'MOYUDAN', 237, 'kecamatan', 3404010),
(3911, 'MINGGIR', 237, 'kecamatan', 3404020),
(3912, 'SEYEGAN', 237, 'kecamatan', 3404030),
(3913, 'GODEAN', 237, 'kecamatan', 3404040),
(3914, 'GAMPING', 237, 'kecamatan', 3404050),
(3915, 'MLATI', 237, 'kecamatan', 3404060),
(3916, 'DEPOK', 237, 'kecamatan', 3404070),
(3917, 'BERBAH', 237, 'kecamatan', 3404080),
(3918, 'PRAMBANAN', 237, 'kecamatan', 3404090),
(3919, 'KALASAN', 237, 'kecamatan', 3404100),
(3920, 'NGEMPLAK', 237, 'kecamatan', 3404110),
(3921, 'NGAGLIK', 237, 'kecamatan', 3404120),
(3922, 'SLEMAN', 237, 'kecamatan', 3404130),
(3923, 'TEMPEL', 237, 'kecamatan', 3404140),
(3924, 'TURI', 237, 'kecamatan', 3404150),
(3925, 'PAKEM', 237, 'kecamatan', 3404160),
(3926, 'CANGKRINGAN', 237, 'kecamatan', 3404170),
(3927, 'MANTRIJERON', 238, 'kecamatan', 3471010),
(3928, 'KRATON', 238, 'kecamatan', 3471020),
(3929, 'MERGANGSAN', 238, 'kecamatan', 3471030),
(3930, 'UMBULHARJO', 238, 'kecamatan', 3471040),
(3931, 'KOTAGEDE', 238, 'kecamatan', 3471050),
(3932, 'GONDOKUSUMAN', 238, 'kecamatan', 3471060),
(3933, 'DANUREJAN', 238, 'kecamatan', 3471070),
(3934, 'PAKUALAMAN', 238, 'kecamatan', 3471080),
(3935, 'GONDOMANAN', 238, 'kecamatan', 3471090),
(3936, 'NGAMPILAN', 238, 'kecamatan', 3471100),
(3937, 'WIROBRAJAN', 238, 'kecamatan', 3471110),
(3938, 'GEDONG TENGEN', 238, 'kecamatan', 3471120),
(3939, 'JETIS', 238, 'kecamatan', 3471130),
(3940, 'TEGALREJO', 238, 'kecamatan', 3471140),
(47211, 'JANGKARAN', 3863, 'desa', 2147483647),
(47212, 'SINDUTAN', 3863, 'desa', 2147483647),
(47213, 'PALIHAN', 3863, 'desa', 2147483647),
(47214, 'GLAGAH', 3863, 'desa', 2147483647),
(47215, 'KALI DENGEN', 3863, 'desa', 2147483647),
(47216, 'PLUMBON', 3863, 'desa', 2147483647),
(47217, 'KEDUNDANG', 3863, 'desa', 2147483647),
(47218, 'DEMEN', 3863, 'desa', 2147483647),
(47219, 'KULUR', 3863, 'desa', 2147483647),
(47220, 'KALIGINTUNG', 3863, 'desa', 2147483647),
(47221, 'TEMON WETAN', 3863, 'desa', 2147483647),
(47222, 'TEMON KULON', 3863, 'desa', 2147483647),
(47223, 'KEBONREJO', 3863, 'desa', 2147483647),
(47224, 'JANTEN', 3863, 'desa', 2147483647),
(47225, 'KARANG WULUH', 3863, 'desa', 2147483647),
(47226, 'KARANG WUNI', 3864, 'desa', 2147483647),
(47227, 'SOGAN', 3864, 'desa', 2147483647),
(47228, 'KULWARU', 3864, 'desa', 2147483647),
(47229, 'NGESTIHARJO', 3864, 'desa', 2147483647),
(47230, 'TRIHARJO', 3864, 'desa', 2147483647),
(47231, 'BENDUNGAN', 3864, 'desa', 2147483647),
(47232, 'GIRI PENI', 3864, 'desa', 2147483647),
(47233, 'WATES', 3864, 'desa', 2147483647),
(47234, 'GARONGAN', 3865, 'desa', 2147483647),
(47235, 'PLERET', 3865, 'desa', 2147483647),
(47236, 'BUGEL', 3865, 'desa', 2147483647),
(47237, 'KANOMAN', 3865, 'desa', 2147483647),
(47238, 'DEPOK', 3865, 'desa', 2147483647),
(47239, 'BOJONG', 3865, 'desa', 2147483647),
(47240, 'TAYUBAN', 3865, 'desa', 2147483647),
(47241, 'GOTAKAN', 3865, 'desa', 2147483647),
(47242, 'PANJATAN', 3865, 'desa', 2147483647),
(47243, 'CERME', 3865, 'desa', 2147483647),
(47244, 'KREMBANGAN', 3865, 'desa', 2147483647),
(47245, 'KARANG SEWU', 3866, 'desa', 2147483647),
(47246, 'BANARAN', 3866, 'desa', 2147483647),
(47247, 'KRANGGAN', 3866, 'desa', 2147483647),
(47248, 'NOMPOREJO', 3866, 'desa', 2147483647),
(47249, 'BROSOT', 3866, 'desa', 2147483647),
(47250, 'PANDOWAN', 3866, 'desa', 2147483647),
(47251, 'TIRTA RAHAYU', 3866, 'desa', 2147483647),
(47252, 'WAHYUHARJO', 3867, 'desa', 2147483647),
(47253, 'BUMIREJO', 3867, 'desa', 2147483647),
(47254, 'JATIREJO', 3867, 'desa', 2147483647),
(47255, 'SIDOREJO', 3867, 'desa', 2147483647),
(47256, 'GULUREJO', 3867, 'desa', 2147483647),
(47257, 'NGENTAKREJO', 3867, 'desa', 2147483647),
(47258, 'DEMANGREJO', 3868, 'desa', 2147483647),
(47259, 'SRIKAYANGAN', 3868, 'desa', 2147483647),
(47260, 'TUKSONO', 3868, 'desa', 2147483647),
(47261, 'SALAMREJO', 3868, 'desa', 2147483647),
(47262, 'SUKORENO', 3868, 'desa', 2147483647),
(47263, 'KALIAGUNG', 3868, 'desa', 2147483647),
(47264, 'SENTOLO', 3868, 'desa', 2147483647),
(47265, 'BANGUNCIPTO', 3868, 'desa', 2147483647),
(47266, 'TAWANGSARI', 3869, 'desa', 2147483647),
(47267, 'KARANGSARI', 3869, 'desa', 2147483647),
(47268, 'KEDUNGSARI', 3869, 'desa', 2147483647),
(47269, 'MARGOSARI', 3869, 'desa', 2147483647),
(47270, 'PENGASIH', 3869, 'desa', 2147483647),
(47271, 'SENDANGSARI', 3869, 'desa', 2147483647),
(47272, 'SIDOMULYO', 3869, 'desa', 2147483647),
(47273, 'HARGOMULYO', 3870, 'desa', 2147483647),
(47274, 'HARGOREJO', 3870, 'desa', 2147483647),
(47275, 'HARGOWILIS', 3870, 'desa', 2147483647),
(47276, 'KALIREJO', 3870, 'desa', 2147483647),
(47277, 'HARGOTIRTO', 3870, 'desa', 2147483647),
(47278, 'JATIMULYO', 3871, 'desa', 2147483647),
(47279, 'GIRIPURWO', 3871, 'desa', 2147483647),
(47280, 'PENDOWOREJO', 3871, 'desa', 2147483647),
(47281, 'PURWOSARI', 3871, 'desa', 2147483647),
(47282, 'BANYUROTO', 3872, 'desa', 2147483647),
(47283, 'DONOMULYO', 3872, 'desa', 2147483647),
(47284, 'WIJIMULYO', 3872, 'desa', 2147483647),
(47285, 'TANJUNGHARJO', 3872, 'desa', 2147483647),
(47286, 'JATI SARONO', 3872, 'desa', 2147483647),
(47287, 'KEMBANG', 3872, 'desa', 2147483647),
(47288, 'BANJARARUM', 3873, 'desa', 2147483647),
(47289, 'BANJARASRI', 3873, 'desa', 2147483647),
(47290, 'BANJARHARJO', 3873, 'desa', 2147483647),
(47291, 'BANJAROYO', 3873, 'desa', 2147483647),
(47292, 'KEBON HARJO', 3874, 'desa', 2147483647),
(47293, 'BANJARSARI', 3874, 'desa', 2147483647),
(47294, 'PURWOHARJO', 3874, 'desa', 2147483647),
(47295, 'SIDOHARJO', 3874, 'desa', 2147483647),
(47296, 'GERBOSARI', 3874, 'desa', 2147483647),
(47297, 'NGARGOSARI', 3874, 'desa', 2147483647),
(47298, 'PAGERHARJO', 3874, 'desa', 2147483647),
(47299, 'PONCOSARI', 3875, 'desa', 2147483647),
(47300, 'TRIMURTI', 3875, 'desa', 2147483647),
(47301, 'GADINGSARI', 3876, 'desa', 2147483647),
(47302, 'GADINGHARJO', 3876, 'desa', 2147483647),
(47303, 'SRIGADING', 3876, 'desa', 2147483647),
(47304, 'MURTIGADING', 3876, 'desa', 2147483647),
(47305, 'TIRTOHARGO', 3877, 'desa', 2147483647),
(47306, 'PARANGTRITIS', 3877, 'desa', 2147483647),
(47307, 'DONOTIRTO', 3877, 'desa', 2147483647),
(47308, 'TIRTOSARI', 3877, 'desa', 2147483647),
(47309, 'TIRTOMULYO', 3877, 'desa', 2147483647),
(47310, 'SELOHARJO', 3878, 'desa', 2147483647),
(47311, 'PANJANGREJO', 3878, 'desa', 2147483647),
(47312, 'SRIHARDONO', 3878, 'desa', 2147483647),
(47313, 'SIDOMULYO', 3879, 'desa', 2147483647),
(47314, 'MULYODADI', 3879, 'desa', 2147483647),
(47315, 'SUMBERMULYO', 3879, 'desa', 2147483647),
(47316, 'CATURHARJO', 3880, 'desa', 2147483647),
(47317, 'TRIHARJO', 3880, 'desa', 2147483647),
(47318, 'GILANGHARJO', 3880, 'desa', 2147483647),
(47319, 'WIJIREJO', 3880, 'desa', 2147483647),
(47320, 'PALBAPANG', 3881, 'desa', 2147483647),
(47321, 'RINGIN HARJO', 3881, 'desa', 2147483647),
(47322, 'BANTUL', 3881, 'desa', 2147483647),
(47323, 'TRIRENGGO', 3881, 'desa', 2147483647),
(47324, 'SABDODADI', 3881, 'desa', 2147483647),
(47325, 'PATALAN', 3882, 'desa', 2147483647),
(47326, 'CANDEN', 3882, 'desa', 2147483647),
(47327, 'SUMBER AGUNG', 3882, 'desa', 2147483647),
(47328, 'TRIMULYO', 3882, 'desa', 2147483647),
(47329, 'SELOPAMIORO', 3883, 'desa', 2147483647),
(47330, 'SRIHARJO', 3883, 'desa', 2147483647),
(47331, 'KEBON AGUNG', 3883, 'desa', 2147483647),
(47332, 'KARANG TENGAH', 3883, 'desa', 2147483647),
(47333, 'GIRIREJO', 3883, 'desa', 2147483647),
(47334, 'KARANGTALUN', 3883, 'desa', 2147483647),
(47335, 'IMOGIRI', 3883, 'desa', 2147483647),
(47336, 'WUKIRSARI', 3883, 'desa', 2147483647),
(47337, 'MANGUNAN', 3884, 'desa', 2147483647),
(47338, 'MUNTUK', 3884, 'desa', 2147483647),
(47339, 'DLINGO', 3884, 'desa', 2147483647),
(47340, 'TEMUWUH', 3884, 'desa', 2147483647),
(47341, 'JATIMULYO', 3884, 'desa', 2147483647),
(47342, 'TERONG', 3884, 'desa', 2147483647),
(47343, 'WONOKROMO', 3885, 'desa', 2147483647),
(47344, 'PLERET', 3885, 'desa', 2147483647),
(47345, 'SEGOROYOSO', 3885, 'desa', 2147483647),
(47346, 'BAWURAN', 3885, 'desa', 2147483647),
(47347, 'WONOLELO', 3885, 'desa', 2147483647),
(47348, 'SITIMULYO', 3886, 'desa', 2147483647),
(47349, 'SRIMULYO', 3886, 'desa', 2147483647),
(47350, 'SRIMARTANI', 3886, 'desa', 2147483647),
(47351, 'TAMANAN', 3887, 'desa', 2147483647),
(47352, 'JAGALAN', 3887, 'desa', 2147483647),
(47353, 'SINGOSAREN', 3887, 'desa', 2147483647),
(47354, 'WIROKERTEN', 3887, 'desa', 2147483647),
(47355, 'JAMBIDAN', 3887, 'desa', 2147483647),
(47356, 'POTORONO', 3887, 'desa', 2147483647),
(47357, 'BATURETNO', 3887, 'desa', 2147483647),
(47358, 'BANGUNTAPAN', 3887, 'desa', 2147483647),
(47359, 'PENDOWOHARJO', 3888, 'desa', 2147483647),
(47360, 'TIMBULHARJO', 3888, 'desa', 2147483647),
(47361, 'BANGUNHARJO', 3888, 'desa', 2147483647),
(47362, 'PANGGUNGHARJO', 3888, 'desa', 2147483647),
(47363, 'BANGUNJIWO', 3889, 'desa', 2147483647),
(47364, 'TIRTONIRMOLO', 3889, 'desa', 2147483647),
(47365, 'TAMANTIRTO', 3889, 'desa', 2147483647),
(47366, 'NGESTIHARJO', 3889, 'desa', 2147483647),
(47367, 'TRIWIDADI', 3890, 'desa', 2147483647),
(47368, 'SENDANGSARI', 3890, 'desa', 2147483647),
(47369, 'GUWOSARI', 3890, 'desa', 2147483647),
(47370, 'ARGODADI', 3891, 'desa', 2147483647),
(47371, 'ARGOREJO', 3891, 'desa', 2147483647),
(47372, 'ARGOSARI', 3891, 'desa', 2147483647),
(47373, 'ARGOMULYO', 3891, 'desa', 2147483647),
(47374, 'GIRIHARJO', 3892, 'desa', 2147483647),
(47375, 'GIRIWUNGU', 3892, 'desa', 2147483647),
(47376, 'GIRIMULYO', 3892, 'desa', 2147483647),
(47377, 'GIRIKARTO', 3892, 'desa', 2147483647),
(47378, 'GIRISEKAR', 3892, 'desa', 2147483647),
(47379, 'GIRISUKO', 3892, 'desa', 2147483647),
(47380, 'GIRIJATI', 3893, 'desa', 2147483647),
(47381, 'GIRIASIH', 3893, 'desa', 2147483647),
(47382, 'GIRICAHYO', 3893, 'desa', 2147483647),
(47383, 'GIRIPURWO', 3893, 'desa', 2147483647),
(47384, 'GIRITIRTO', 3893, 'desa', 2147483647),
(47385, 'KARANG DUWET', 3894, 'desa', 2147483647),
(47386, 'KARANG ASEM', 3894, 'desa', 2147483647),
(47387, 'MULUSAN', 3894, 'desa', 2147483647),
(47388, 'GIRING', 3894, 'desa', 2147483647),
(47389, 'SODO', 3894, 'desa', 2147483647),
(47390, 'PAMPANG', 3894, 'desa', 2147483647),
(47391, 'GROGOL', 3894, 'desa', 2147483647),
(47392, 'KRAMBIL SAWIT', 3895, 'desa', 2147483647),
(47393, 'KANIGORO', 3895, 'desa', 2147483647),
(47394, 'PLANJAN', 3895, 'desa', 2147483647),
(47395, 'MONGGOL', 3895, 'desa', 2147483647),
(47396, 'KEPEK', 3895, 'desa', 2147483647),
(47397, 'NGLORA', 3895, 'desa', 2147483647),
(47398, 'JETIS', 3895, 'desa', 2147483647),
(47399, 'SIDOHARJO', 3896, 'desa', 2147483647),
(47400, 'TEPUS', 3896, 'desa', 2147483647),
(47401, 'PURWODADI', 3896, 'desa', 2147483647),
(47402, 'GIRIPANGGUNG', 3896, 'desa', 2147483647),
(47403, 'SUMBER WUNGU', 3896, 'desa', 2147483647),
(47404, 'KEMADANG', 3897, 'desa', 2147483647),
(47405, 'KEMIRI', 3897, 'desa', 2147483647),
(47406, 'BANJAREJO', 3897, 'desa', 2147483647),
(47407, 'NGESTIREJO', 3897, 'desa', 2147483647),
(47408, 'HARGOSARI', 3897, 'desa', 2147483647),
(47409, 'MELIKAN', 3898, 'desa', 2147483647),
(47410, 'BOHOL', 3898, 'desa', 2147483647),
(47411, 'PRINGOMBO', 3898, 'desa', 2147483647),
(47412, 'BOTODAYAKAN', 3898, 'desa', 2147483647),
(47413, 'PETIR', 3898, 'desa', 2147483647),
(47414, 'SEMUGIH', 3898, 'desa', 2147483647),
(47415, 'KARANGWUNI', 3898, 'desa', 2147483647),
(47416, 'PUCANGANOM', 3898, 'desa', 2147483647),
(47417, 'BALONG', 3899, 'desa', 2147483647),
(47418, 'JEPITU', 3899, 'desa', 2147483647),
(47419, 'KARANGAWEN', 3899, 'desa', 2147483647),
(47420, 'TILENG', 3899, 'desa', 2147483647),
(47421, 'NGLINDUR', 3899, 'desa', 2147483647),
(47422, 'JERUKWUDEL', 3899, 'desa', 2147483647),
(47423, 'PUCUNG', 3899, 'desa', 2147483647),
(47424, 'SONGBANYU', 3899, 'desa', 2147483647),
(47425, 'PACAREJO', 3900, 'desa', 2147483647),
(47426, 'CANDIREJO', 3900, 'desa', 2147483647),
(47427, 'DADAPAYU', 3900, 'desa', 2147483647),
(47428, 'NGEPOSARI', 3900, 'desa', 2147483647),
(47429, 'SEMANU', 3900, 'desa', 2147483647),
(47430, 'GOMBANG', 3901, 'desa', 2147483647),
(47431, 'SIDOREJO', 3901, 'desa', 2147483647),
(47432, 'BEDOYO', 3901, 'desa', 2147483647),
(47433, 'KARANG ASEM', 3901, 'desa', 2147483647),
(47434, 'PONJONG', 3901, 'desa', 2147483647),
(47435, 'GENJAHAN', 3901, 'desa', 2147483647),
(47436, 'SUMBER GIRI', 3901, 'desa', 2147483647),
(47437, 'KENTENG', 3901, 'desa', 2147483647),
(47438, 'TAMBAKROMO', 3901, 'desa', 2147483647),
(47439, 'SAWAHAN', 3901, 'desa', 2147483647),
(47440, 'UMBUL REJO', 3901, 'desa', 2147483647),
(47441, 'BENDUNGAN', 3902, 'desa', 2147483647),
(47442, 'BEJIHARJO', 3902, 'desa', 2147483647),
(47443, 'WILADEG', 3902, 'desa', 2147483647),
(47444, 'KELOR', 3902, 'desa', 2147483647),
(47445, 'NGIPAK', 3902, 'desa', 2147483647),
(47446, 'KARANGMOJO', 3902, 'desa', 2147483647),
(47447, 'GEDANG REJO', 3902, 'desa', 2147483647),
(47448, 'NGAWIS', 3902, 'desa', 2147483647),
(47449, 'JATI AYU', 3902, 'desa', 2147483647),
(47450, 'WUNUNG', 3903, 'desa', 2147483647),
(47451, 'MULO', 3903, 'desa', 2147483647),
(47452, 'DUWET', 3903, 'desa', 2147483647),
(47453, 'WARENG', 3903, 'desa', 2147483647),
(47454, 'PULUTAN', 3903, 'desa', 2147483647),
(47455, 'SIRAMAN', 3903, 'desa', 2147483647),
(47456, 'KARANG REJEK', 3903, 'desa', 2147483647),
(47457, 'BALEHARJO', 3903, 'desa', 2147483647),
(47458, 'SELANG', 3903, 'desa', 2147483647),
(47459, 'WONOSARI', 3903, 'desa', 2147483647),
(47460, 'KEPEK', 3903, 'desa', 2147483647),
(47461, 'PIYAMAN', 3903, 'desa', 2147483647),
(47462, 'KARANG TENGAH', 3903, 'desa', 2147483647),
(47463, 'GARI', 3903, 'desa', 2147483647),
(47464, 'BANYUSOCO', 3904, 'desa', 2147483647),
(47465, 'PLEMBUTAN', 3904, 'desa', 2147483647),
(47466, 'BLEBERAN', 3904, 'desa', 2147483647),
(47467, 'GETAS', 3904, 'desa', 2147483647),
(47468, 'DENGOK', 3904, 'desa', 2147483647),
(47469, 'NGUNUT', 3904, 'desa', 2147483647),
(47470, 'PLAYEN', 3904, 'desa', 2147483647),
(47471, 'NGAWU', 3904, 'desa', 2147483647),
(47472, 'BANDUNG', 3904, 'desa', 2147483647),
(47473, 'LOGANDENG', 3904, 'desa', 2147483647),
(47474, 'GADING', 3904, 'desa', 2147483647),
(47475, 'BANARAN', 3904, 'desa', 2147483647),
(47476, 'NGLERI', 3904, 'desa', 2147483647),
(47477, 'SEMOYO', 3905, 'desa', 2147483647),
(47478, 'PENGKOK', 3905, 'desa', 2147483647),
(47479, 'BEJI', 3905, 'desa', 2147483647),
(47480, 'BUNDER', 3905, 'desa', 2147483647),
(47481, 'NGLEGI', 3905, 'desa', 2147483647),
(47482, 'PUTAT', 3905, 'desa', 2147483647),
(47483, 'SALAM', 3905, 'desa', 2147483647),
(47484, 'PATUK', 3905, 'desa', 2147483647),
(47485, 'NGORO ORO', 3905, 'desa', 2147483647),
(47486, 'NGLANGGERAN', 3905, 'desa', 2147483647),
(47487, 'TERBAH', 3905, 'desa', 2147483647),
(47488, 'NGALANG', 3906, 'desa', 2147483647),
(47489, 'HARGO MULYO', 3906, 'desa', 2147483647),
(47490, 'MERTELU', 3906, 'desa', 2147483647),
(47491, 'TEGALREJO', 3906, 'desa', 2147483647),
(47492, 'WATU GAJAH', 3906, 'desa', 2147483647),
(47493, 'SAMPANG', 3906, 'desa', 2147483647),
(47494, 'SERUT', 3906, 'desa', 2147483647),
(47495, 'KEDUNG KERIS', 3907, 'desa', 2147483647),
(47496, 'NGLIPAR', 3907, 'desa', 2147483647),
(47497, 'PENGKOL', 3907, 'desa', 2147483647),
(47498, 'KEDUNGPOH', 3907, 'desa', 2147483647),
(47499, 'KATONGAN', 3907, 'desa', 2147483647),
(47500, 'PILANG REJO', 3907, 'desa', 2147483647),
(47501, 'NATAH', 3907, 'desa', 2147483647),
(47502, 'WATU SIGAR', 3908, 'desa', 2147483647),
(47503, 'BEJI', 3908, 'desa', 2147483647),
(47504, 'KAMPUNG', 3908, 'desa', 2147483647),
(47505, 'JURANG JERO', 3908, 'desa', 2147483647),
(47506, 'SAMBIREJO', 3908, 'desa', 2147483647),
(47507, 'TANCEP', 3908, 'desa', 2147483647),
(47508, 'KALITEKUK', 3909, 'desa', 2147483647),
(47509, 'KEMEJING', 3909, 'desa', 2147483647),
(47510, 'SEMIN', 3909, 'desa', 2147483647),
(47511, 'PUNDUNG SARI', 3909, 'desa', 2147483647),
(47512, 'KARANG SARI', 3909, 'desa', 2147483647),
(47513, 'REJOSARI', 3909, 'desa', 2147483647),
(47514, 'BULUREJO', 3909, 'desa', 2147483647),
(47515, 'BENDUNG', 3909, 'desa', 2147483647),
(47516, 'SUMBERREJO', 3909, 'desa', 2147483647),
(47517, 'CANDI REJO', 3909, 'desa', 2147483647),
(47518, 'SUMBERRAHAYU', 3910, 'desa', 2147483647),
(47519, 'SUMBERSARI', 3910, 'desa', 2147483647),
(47520, 'SUMBER AGUNG', 3910, 'desa', 2147483647),
(47521, 'SUMBERARUM', 3910, 'desa', 2147483647),
(47522, 'SENDANG MULYO', 3911, 'desa', 2147483647),
(47523, 'SENDANG ARUM', 3911, 'desa', 2147483647),
(47524, 'SENDANG REJO', 3911, 'desa', 2147483647),
(47525, 'SENDANGSARI', 3911, 'desa', 2147483647),
(47526, 'SENDANGAGUNG', 3911, 'desa', 2147483647),
(47527, 'MARGOLUWIH', 3912, 'desa', 2147483647),
(47528, 'MARGODADI', 3912, 'desa', 2147483647),
(47529, 'MARGOMULYO', 3912, 'desa', 2147483647),
(47530, 'MARGOAGUNG', 3912, 'desa', 2147483647),
(47531, 'MARGOKATON', 3912, 'desa', 2147483647),
(47532, 'SIDOREJO', 3913, 'desa', 2147483647),
(47533, 'SIDOLUHUR', 3913, 'desa', 2147483647),
(47534, 'SIDOMULYO', 3913, 'desa', 2147483647),
(47535, 'SIDOAGUNG', 3913, 'desa', 2147483647),
(47536, 'SIDOKARTO', 3913, 'desa', 2147483647),
(47537, 'SIDOARUM', 3913, 'desa', 2147483647),
(47538, 'SIDOMOYO', 3913, 'desa', 2147483647),
(47539, 'BALECATUR', 3914, 'desa', 2147483647),
(47540, 'AMBARKETAWANG', 3914, 'desa', 2147483647),
(47541, 'BANYURADEN', 3914, 'desa', 2147483647),
(47542, 'NOGOTIRTO', 3914, 'desa', 2147483647),
(47543, 'TRIHANGGO', 3914, 'desa', 2147483647),
(47544, 'TIRTOADI', 3915, 'desa', 2147483647),
(47545, 'SUMBERADI', 3915, 'desa', 2147483647),
(47546, 'TLOGOADI', 3915, 'desa', 2147483647),
(47547, 'SENDANGADI', 3915, 'desa', 2147483647),
(47548, 'SINDUADI', 3915, 'desa', 2147483647),
(47549, 'CATUR TUNGGAL', 3916, 'desa', 2147483647),
(47550, 'MAGUWOHARJO', 3916, 'desa', 2147483647),
(47551, 'CONDONG CATUR', 3916, 'desa', 2147483647),
(47552, 'SENDANG TIRTO', 3917, 'desa', 2147483647),
(47553, 'TEGAL TIRTO', 3917, 'desa', 2147483647),
(47554, 'JOGO TIRTO', 3917, 'desa', 2147483647),
(47555, 'KALI TIRTO', 3917, 'desa', 2147483647),
(47556, 'SUMBER HARJO', 3918, 'desa', 2147483647),
(47557, 'WUKIR HARJO', 3918, 'desa', 2147483647),
(47558, 'GAYAM HARJO', 3918, 'desa', 2147483647),
(47559, 'SAMBI REJO', 3918, 'desa', 2147483647),
(47560, 'MADU REJO', 3918, 'desa', 2147483647),
(47561, 'BOKO HARJO', 3918, 'desa', 2147483647),
(47562, 'PURWO MARTANI', 3919, 'desa', 2147483647),
(47563, 'TIRTO MARTANI', 3919, 'desa', 2147483647),
(47564, 'TAMAN MARTANI', 3919, 'desa', 2147483647),
(47565, 'SELO MARTANI', 3919, 'desa', 2147483647),
(47566, 'WEDOMARTANI', 3920, 'desa', 2147483647),
(47567, 'UMBULMARTANI', 3920, 'desa', 2147483647),
(47568, 'WIDODO MARTANI', 3920, 'desa', 2147483647),
(47569, 'BIMO MARTANI', 3920, 'desa', 2147483647),
(47570, 'SINDUMARTANI', 3920, 'desa', 2147483647),
(47571, 'SARI HARJO', 3921, 'desa', 2147483647),
(47572, 'SINDUHARJO', 3921, 'desa', 2147483647),
(47573, 'MINOMARTANI', 3921, 'desa', 2147483647),
(47574, 'SUKO HARJO', 3921, 'desa', 2147483647),
(47575, 'SARDONOHARJO', 3921, 'desa', 2147483647),
(47576, 'DONOHARJO', 3921, 'desa', 2147483647),
(47577, 'CATUR HARJO', 3922, 'desa', 2147483647),
(47578, 'TRIHARJO', 3922, 'desa', 2147483647),
(47579, 'TRIDADI', 3922, 'desa', 2147483647),
(47580, 'PANDOWO HARJO', 3922, 'desa', 2147483647),
(47581, 'TRI MULYO', 3922, 'desa', 2147483647),
(47582, 'BANYU REJO', 3923, 'desa', 2147483647),
(47583, 'TAMBAK REJO', 3923, 'desa', 2147483647),
(47584, 'SUMBER REJO', 3923, 'desa', 2147483647),
(47585, 'PONDOK REJO', 3923, 'desa', 2147483647),
(47586, 'MORO REJO', 3923, 'desa', 2147483647),
(47587, 'MARGO REJO', 3923, 'desa', 2147483647),
(47588, 'LUMBUNG REJO', 3923, 'desa', 2147483647),
(47589, 'MERDIKO REJO', 3923, 'desa', 2147483647),
(47590, 'BANGUN KERTO', 3924, 'desa', 2147483647),
(47591, 'DONOKERTO', 3924, 'desa', 2147483647),
(47592, 'GIRI KERTO', 3924, 'desa', 2147483647),
(47593, 'WONO KERTO', 3924, 'desa', 2147483647),
(47594, 'PURWO BINANGUN', 3925, 'desa', 2147483647),
(47595, 'CANDI BINANGUN', 3925, 'desa', 2147483647),
(47596, 'HARJO BINANGUN', 3925, 'desa', 2147483647),
(47597, 'PAKEM BINANGUN', 3925, 'desa', 2147483647),
(47598, 'HARGO BINANGUN', 3925, 'desa', 2147483647),
(47599, 'WUKIR SARI', 3926, 'desa', 2147483647),
(47600, 'ARGO MULYO', 3926, 'desa', 2147483647),
(47601, 'GLAGAH HARJO', 3926, 'desa', 2147483647),
(47602, 'KEPUH HARJO', 3926, 'desa', 2147483647),
(47603, 'UMBUL HARJO', 3926, 'desa', 2147483647),
(47604, 'GEDONGKIWO', 3927, 'kelurahan', 2147483647),
(47605, 'SURYODININGRATAN', 3927, 'kelurahan', 2147483647),
(47606, 'MANTRIJERON', 3927, 'kelurahan', 2147483647),
(47607, 'PATEHAN', 3928, 'kelurahan', 2147483647),
(47608, 'PANEMBAHAN', 3928, 'kelurahan', 2147483647),
(47609, 'KADIPATEN', 3928, 'kelurahan', 2147483647),
(47610, 'BRONTOKUSUMAN', 3929, 'kelurahan', 2147483647),
(47611, 'KEPARAKAN', 3929, 'kelurahan', 2147483647),
(47612, 'WIROGUNAN', 3929, 'kelurahan', 2147483647),
(47613, 'GIWANGAN', 3930, 'kelurahan', 2147483647),
(47614, 'SOROSUTAN', 3930, 'kelurahan', 2147483647),
(47615, 'PANDEYAN', 3930, 'kelurahan', 2147483647),
(47616, 'WARUNGBOTO', 3930, 'kelurahan', 2147483647),
(47617, 'TAHUNAN', 3930, 'kelurahan', 2147483647),
(47618, 'MUJA MUJU', 3930, 'kelurahan', 2147483647),
(47619, 'SEMAKI', 3930, 'kelurahan', 2147483647),
(47620, 'PRENGGAN', 3931, 'kelurahan', 2147483647),
(47621, 'PURBAYAN', 3931, 'kelurahan', 2147483647),
(47622, 'REJOWINANGUN', 3931, 'kelurahan', 2147483647),
(47623, 'BACIRO', 3932, 'kelurahan', 2147483647),
(47624, 'DEMANGAN', 3932, 'kelurahan', 2147483647),
(47625, 'KLITREN', 3932, 'kelurahan', 2147483647),
(47626, 'KOTABARU', 3932, 'kelurahan', 2147483647),
(47627, 'TERBAN', 3932, 'kelurahan', 2147483647),
(47628, 'SURYATMAJAN', 3933, 'kelurahan', 2147483647),
(47629, 'TEGAL PANGGUNG', 3933, 'kelurahan', 2147483647),
(47630, 'BAUSASRAN', 3933, 'kelurahan', 2147483647),
(47631, 'PURWO KINANTI', 3934, 'kelurahan', 2147483647),
(47632, 'GUNUNG KETUR', 3934, 'kelurahan', 2147483647),
(47633, 'PRAWIRODIRJAN', 3935, 'kelurahan', 2147483647),
(47634, 'NGUPASAN', 3935, 'kelurahan', 2147483647),
(47635, 'NOTOPRAJAN', 3936, 'kelurahan', 2147483647),
(47636, 'NGAMPILAN', 3936, 'kelurahan', 2147483647),
(47637, 'PATANGPULUHAN', 3937, 'kelurahan', 2147483647),
(47638, 'WIROBRAJAN', 3937, 'kelurahan', 2147483647),
(47639, 'PAKUNCEN', 3937, 'kelurahan', 2147483647),
(47640, 'PRINGGOKUSUMAN', 3938, 'kelurahan', 2147483647),
(47641, 'SOSROMENDURAN', 3938, 'kelurahan', 2147483647),
(47642, 'BUMIJO', 3939, 'kelurahan', 2147483647),
(47643, 'GOWONGAN', 3939, 'kelurahan', 2147483647),
(47644, 'COKRODININGRATAN', 3939, 'kelurahan', 2147483647),
(47645, 'TEGALREJO', 3940, 'kelurahan', 2147483647),
(47646, 'BENER', 3940, 'kelurahan', 2147483647),
(47647, 'KRICAK', 3940, 'kelurahan', 2147483647),
(47648, 'KARANGWARU', 3940, 'kelurahan', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `ref_bengkel_type`
--

CREATE TABLE `ref_bengkel_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `wheel` int(11) DEFAULT NULL,
  `size` enum('1','2','3') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_bengkel_type`
--

INSERT INTO `ref_bengkel_type` (`id`, `name`, `wheel`, `size`) VALUES
(1, 'bengkel motor kecil', 2, '1'),
(2, 'bengkel motor besar', 2, '3'),
(3, 'bengkel motor-mobil spesifik', 5, '2');

-- --------------------------------------------------------

--
-- Table structure for table `ref_brand`
--

CREATE TABLE `ref_brand` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `wheel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_brand`
--

INSERT INTO `ref_brand` (`id`, `name`, `wheel`) VALUES
(1, 'Aprilia', 2),
(2, 'Audi', 4),
(3, 'Bajaj', 2),
(4, 'BMW', 4),
(5, 'Chevrolet', 4),
(6, 'Daihatsu', 4),
(7, 'Datsun', 4),
(8, 'Ducati', 2),
(9, 'Ferrari', 4),
(10, 'Ford', 4),
(11, 'Hearly Davidson', 2),
(12, 'Honda', 2),
(13, 'Honda', 4),
(14, 'Hyundai', 4),
(15, 'Isuzu', 4),
(16, 'Jeep', 4),
(17, 'Kawasaki', 2),
(18, 'Kia', 4),
(19, 'KTM', 2),
(20, 'Lamborghini', 4),
(21, 'Lexus', 4),
(22, 'Mazda', 4),
(23, 'Mercedes Benz', 4),
(24, 'Mitsubishi', 4),
(25, 'Moto Guzzi', 2),
(26, 'MV Agusta', 2),
(27, 'Nissan', 4),
(28, 'Piaggio', 2),
(29, 'Porsche', 4),
(30, 'Proton', 4),
(31, 'Subaru', 4),
(32, 'Suzuki', 2),
(33, 'Suzuki', 4),
(34, 'Toyota', 4),
(35, 'Triumph', 2),
(36, 'TVS', 2),
(37, 'Volkswagen', 4),
(38, 'Volvo', 4),
(39, 'Yamaha', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ref_occupation`
--

CREATE TABLE `ref_occupation` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_occupation`
--

INSERT INTO `ref_occupation` (`id`, `name`) VALUES
(1, 'Belum / Tidak Bekerja'),
(2, 'Mengurus Rumah Tangga'),
(3, 'Pelajar / Mahasiswa'),
(4, 'Pensiunan'),
(5, 'Pegawai Negeri Sipil'),
(6, 'Tentara Nasional Indonesia'),
(7, 'Kepolisian RI'),
(8, 'Wiraswasta'),
(9, 'Buruh'),
(10, 'Karyawan BUMN / BUMD'),
(11, 'Karyawan Swasta'),
(12, 'Profesional'),
(13, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `ref_service_type`
--

CREATE TABLE `ref_service_type` (
  `id` int(11) NOT NULL,
  `wheel` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sub` varchar(30) NOT NULL,
  `description` text,
  `note` text,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_service_type`
--

INSERT INTO `ref_service_type` (`id`, `wheel`, `name`, `sub`, `description`, `note`, `price`) VALUES
(1, 4, 'Ganti aki', '', NULL, NULL, 0),
(2, 4, 'Cuci body', '', NULL, NULL, 0),
(3, 4, 'Vacuum interior', '', NULL, NULL, 0),
(4, 4, 'Salon', '', NULL, NULL, 0),
(5, 2, 'Cuci motor', '', NULL, NULL, 0),
(6, 2, ' AKI ', ' Cek ', NULL, NULL, 25000),
(7, 2, ' AKI ', ' Cek ', NULL, NULL, 25000),
(8, 2, ' AKI ', ' Ganti ', NULL, NULL, 15000),
(9, 2, ' AKI ', ' Stroom aki ', NULL, NULL, 20000),
(10, 4, ' AKI ', ' Cek ', NULL, NULL, 35000),
(11, 4, ' AKI ', ' Jumper ', NULL, NULL, 45000),
(12, 4, ' AKI ', ' Ganti ', NULL, NULL, 15000),
(13, 4, ' AKI ', ' Stroom aki ', NULL, NULL, 15000),
(14, 2, 'BAN', ' Tambal ', NULL, NULL, 30000),
(15, 2, 'BAN', ' Ganti ', NULL, NULL, 15000),
(16, 2, 'BAN', ' Kirim bensin/BBM ', NULL, NULL, 15000),
(17, 4, 'BAN', ' Tambal ', NULL, NULL, 45000),
(18, 4, 'BAN', ' Ganti ', NULL, NULL, 15000),
(19, 4, 'BAN', ' Kirim bensin/BBM ', NULL, NULL, 15000),
(20, 2, 'BENGKEL', ' Cek mesin ', NULL, NULL, 40000),
(21, 2, 'BENGKEL', ' Ganti oli ', NULL, NULL, 15000),
(22, 2, 'BENGKEL', ' Kirim bensin/BBM ', NULL, NULL, 15000),
(23, 4, 'BENGKEL', ' Cek mesin ', NULL, NULL, 65000),
(24, 4, 'BENGKEL', ' Ganti oli ', NULL, NULL, 15000),
(25, 4, 'BENGKEL', ' Derek ', NULL, NULL, 15000),
(26, 4, 'BENGKEL', ' Kirim bensin/BBM ', NULL, NULL, 15000),
(27, 4, 'BENGKEL', ' Kirim spare part ', NULL, NULL, 15000),
(28, 2, ' CUCI ', ' Cuci cepat ', NULL, NULL, 25000),
(29, 2, ' CUCI ', ' Cuci pengkilapan ', NULL, NULL, 35000),
(30, 4, ' CUCI ', ' Cuci luar ', NULL, NULL, 30000),
(31, 4, ' CUCI ', ' Cuci lengkap ', NULL, NULL, 45000),
(32, 4, 'RENTAL', ' By driver ', NULL, NULL, 25000),
(33, 4, 'RENTAL', ' No driver ', NULL, NULL, 25000);

-- --------------------------------------------------------

--
-- Table structure for table `ref_spare_part`
--

CREATE TABLE `ref_spare_part` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `brand` varchar(40) NOT NULL,
  `tipe` varchar(40) NOT NULL,
  `ref_part_id` int(11) NOT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_spare_part`
--

INSERT INTO `ref_spare_part` (`id`, `name`, `brand`, `tipe`, `ref_part_id`, `note`) VALUES
(1, 'YTZ6V-DRY', 'Yuasa', 'YTZ6V-DRY', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ref_user_group`
--

CREATE TABLE `ref_user_group` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_user_group`
--

INSERT INTO `ref_user_group` (`id`, `name`, `description`) VALUES
(1, 'member', 'Customer yang mencatat datanya untuk kemudahan pemesanan selanjutnya'),
(2, 'Operator Bengkel', 'PIC bengkel yang mengelola pemesanan dan pembayaran'),
(3, 'Administrator', 'Operator AIS Aki'),
(4, 'Super_administrator', 'User level tertinggi , bisa menambah dan mengelola user'),
(5, 'Owner bengkel', 'Pemilik bengkel');

-- --------------------------------------------------------

--
-- Table structure for table `ref_vehicle_type`
--

CREATE TABLE `ref_vehicle_type` (
  `id` int(11) NOT NULL,
  `wheel` int(11) NOT NULL,
  `ref_brand_id` int(11) NOT NULL,
  `type` varchar(40) NOT NULL,
  `year` varchar(10) DEFAULT NULL,
  `transmission` enum('1','2') DEFAULT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_vehicle_type`
--

INSERT INTO `ref_vehicle_type` (`id`, `wheel`, `ref_brand_id`, `type`, `year`, `transmission`, `note`) VALUES
(1, 2, 12, 'Varion 125', '2012', '1', 'matic'),
(2, 2, 1, 'cbr 250', '2016', '2', 'manual'),
(3, 4, 1, 'jazz', '2007', '1', NULL),
(4, 4, 2, 'avanza', '2010', '2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `bengkel_id` int(11) NOT NULL,
  `ref_service_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `duration_min` int(11) DEFAULT NULL,
  `duration_max` int(11) DEFAULT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `bengkel_id`, `ref_service_id`, `price`, `duration_min`, `duration_max`, `note`) VALUES
(1, 1, 5, 25000, 30, 60, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spare_part`
--

CREATE TABLE `spare_part` (
  `id` int(11) NOT NULL,
  `bengkel_id` int(11) NOT NULL,
  `ref_spare_part_id` int(11) NOT NULL,
  `avaibility` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spare_part`
--

INSERT INTO `spare_part` (`id`, `bengkel_id`, `ref_spare_part_id`, `avaibility`, `price`) VALUES
(1, 1, 1, 50, 460000);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `bengkel_id` int(11) NOT NULL,
  `type` enum('1','2') DEFAULT NULL,
  `payment_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `nominal` varchar(30) NOT NULL,
  `method` enum('1','2','3','4') DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `ref_user_group_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cellphone` varchar(20) NOT NULL,
  `address` text,
  `ref_area_id` int(11) DEFAULT NULL,
  `facebook_id` varchar(30) DEFAULT NULL,
  `twitter_id` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `ref_user_group_id`, `first_name`, `last_name`, `username`, `password`, `email`, `cellphone`, `address`, `ref_area_id`, `facebook_id`, `twitter_id`) VALUES
(1, 5, 'Nurhidatanto', 'Saja', 'caknur', 'c4knurj09j4', 'caknur_yk@gmail.com', '8159119110', 'Jln.Wonosari KM.1 No.9', 47619, 'caknur.yk', 'caknuryk'),
(2, 1, 'Bowo', 'Godean', 'bowogod', 'djogjaku', 'bowo_godean@gmail.com', '8149119110', 'Jl. Malioboro No. 52', 47620, 'bowo.god', 'bowogod'),
(3, 3, 'Operator', 'Satu', 'operator1', '4dm1r4l', 'jahaku@gmail.com', '8149119110', 'Jln.Godean 1', 47621, 'admiral1', 'admiral1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `license_plate` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ref_vehicle_type_id` int(11) NOT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`license_plate`, `user_id`, `ref_vehicle_type_id`, `note`) VALUES
('AB100CA', 2, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE `work` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `bengkel_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `work_start` datetime DEFAULT NULL,
  `work_finish` datetime DEFAULT NULL,
  `is_satisfied` enum('0','1') DEFAULT NULL,
  `rating` smallint(6) DEFAULT NULL,
  `review` text,
  `note` text,
  `image_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bengkel`
--
ALTER TABLE `bengkel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ref_bengkel_type_id` (`ref_bengkel_type_id`),
  ADD KEY `ref_area_id` (`ref_area_id`),
  ADD KEY `contact_person1_id` (`contact_person1_id`),
  ADD KEY `contact_person2_id` (`contact_person2_id`),
  ADD KEY `owner_id` (`customer_id`);

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ref_occupation_id` (`ref_occupation_id`),
  ADD KEY `ref_area_id` (`ref_area_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bengkel_id` (`bengkel_id`),
  ADD KEY `ref_area_id` (`ref_area_id`),
  ADD KEY `ref_service_type_id` (`ref_service_type_id`);

--
-- Indexes for table `employee_service`
--
ALTER TABLE `employee_service`
  ADD KEY `id` (`id`),
  ADD KEY `ref_service_type_id` (`ref_service_type_id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `area_id` (`area_id`),
  ADD KEY `license_plate` (`license_plate`),
  ADD KEY `ref_service_id` (`ref_service_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `ref_area`
--
ALTER TABLE `ref_area`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `ref_bengkel_type`
--
ALTER TABLE `ref_bengkel_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_brand`
--
ALTER TABLE `ref_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_occupation`
--
ALTER TABLE `ref_occupation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_service_type`
--
ALTER TABLE `ref_service_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_spare_part`
--
ALTER TABLE `ref_spare_part`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ref_part_id` (`ref_part_id`);

--
-- Indexes for table `ref_user_group`
--
ALTER TABLE `ref_user_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_vehicle_type`
--
ALTER TABLE `ref_vehicle_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ref_brand_id` (`ref_brand_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bengkel_id` (`bengkel_id`),
  ADD KEY `ref_service_id` (`ref_service_id`);

--
-- Indexes for table `spare_part`
--
ALTER TABLE `spare_part`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bengkel_id` (`bengkel_id`),
  ADD KEY `ref_spare_part_id` (`ref_spare_part_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bengkel_id` (`bengkel_id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ref_user_group_id` (`ref_user_group_id`),
  ADD KEY `ref_area_id` (`ref_area_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`license_plate`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `ref_vehicle_type_id` (`ref_vehicle_type_id`);

--
-- Indexes for table `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `bengkel_id` (`bengkel_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bengkel`
--
ALTER TABLE `bengkel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ref_bengkel_type`
--
ALTER TABLE `ref_bengkel_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ref_brand`
--
ALTER TABLE `ref_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `ref_occupation`
--
ALTER TABLE `ref_occupation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `ref_service_type`
--
ALTER TABLE `ref_service_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `ref_spare_part`
--
ALTER TABLE `ref_spare_part`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ref_user_group`
--
ALTER TABLE `ref_user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ref_vehicle_type`
--
ALTER TABLE `ref_vehicle_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `spare_part`
--
ALTER TABLE `spare_part`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `work`
--
ALTER TABLE `work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bengkel`
--
ALTER TABLE `bengkel`
  ADD CONSTRAINT `bengkel_ibfk_1` FOREIGN KEY (`ref_bengkel_type_id`) REFERENCES `ref_bengkel_type` (`id`),
  ADD CONSTRAINT `bengkel_ibfk_2` FOREIGN KEY (`ref_area_id`) REFERENCES `ref_area` (`id`),
  ADD CONSTRAINT `bengkel_ibfk_5` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`ref_occupation_id`) REFERENCES `ref_occupation` (`id`),
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`ref_area_id`) REFERENCES `ref_area` (`id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`bengkel_id`) REFERENCES `bengkel` (`id`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`ref_area_id`) REFERENCES `ref_area` (`id`),
  ADD CONSTRAINT `employee_ibfk_3` FOREIGN KEY (`ref_service_type_id`) REFERENCES `ref_service_type` (`id`);

--
-- Constraints for table `employee_service`
--
ALTER TABLE `employee_service`
  ADD CONSTRAINT `employee_service_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `employee_service_ibfk_2` FOREIGN KEY (`ref_service_type_id`) REFERENCES `ref_service_type` (`id`);

--
-- Constraints for table `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`area_id`) REFERENCES `ref_area` (`id`),
  ADD CONSTRAINT `order_ibfk_3` FOREIGN KEY (`license_plate`) REFERENCES `vehicle` (`license_plate`),
  ADD CONSTRAINT `order_ibfk_4` FOREIGN KEY (`ref_service_id`) REFERENCES `ref_service_type` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`);

--
-- Constraints for table `ref_area`
--
ALTER TABLE `ref_area`
  ADD CONSTRAINT `ref_area_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `ref_area` (`id`);

--
-- Constraints for table `ref_vehicle_type`
--
ALTER TABLE `ref_vehicle_type`
  ADD CONSTRAINT `ref_vehicle_type_ibfk_1` FOREIGN KEY (`ref_brand_id`) REFERENCES `ref_brand` (`id`);

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`bengkel_id`) REFERENCES `bengkel` (`id`),
  ADD CONSTRAINT `service_ibfk_2` FOREIGN KEY (`ref_service_id`) REFERENCES `ref_service_type` (`id`);

--
-- Constraints for table `spare_part`
--
ALTER TABLE `spare_part`
  ADD CONSTRAINT `spare_part_ibfk_1` FOREIGN KEY (`bengkel_id`) REFERENCES `bengkel` (`id`),
  ADD CONSTRAINT `spare_part_ibfk_2` FOREIGN KEY (`ref_spare_part_id`) REFERENCES `ref_spare_part` (`id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`bengkel_id`) REFERENCES `bengkel` (`id`),
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`),
  ADD CONSTRAINT `transaction_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`ref_user_group_id`) REFERENCES `ref_user_group` (`id`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`ref_area_id`) REFERENCES `ref_area` (`id`);

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `vehicle_ibfk_2` FOREIGN KEY (`ref_vehicle_type_id`) REFERENCES `ref_vehicle_type` (`id`);

--
-- Constraints for table `work`
--
ALTER TABLE `work`
  ADD CONSTRAINT `work_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `work_ibfk_2` FOREIGN KEY (`bengkel_id`) REFERENCES `bengkel` (`id`),
  ADD CONSTRAINT `work_ibfk_3` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
