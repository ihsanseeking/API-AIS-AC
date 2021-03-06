-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 20 Feb 2017 pada 13.53
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.6.28

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
-- Struktur dari tabel `bengkel`
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
  `owner_id` int(11) NOT NULL,
  `max_order` int(11) NOT NULL,
  `account_number` varchar(40) NOT NULL,
  `account_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bengkel`
--

INSERT INTO `bengkel` (`id`, `name`, `ref_bengkel_type_id`, `address`, `latitude`, `longitude`, `ref_area_id`, `phone`, `fax`, `email`, `contact_person1_id`, `contact_person2_id`, `owner_id`, `max_order`, `account_number`, `account_name`) VALUES
(1, 'Ais Aki Jogja', 3, 'Jln.Wonosari KM.1 No.9', '-7.810742', '110.404572', 47618, '85743007505', 'null', '', 1, NULL, 1, 2, '178 303 7878', 'nurhidayanto');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_apicustom`
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
-- Dumping data untuk tabel `cms_apicustom`
--

INSERT INTO `cms_apicustom` (`id`, `created_at`, `updated_at`, `permalink`, `tabel`, `aksi`, `kolom`, `orderby`, `sub_query_1`, `sql_where`, `nama`, `keterangan`, `parameter`, `method_type`, `parameters`, `responses`) VALUES
(1, NULL, NULL, 'list_service_type', 'ref_service_type', 'list', NULL, NULL, NULL, '', 'List Service Type', '<p>Menampilkan Daftar Tipe Service<br></p>', NULL, 'get', 'a:6:{i:0;a:5:{s:4:"name";s:2:"id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:1;a:5:{s:4:"name";s:5:"wheel";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:2;a:5:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:3;a:5:{s:4:"name";s:11:"description";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:4;a:5:{s:4:"name";s:8:"category";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:5;a:5:{s:4:"name";s:4:"note";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}}', 'a:6:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:1;a:4:{s:4:"name";s:5:"wheel";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:2;a:4:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:3;a:4:{s:4:"name";s:11:"description";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:4;a:4:{s:4:"name";s:8:"category";s:4:"type";s:4:"enum";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:5;a:4:{s:4:"name";s:4:"note";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}}'),
(2, NULL, NULL, 'add_customer', 'customer', 'save_add', NULL, NULL, NULL, '', 'Add Customer', '<p>Untuk Tambah Data Customer<br></p>', NULL, 'post', 'a:9:{i:0;a:5:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:1;a:5:{s:4:"name";s:5:"email";s:4:"type";s:5:"email";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:2;a:5:{s:4:"name";s:9:"cellphone";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:3;a:5:{s:4:"name";s:7:"address";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:4;a:5:{s:4:"name";s:17:"ref_occupation_id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:5;a:5:{s:4:"name";s:8:"latitude";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:6;a:5:{s:4:"name";s:9:"longitude";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:7;a:5:{s:4:"name";s:11:"ref_area_id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:8;a:5:{s:4:"name";s:7:"user_id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}}', 'a:10:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:1;a:4:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:2;a:4:{s:4:"name";s:5:"email";s:4:"type";s:5:"email";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:3;a:4:{s:4:"name";s:9:"cellphone";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:4;a:4:{s:4:"name";s:7:"address";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:5;a:4:{s:4:"name";s:17:"ref_occupation_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:6;a:4:{s:4:"name";s:8:"latitude";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:7;a:4:{s:4:"name";s:9:"longitude";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:8;a:4:{s:4:"name";s:11:"ref_area_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:9;a:4:{s:4:"name";s:7:"user_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}}'),
(3, NULL, NULL, 'list_customer', 'customer', 'list', NULL, NULL, NULL, '', 'List Customer', '<p>Menampilkan daftar Customer<br></p>', NULL, 'get', 'a:10:{i:0;a:5:{s:4:"name";s:2:"id";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:1;a:5:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:2;a:5:{s:4:"name";s:5:"email";s:4:"type";s:5:"email";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:3;a:5:{s:4:"name";s:9:"cellphone";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:4;a:5:{s:4:"name";s:7:"address";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:5;a:5:{s:4:"name";s:17:"ref_occupation_id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:6;a:5:{s:4:"name";s:8:"latitude";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:7;a:5:{s:4:"name";s:9:"longitude";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:8;a:5:{s:4:"name";s:11:"ref_area_id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:9;a:5:{s:4:"name";s:7:"user_id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}}', 'a:10:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:1;a:4:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:2;a:4:{s:4:"name";s:5:"email";s:4:"type";s:5:"email";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:3;a:4:{s:4:"name";s:9:"cellphone";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:4;a:4:{s:4:"name";s:7:"address";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:5;a:4:{s:4:"name";s:17:"ref_occupation_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:6;a:4:{s:4:"name";s:8:"latitude";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:7;a:4:{s:4:"name";s:9:"longitude";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:8;a:4:{s:4:"name";s:11:"ref_area_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:9;a:4:{s:4:"name";s:7:"user_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}}'),
(4, NULL, NULL, 'add_member_customer', 'user', 'save_add', NULL, NULL, NULL, '', 'Add Member Customer', '<p>Add Member From Customer<br></p>', NULL, 'post', 'a:11:{i:0;a:5:{s:4:"name";s:17:"ref_user_group_id";s:4:"type";s:7:"integer";s:6:"config";s:1:"1";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:1;a:5:{s:4:"name";s:10:"first_name";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:2;a:5:{s:4:"name";s:9:"last_name";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:3;a:5:{s:4:"name";s:8:"username";s:4:"type";s:5:"email";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:4;a:5:{s:4:"name";s:8:"password";s:4:"type";s:8:"password";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:5;a:5:{s:4:"name";s:5:"email";s:4:"type";s:5:"email";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:6;a:5:{s:4:"name";s:9:"cellphone";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:7;a:5:{s:4:"name";s:7:"address";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:8;a:5:{s:4:"name";s:11:"ref_area_id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:9;a:5:{s:4:"name";s:11:"facebook_id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:10;a:5:{s:4:"name";s:10:"twitter_id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}}', 'a:12:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"0";}i:1;a:4:{s:4:"name";s:17:"ref_user_group_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:2;a:4:{s:4:"name";s:10:"first_name";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:3;a:4:{s:4:"name";s:9:"last_name";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:4;a:4:{s:4:"name";s:8:"username";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:5;a:4:{s:4:"name";s:8:"password";s:4:"type";s:8:"password";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:6;a:4:{s:4:"name";s:5:"email";s:4:"type";s:5:"email";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:7;a:4:{s:4:"name";s:9:"cellphone";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:8;a:4:{s:4:"name";s:7:"address";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:9;a:4:{s:4:"name";s:11:"ref_area_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:10;a:4:{s:4:"name";s:11:"facebook_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:11;a:4:{s:4:"name";s:10:"twitter_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}}'),
(5, NULL, NULL, 'add_order', 'order', 'save_add', NULL, NULL, NULL, '', 'Add Order', '<p>Add Order</p><p><br></p>', NULL, 'post', 'a:15:{i:0;a:5:{s:4:"name";s:11:"customer_id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:1;a:5:{s:4:"name";s:10:"order_date";s:4:"type";s:4:"date";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:2;a:5:{s:4:"name";s:10:"order_time";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:3;a:5:{s:4:"name";s:12:"service_date";s:4:"type";s:4:"date";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:4;a:5:{s:4:"name";s:12:"service_time";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:5;a:5:{s:4:"name";s:16:"service_location";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:6;a:5:{s:4:"name";s:8:"latitude";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:7;a:5:{s:4:"name";s:9:"longitude";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:8;a:5:{s:4:"name";s:7:"area_id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:9;a:5:{s:4:"name";s:12:"is_emergency";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:10;a:5:{s:4:"name";s:13:"license_plate";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:11;a:5:{s:4:"name";s:14:"ref_service_id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:12;a:5:{s:4:"name";s:6:"status";s:4:"type";s:6:"string";s:6:"config";s:1:"1";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:13;a:5:{s:4:"name";s:6:"method";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:14;a:5:{s:4:"name";s:14:"payment_status";s:4:"type";s:6:"string";s:6:"config";s:1:"0";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}}', 'a:16:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:1;a:4:{s:4:"name";s:11:"customer_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:2;a:4:{s:4:"name";s:10:"order_date";s:4:"type";s:4:"date";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:3;a:4:{s:4:"name";s:10:"order_time";s:4:"type";s:4:"time";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:4;a:4:{s:4:"name";s:12:"service_date";s:4:"type";s:4:"date";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:5;a:4:{s:4:"name";s:12:"service_time";s:4:"type";s:4:"time";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:6;a:4:{s:4:"name";s:16:"service_location";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:7;a:4:{s:4:"name";s:8:"latitude";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:8;a:4:{s:4:"name";s:9:"longitude";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:9;a:4:{s:4:"name";s:7:"area_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:10;a:4:{s:4:"name";s:12:"is_emergency";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:11;a:4:{s:4:"name";s:13:"license_plate";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:12;a:4:{s:4:"name";s:14:"ref_service_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:13;a:4:{s:4:"name";s:6:"status";s:4:"type";s:4:"enum";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:14;a:4:{s:4:"name";s:6:"method";s:4:"type";s:4:"enum";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:15;a:4:{s:4:"name";s:14:"payment_status";s:4:"type";s:7:"tinyint";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}}'),
(6, NULL, NULL, 'list_order', 'order', 'list', NULL, NULL, NULL, '', 'List Order', '<p>list order<br></p>', NULL, 'get', 'a:16:{i:0;a:5:{s:4:"name";s:2:"id";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:1;a:5:{s:4:"name";s:11:"customer_id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:2;a:5:{s:4:"name";s:10:"order_date";s:4:"type";s:4:"date";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:3;a:5:{s:4:"name";s:10:"order_time";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:4;a:5:{s:4:"name";s:12:"service_date";s:4:"type";s:4:"date";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:5;a:5:{s:4:"name";s:12:"service_time";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:6;a:5:{s:4:"name";s:16:"service_location";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:7;a:5:{s:4:"name";s:8:"latitude";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:8;a:5:{s:4:"name";s:9:"longitude";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:9;a:5:{s:4:"name";s:7:"area_id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:10;a:5:{s:4:"name";s:12:"is_emergency";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:11;a:5:{s:4:"name";s:13:"license_plate";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:12;a:5:{s:4:"name";s:14:"ref_service_id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:13;a:5:{s:4:"name";s:6:"status";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:14;a:5:{s:4:"name";s:6:"method";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:15;a:5:{s:4:"name";s:14:"payment_status";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}}', 'a:16:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:1;a:4:{s:4:"name";s:11:"customer_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:2;a:4:{s:4:"name";s:10:"order_date";s:4:"type";s:4:"date";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:3;a:4:{s:4:"name";s:10:"order_time";s:4:"type";s:4:"time";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:4;a:4:{s:4:"name";s:12:"service_date";s:4:"type";s:4:"date";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:5;a:4:{s:4:"name";s:12:"service_time";s:4:"type";s:4:"time";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:6;a:4:{s:4:"name";s:16:"service_location";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:7;a:4:{s:4:"name";s:8:"latitude";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:8;a:4:{s:4:"name";s:9:"longitude";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:9;a:4:{s:4:"name";s:7:"area_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:10;a:4:{s:4:"name";s:12:"is_emergency";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:11;a:4:{s:4:"name";s:13:"license_plate";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:12;a:4:{s:4:"name";s:14:"ref_service_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:13;a:4:{s:4:"name";s:6:"status";s:4:"type";s:4:"enum";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:14;a:4:{s:4:"name";s:6:"method";s:4:"type";s:4:"enum";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:15;a:4:{s:4:"name";s:14:"payment_status";s:4:"type";s:7:"tinyint";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}}'),
(7, NULL, NULL, 'update_order', 'order', 'save_edit', NULL, NULL, NULL, '', 'Update Order', '<p>Update Order<br></p>', NULL, 'post', 'a:16:{i:0;a:5:{s:4:"name";s:2:"id";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:1;a:5:{s:4:"name";s:11:"customer_id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:2;a:5:{s:4:"name";s:10:"order_date";s:4:"type";s:4:"date";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"1";}i:3;a:5:{s:4:"name";s:10:"order_time";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"1";}i:4;a:5:{s:4:"name";s:12:"service_date";s:4:"type";s:4:"date";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"1";}i:5;a:5:{s:4:"name";s:12:"service_time";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"1";}i:6;a:5:{s:4:"name";s:16:"service_location";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:7;a:5:{s:4:"name";s:8:"latitude";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:8;a:5:{s:4:"name";s:9:"longitude";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:9;a:5:{s:4:"name";s:7:"area_id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:10;a:5:{s:4:"name";s:12:"is_emergency";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:11;a:5:{s:4:"name";s:13:"license_plate";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:12;a:5:{s:4:"name";s:14:"ref_service_id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:13;a:5:{s:4:"name";s:6:"status";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"1";}i:14;a:5:{s:4:"name";s:6:"method";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:15;a:5:{s:4:"name";s:14:"payment_status";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"1";}}', 'a:16:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:1;a:4:{s:4:"name";s:11:"customer_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:2;a:4:{s:4:"name";s:10:"order_date";s:4:"type";s:4:"date";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:3;a:4:{s:4:"name";s:10:"order_time";s:4:"type";s:4:"time";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:4;a:4:{s:4:"name";s:12:"service_date";s:4:"type";s:4:"date";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:5;a:4:{s:4:"name";s:12:"service_time";s:4:"type";s:4:"time";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:6;a:4:{s:4:"name";s:16:"service_location";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:7;a:4:{s:4:"name";s:8:"latitude";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:8;a:4:{s:4:"name";s:9:"longitude";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:9;a:4:{s:4:"name";s:7:"area_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:10;a:4:{s:4:"name";s:12:"is_emergency";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:11;a:4:{s:4:"name";s:13:"license_plate";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:12;a:4:{s:4:"name";s:14:"ref_service_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:13;a:4:{s:4:"name";s:6:"status";s:4:"type";s:4:"enum";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:14;a:4:{s:4:"name";s:6:"method";s:4:"type";s:4:"enum";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:15;a:4:{s:4:"name";s:14:"payment_status";s:4:"type";s:7:"tinyint";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}}'),
(8, NULL, NULL, 'list_brand', 'ref_brand', 'list', NULL, NULL, NULL, '', 'List Brand', 'Listing Brand <br>', NULL, 'get', 'a:3:{i:0;a:5:{s:4:"name";s:2:"id";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:1;a:5:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:2;a:5:{s:4:"name";s:5:"wheel";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}}', 'a:3:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:1;a:4:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:2;a:4:{s:4:"name";s:5:"wheel";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}}'),
(9, NULL, NULL, 'list_area', 'ref_area', 'list', NULL, NULL, NULL, '', 'List Area', '<p>Listing Area<br></p>', NULL, 'get', 'a:5:{i:0;a:5:{s:4:"name";s:2:"id";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:1;a:5:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:2;a:5:{s:4:"name";s:9:"parent_id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:3;a:5:{s:4:"name";s:15:"lingkup_wilayah";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:4;a:5:{s:4:"name";s:13:"kode_mendagri";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}}', 'a:5:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:1;a:4:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:2;a:4:{s:4:"name";s:9:"parent_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:3;a:4:{s:4:"name";s:15:"lingkup_wilayah";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:4;a:4:{s:4:"name";s:13:"kode_mendagri";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}}'),
(10, NULL, NULL, 'list_vehicle_type', 'ref_vehicle_type', 'list', NULL, NULL, NULL, '', 'List Vehicle Type', '<p>Listing Vehicle Type<br></p>', NULL, 'get', 'a:7:{i:0;a:5:{s:4:"name";s:2:"id";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:1;a:5:{s:4:"name";s:5:"wheel";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:2;a:5:{s:4:"name";s:12:"ref_brand_id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:3;a:5:{s:4:"name";s:4:"type";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:4;a:5:{s:4:"name";s:4:"year";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:5;a:5:{s:4:"name";s:12:"transmission";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:6;a:5:{s:4:"name";s:4:"note";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}}', 'a:7:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:1;a:4:{s:4:"name";s:5:"wheel";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:2;a:4:{s:4:"name";s:12:"ref_brand_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:3;a:4:{s:4:"name";s:4:"type";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:4;a:4:{s:4:"name";s:4:"year";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:5;a:4:{s:4:"name";s:12:"transmission";s:4:"type";s:4:"enum";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:6;a:4:{s:4:"name";s:4:"note";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}}'),
(11, NULL, NULL, 'list_occupation', 'ref_occupation', 'list', NULL, NULL, NULL, '', 'List Occupation', '<p>Listing occupation<br></p>', NULL, 'get', 'a:2:{i:0;a:5:{s:4:"name";s:2:"id";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:1;a:5:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}}', 'a:2:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:1;a:4:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}}'),
(12, NULL, NULL, 'list_user_group', 'ref_user_group', 'list', NULL, NULL, NULL, '', 'List User Group', '<p>List User Group<br></p>', NULL, 'get', 'a:3:{i:0;a:5:{s:4:"name";s:2:"id";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:1;a:5:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:2;a:5:{s:4:"name";s:11:"description";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}}', 'a:3:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:1;a:4:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:2;a:4:{s:4:"name";s:11:"description";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}}'),
(13, NULL, NULL, 'list_user_group', 'ref_user_group', 'list', NULL, NULL, NULL, '', 'List User Group', '<p>List User Group<br></p>', NULL, 'get', 'a:3:{i:0;a:5:{s:4:"name";s:2:"id";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:1;a:5:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:2;a:5:{s:4:"name";s:11:"description";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}}', 'a:3:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:1;a:4:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:2;a:4:{s:4:"name";s:11:"description";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}}'),
(14, NULL, NULL, 'list_bengkel_type', 'ref_bengkel_type', 'list', NULL, NULL, NULL, '', 'List Bengkel Type', '<p>List Bengkel Type<br></p>', NULL, 'get', 'a:4:{i:0;a:5:{s:4:"name";s:2:"id";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:1;a:5:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:2;a:5:{s:4:"name";s:5:"wheel";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:3;a:5:{s:4:"name";s:4:"size";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}}', 'a:4:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:1;a:4:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:2;a:4:{s:4:"name";s:5:"wheel";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:3;a:4:{s:4:"name";s:4:"size";s:4:"type";s:4:"enum";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}}'),
(15, NULL, NULL, 'list_service_type', 'ref_service_type', 'list', NULL, NULL, NULL, '', 'List Service Type', '<p>Daftar Tipe Service<br></p>', NULL, 'get', 'a:6:{i:0;a:5:{s:4:"name";s:2:"id";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:1;a:5:{s:4:"name";s:5:"wheel";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:2;a:5:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:3;a:5:{s:4:"name";s:11:"description";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:4;a:5:{s:4:"name";s:8:"category";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:5;a:5:{s:4:"name";s:4:"note";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}}', 'a:6:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:1;a:4:{s:4:"name";s:5:"wheel";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:2;a:4:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:3;a:4:{s:4:"name";s:11:"description";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:4;a:4:{s:4:"name";s:8:"category";s:4:"type";s:4:"enum";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:5;a:4:{s:4:"name";s:4:"note";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}}'),
(16, NULL, NULL, 'list_spare_part', 'ref_spare_part', 'list', NULL, NULL, NULL, '', 'List Spare Part', '<p>List Spare Part<br></p>', NULL, 'get', 'a:6:{i:0;a:5:{s:4:"name";s:2:"id";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:1;a:5:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:2;a:5:{s:4:"name";s:5:"brand";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:3;a:5:{s:4:"name";s:4:"tipe";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:4;a:5:{s:4:"name";s:11:"ref_part_id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:5;a:5:{s:4:"name";s:4:"note";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}}', 'a:6:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:1;a:4:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:2;a:4:{s:4:"name";s:5:"brand";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:3;a:4:{s:4:"name";s:4:"tipe";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:4;a:4:{s:4:"name";s:11:"ref_part_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:5;a:4:{s:4:"name";s:4:"note";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}}'),
(17, NULL, NULL, 'list_bengkel', 'bengkel', 'list', NULL, NULL, NULL, '', 'List Bengkel', '<p>List Bengkel<br></p>', NULL, 'get', 'a:16:{i:0;a:5:{s:4:"name";s:2:"id";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:1;a:5:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:2;a:5:{s:4:"name";s:19:"ref_bengkel_type_id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:3;a:5:{s:4:"name";s:7:"address";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:4;a:5:{s:4:"name";s:8:"latitude";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:5;a:5:{s:4:"name";s:9:"longitude";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:6;a:5:{s:4:"name";s:11:"ref_area_id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:7;a:5:{s:4:"name";s:5:"phone";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:8;a:5:{s:4:"name";s:3:"fax";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:9;a:5:{s:4:"name";s:5:"email";s:4:"type";s:5:"email";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:10;a:5:{s:4:"name";s:18:"contact_person1_id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:11;a:5:{s:4:"name";s:18:"contact_person2_id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:12;a:5:{s:4:"name";s:8:"owner_id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:13;a:5:{s:4:"name";s:9:"max_order";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:14;a:5:{s:4:"name";s:14:"account_number";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:15;a:5:{s:4:"name";s:12:"account_name";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}}', 'a:16:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:1;a:4:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:2;a:4:{s:4:"name";s:19:"ref_bengkel_type_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:3;a:4:{s:4:"name";s:7:"address";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:4;a:4:{s:4:"name";s:8:"latitude";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:5;a:4:{s:4:"name";s:9:"longitude";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:6;a:4:{s:4:"name";s:11:"ref_area_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:7;a:4:{s:4:"name";s:5:"phone";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:8;a:4:{s:4:"name";s:3:"fax";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:9;a:4:{s:4:"name";s:5:"email";s:4:"type";s:5:"email";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:10;a:4:{s:4:"name";s:18:"contact_person1_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:11;a:4:{s:4:"name";s:18:"contact_person2_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:12;a:4:{s:4:"name";s:8:"owner_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:13;a:4:{s:4:"name";s:9:"max_order";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:14;a:4:{s:4:"name";s:14:"account_number";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:15;a:4:{s:4:"name";s:12:"account_name";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}}'),
(18, NULL, NULL, 'order', 'order', 'save_add', NULL, NULL, NULL, '', 'POST Order', '', NULL, 'post', 'a:15:{i:0;a:5:{s:4:"name";s:11:"customer_id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:1;a:5:{s:4:"name";s:10:"order_date";s:4:"type";s:4:"date";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:2;a:5:{s:4:"name";s:10:"order_time";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:3;a:5:{s:4:"name";s:12:"service_date";s:4:"type";s:4:"date";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:4;a:5:{s:4:"name";s:12:"service_time";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:5;a:5:{s:4:"name";s:16:"service_location";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:6;a:5:{s:4:"name";s:8:"latitude";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:7;a:5:{s:4:"name";s:9:"longitude";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:8;a:5:{s:4:"name";s:7:"area_id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:9;a:5:{s:4:"name";s:12:"is_emergency";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:10;a:5:{s:4:"name";s:13:"license_plate";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:11;a:5:{s:4:"name";s:14:"ref_service_id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:12;a:5:{s:4:"name";s:6:"status";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:13;a:5:{s:4:"name";s:6:"method";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:14;a:5:{s:4:"name";s:14:"payment_status";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}}', 'a:16:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:1;a:4:{s:4:"name";s:11:"customer_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:2;a:4:{s:4:"name";s:10:"order_date";s:4:"type";s:4:"date";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:3;a:4:{s:4:"name";s:10:"order_time";s:4:"type";s:4:"time";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:4;a:4:{s:4:"name";s:12:"service_date";s:4:"type";s:4:"date";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:5;a:4:{s:4:"name";s:12:"service_time";s:4:"type";s:4:"time";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:6;a:4:{s:4:"name";s:16:"service_location";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:7;a:4:{s:4:"name";s:8:"latitude";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:8;a:4:{s:4:"name";s:9:"longitude";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:9;a:4:{s:4:"name";s:7:"area_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:10;a:4:{s:4:"name";s:12:"is_emergency";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:11;a:4:{s:4:"name";s:13:"license_plate";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:12;a:4:{s:4:"name";s:14:"ref_service_id";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:13;a:4:{s:4:"name";s:6:"status";s:4:"type";s:4:"enum";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:14;a:4:{s:4:"name";s:6:"method";s:4:"type";s:4:"enum";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:15;a:4:{s:4:"name";s:14:"payment_status";s:4:"type";s:7:"tinyint";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `screetkey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_dashboard`
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
-- Struktur dari tabel `cms_email_queues`
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
-- Struktur dari tabel `cms_email_templates`
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
-- Dumping data untuk tabel `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2017-01-06 18:50:33', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_logs`
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
-- Dumping data untuk tabel `cms_logs`
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
(17, '2017-02-17 00:55:46', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost:8080/API/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_menus`
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
-- Dumping data untuk tabel `cms_menus`
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
(28, 'Bengkel', 'URL External', '#', NULL, 'fa fa-hospital-o', 0, 1, 0, 1, 10, '2017-01-08 23:25:37', NULL),
(29, 'Add New Bengkel', 'Route', 'AdminBengkelControllerGetAdd', NULL, 'fa fa-plus', 28, 1, 0, 1, 1, '2017-01-08 23:25:37', NULL),
(30, 'List Bengkel', 'Route', 'AdminBengkelControllerGetIndex', NULL, 'fa fa-bars', 28, 1, 0, 1, 2, '2017-01-08 23:25:37', NULL),
(31, 'Employee', 'URL External', '#', NULL, 'fa fa-user-md', 0, 1, 0, 1, 11, '2017-01-08 23:27:16', NULL),
(32, 'Add New Employee', 'Route', 'AdminEmployeeControllerGetAdd', NULL, 'fa fa-plus', 31, 1, 0, 1, 1, '2017-01-08 23:27:16', NULL),
(33, 'List Employee', 'Route', 'AdminEmployeeControllerGetIndex', NULL, 'fa fa-bars', 31, 1, 0, 1, 2, '2017-01-08 23:27:16', NULL),
(34, 'Customer', 'URL External', '#', NULL, 'fa fa-shopping-cart', 0, 1, 0, 1, 12, '2017-01-08 23:29:05', NULL),
(35, 'Add New Customer', 'Route', 'AdminCustomerControllerGetAdd', NULL, 'fa fa-plus', 34, 1, 0, 1, 1, '2017-01-08 23:29:05', NULL),
(36, 'List Customer', 'Route', 'AdminCustomerControllerGetIndex', NULL, 'fa fa-bars', 34, 1, 0, 1, 2, '2017-01-08 23:29:05', NULL),
(37, 'Employee Service', 'URL External', '#', NULL, 'fa fa-briefcase', 0, 1, 0, 1, 13, '2017-01-08 23:31:41', NULL),
(38, 'Add New Employee Service', 'Route', 'AdminEmployeeServiceControllerGetAdd', NULL, 'fa fa-plus', 37, 1, 0, 1, 1, '2017-01-08 23:31:41', NULL),
(39, 'List Employee Service', 'Route', 'AdminEmployeeServiceControllerGetIndex', NULL, 'fa fa-bars', 37, 1, 0, 1, 2, '2017-01-08 23:31:41', NULL),
(40, 'Order', 'URL External', '#', NULL, 'fa fa-shopping-cart', 0, 1, 0, 1, 14, '2017-01-16 20:05:40', NULL),
(41, 'Add New Order', 'Route', 'AdminOrderControllerGetAdd', NULL, 'fa fa-plus', 40, 1, 0, 1, 1, '2017-01-16 20:05:40', NULL),
(42, 'List Order', 'Route', 'AdminOrderControllerGetIndex', NULL, 'fa fa-bars', 40, 1, 0, 1, 2, '2017-01-16 20:05:40', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_moduls`
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
-- Dumping data untuk tabel `cms_moduls`
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
(21, '2017-01-08 23:25:37', NULL, 'Bengkel', 'fa fa-hospital-o', 'bengkel', 'bengkel', 'AdminBengkelController', 0, 0),
(22, '2017-01-08 23:27:15', NULL, 'Employee', 'fa fa-user-md', 'employee', 'employee', 'AdminEmployeeController', 0, 0),
(23, '2017-01-08 23:29:05', NULL, 'Customer', 'fa fa-shopping-cart', 'customer', 'customer', 'AdminCustomerController', 0, 0),
(24, '2017-01-08 23:31:40', NULL, 'Employee Service', 'fa fa-briefcase', 'employee_service', 'employee_service', 'AdminEmployeeServiceController', 0, 0),
(25, '2017-01-16 20:05:39', NULL, 'Order', 'fa fa-shopping-cart', 'order', 'order', 'AdminOrderController', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_notifications`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_privileges`
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
-- Dumping data untuk tabel `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `created_at`, `updated_at`, `name`, `is_superadmin`, `theme_color`) VALUES
(1, '2017-01-06 18:50:32', NULL, 'Super Administrator', 1, 'skin-red');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_privileges_roles`
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
-- Dumping data untuk tabel `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `created_at`, `updated_at`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`) VALUES
(1, '2017-01-06 18:50:32', NULL, 1, 0, 0, 0, 0, 1, 1),
(2, '2017-01-06 18:50:32', NULL, 1, 1, 1, 1, 1, 1, 2),
(3, '2017-01-06 18:50:32', NULL, 0, 1, 1, 1, 1, 1, 3),
(4, '2017-01-06 18:50:32', NULL, 1, 1, 1, 1, 1, 1, 4),
(5, '2017-01-06 18:50:32', NULL, 1, 1, 1, 1, 1, 1, 5),
(6, '2017-01-06 18:50:32', NULL, 1, 1, 1, 1, 1, 1, 6),
(7, '2017-01-06 18:50:32', NULL, 1, 1, 1, 1, 1, 1, 7),
(8, '2017-01-06 18:50:32', NULL, 1, 1, 1, 1, 1, 1, 8),
(9, '2017-01-06 18:50:32', NULL, 1, 1, 1, 1, 1, 1, 9),
(10, '2017-01-06 18:50:32', NULL, 1, 1, 1, 1, 1, 1, 10),
(11, '2017-01-06 18:50:32', NULL, 1, 0, 1, 0, 1, 1, 11),
(12, NULL, NULL, 1, 1, 1, 1, 1, 1, 12),
(13, NULL, NULL, 1, 1, 1, 1, 1, 1, 13),
(14, NULL, NULL, 1, 1, 1, 1, 1, 1, 14),
(15, NULL, NULL, 1, 1, 1, 1, 1, 1, 15),
(16, NULL, NULL, 1, 1, 1, 1, 1, 1, 14),
(17, NULL, NULL, 1, 1, 1, 1, 1, 1, 15),
(18, NULL, NULL, 1, 1, 1, 1, 1, 1, 16),
(19, NULL, NULL, 1, 1, 1, 1, 1, 1, 17),
(20, NULL, NULL, 1, 1, 1, 1, 1, 1, 18),
(21, NULL, NULL, 1, 1, 1, 1, 1, 1, 19),
(22, NULL, NULL, 1, 1, 1, 1, 1, 1, 20),
(23, NULL, NULL, 1, 1, 1, 1, 1, 1, 21),
(24, NULL, NULL, 1, 1, 1, 1, 1, 1, 22),
(25, NULL, NULL, 1, 1, 1, 1, 1, 1, 23),
(26, NULL, NULL, 1, 1, 1, 1, 1, 1, 24),
(27, NULL, NULL, 1, 1, 1, 1, 1, 1, 25);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_settings`
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
-- Dumping data untuk tabel `cms_settings`
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
(10, '2017-01-06 18:50:32', NULL, 'appname', 'CRUDBooster', 'text', NULL, NULL, 'Application Setting', 'Application Name'),
(11, '2017-01-06 18:50:32', NULL, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', 'Application Setting', 'Default Paper Print Size'),
(12, '2017-01-06 18:50:32', NULL, 'logo', '', 'upload_image', NULL, NULL, 'Application Setting', 'Logo'),
(13, '2017-01-06 18:50:32', NULL, 'favicon', '', 'upload_image', NULL, NULL, 'Application Setting', 'Favicon'),
(14, '2017-01-06 18:50:32', NULL, 'api_debug_mode', 'true', 'select', 'true,false', NULL, 'Application Setting', 'API Debug Mode'),
(15, '2017-01-06 18:50:32', NULL, 'google_api_key', '', 'text', NULL, NULL, 'Application Setting', 'Google API Key'),
(16, '2017-01-06 18:50:32', NULL, 'google_fcm_key', '', 'text', NULL, NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_statistic_components`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_users`
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
-- Dumping data untuk tabel `cms_users`
--

INSERT INTO `cms_users` (`id`, `created_at`, `updated_at`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `status`) VALUES
(1, '2017-01-06 18:50:32', NULL, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$l/elJjjaULKUf4hPVy4LbOcz/Zf7ECavsXcvD64uRiwR0pvzmtYyu', 1, 'Active'),
(2, '2017-01-08 13:18:51', NULL, 'Ihsan Faturohman', 'uploads/2017-01/e861affe573613bf68937764563738e5.jpg', 'ihsan.seeking@gmail.com', '$2y$10$fxSjELsG21r5b0kzvCSdye8bQc6FMU8k7e3NPW0UB1zuIAuWgHg6O', 1, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cellphone` varchar(20) NOT NULL,
  `address` text,
  `ref_occupation_id` int(11) NOT NULL,
  `latitude` varchar(30) NOT NULL,
  `longitude` varchar(30) NOT NULL,
  `ref_area_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `cellphone`, `address`, `ref_occupation_id`, `latitude`, `longitude`, `ref_area_id`, `user_id`) VALUES
(1, 'Bowo', '', '8149119110', 'Jl. Malioboro No. 52', 1, '-7.7931221', '110.3660614', 47619, 2),
(2, 'Nowo', 'Now@gmail.com', '8149119110', 'Jl. Malioboro No. 52', 1, '-7.7931221', '110.3660614', 47619, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee`
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
-- Dumping data untuk tabel `employee`
--

INSERT INTO `employee` (`id`, `bengkel_id`, `first_name`, `last_name`, `nik`, `cellphone`, `email`, `address`, `ref_area_id`, `ref_service_type_id`, `image_id`, `note`) VALUES
(1, 1, 'didit', 'nini', '3273151708880000', '81522216789', '', 'jln.mangkubumi 45', 47619, 1, 'didit_nini.jpg', 'tidak menerima pekerjaan di weekend dan hari libur');

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_service`
--

CREATE TABLE `employee_service` (
  `id` int(11) NOT NULL,
  `ref_service_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `employee_service`
--

INSERT INTO `employee_service` (`id`, `ref_service_type_id`) VALUES
(1, 2),
(1, 3),
(1, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `log`
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
-- Dumping data untuk tabel `log`
--

INSERT INTO `log` (`id`, `user_id`, `ip_address`, `access_type`, `date`, `start`, `finish`) VALUES
(1, 1, '222,124,121,230', '1', '0000-00-00', '13:00:00', '13:15:00'),
(2, 1, '222,124,121,230', '1', '0000-00-00', '15:00:00', '15:15:00'),
(3, 1, '118.96.195.145', '2', '0000-00-00', '17:13:00', '19:15:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
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
-- Struktur dari tabel `order`
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
-- Dumping data untuk tabel `order`
--

INSERT INTO `order` (`id`, `customer_id`, `order_date`, `order_time`, `service_date`, `service_time`, `service_location`, `latitude`, `longitude`, `area_id`, `is_emergency`, `license_plate`, `ref_service_id`, `status`, `method`, `payment_status`) VALUES
(1, 1, '0000-00-00', '13:14:00', '0000-00-00', '14:00:00', 'Jl. Malioboro No. 52', '-7.7931221', '110.3660614', 47619, '0', 'AB100CA', 5, '2', '3', 1),
(2, 1, NULL, NULL, NULL, NULL, 'Jl. Malioboro No. 52', '-7.7931221', '110.3660614', 47619, '0', 'AB100CA', 5, '1', '3', NULL),
(3, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(4, 1, '2017-02-17', '15:01:26', '2003-02-01', '00:00:00', 'Place: -7.791847500000011,110.36580078124999 \nAlamat: Jl. Sosrowijayan No.13, Sosromenduran, Gedong Tengen, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55271, Indonesia \n', '-7.791847500000011', '110.36580078124999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(5, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(6, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(7, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(8, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(9, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(10, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(11, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(12, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(13, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(14, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(15, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(16, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(17, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(18, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(19, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(20, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(21, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(22, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(23, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(24, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(25, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(26, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(27, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(28, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(29, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(30, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(31, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(32, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(33, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(34, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(35, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(36, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(37, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(38, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(39, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(40, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(41, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(42, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(43, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(44, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(45, 1, '2017-02-17', '17:32:52', '2003-02-01', '00:00:00', 'Place: -7.791192635281013,110.36597365513444 \nAlamat: null \n', '-7.791192635281013', '110.36597365513444', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(46, 1, '2017-02-17', '17:33:42', '2003-02-01', '00:00:00', 'Place: -7.7914974999999975,110.36593359374999 \nAlamat: Jl. Malioboro No.56, Sosromenduran, Gedong Tengen, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55271, Indonesia \n', '-7.7914974999999975', '110.36593359374999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(47, 1, '2017-02-17', '17:33:45', '2003-02-01', '00:00:00', 'Place: -7.7914974999999975,110.36593359374999 \nAlamat: Jl. Malioboro No.56, Sosromenduran, Gedong Tengen, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55271, Indonesia \n', '-7.7914974999999975', '110.36593359374999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(48, 1, '2017-02-17', '17:33:47', '2003-02-01', '00:00:00', 'Place: -7.7914974999999975,110.36593359374999 \nAlamat: Jl. Malioboro No.56, Sosromenduran, Gedong Tengen, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55271, Indonesia \n', '-7.7914974999999975', '110.36593359374999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(49, 1, '2017-02-17', '17:33:49', '2003-02-01', '00:00:00', 'Place: -7.7914974999999975,110.36593359374999 \nAlamat: Jl. Malioboro No.56, Sosromenduran, Gedong Tengen, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55271, Indonesia \n', '-7.7914974999999975', '110.36593359374999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(50, 1, '2017-02-17', '17:34:48', '2003-02-01', '00:00:00', 'Place: -7.7914974999999975,110.36593359374999 \nAlamat: Jl. Malioboro No.56, Sosromenduran, Gedong Tengen, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55271, Indonesia \n', '-7.7914974999999975', '110.36593359374999', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(51, 1, '2017-02-17', '17:37:31', '2003-02-01', '00:00:00', 'Place: -7.791547500000014,110.36590234374998 \nAlamat: Jl. Malioboro No.149, Sosromenduran, Gedong Tengen, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55271, Indonesia \n', '-7.791547500000014', '110.36590234374998', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(52, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(53, 1, '2017-02-17', '17:40:57', '2003-02-01', '00:00:00', 'Place: -7.791547500000014,110.36590234374998 \nAlamat: Jl. Malioboro No.149, Sosromenduran, Gedong Tengen, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55271, Indonesia \n', '-7.791547500000014', '110.36590234374998', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(54, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(55, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(56, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(57, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(58, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(59, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(60, 1, '2017-02-17', '18:00:28', '2003-02-01', '00:00:00', 'Place: -7.791087500000011,110.36602734374996 \nAlamat: Jl. Malioboro No.60, Sosromenduran, Gedong Tengen, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55271, Indonesia \n', '-7.791087500000011', '110.36602734374996', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(61, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(62, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(63, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(64, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(65, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(66, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(67, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(68, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(69, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(70, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(71, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(72, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(73, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(74, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(75, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(76, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(77, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(78, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(79, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(80, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(81, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(82, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(83, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(84, 1, '2017-02-17', '18:29:00', '2003-02-01', '00:00:00', 'Place: -7.7878874999999885,110.37296484375 \nAlamat: Jl. Abu Bakar Ali No.3, Kotabaru, Gondokusuman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55224, Indonesia \n', '-7.7878874999999885', '110.37296484375', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(85, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(86, 1, '2017-02-17', '18:30:53', '2003-02-01', '00:00:00', 'Place: -7.791032500000007,110.36595703125002 \nAlamat: Jl. Malioboro No.161, 001, Sosromenduran, Gedong Tengen, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55271, Indonesia \n', '-7.791032500000007', '110.36595703125002', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(87, 2, '2017-02-17', '18:31:14', '2003-02-01', '00:00:00', '123456', '123456', '123456', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(88, 2, '2017-02-17', '18:31:18', '2003-02-01', '00:00:00', '123456', '123456', '123456', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(89, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(90, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(91, 1, '2017-02-17', '18:34:16', '2003-02-01', '00:00:00', 'Place: -7.787952499999996,110.37298828125003 \nAlamat: Jl. Abu Bakar Ali No.22, Kotabaru, Gondokusuman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55224, Indonesia \n', '-7.787952499999996', '110.37298828125003', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(92, 2, '2017-02-17', '18:34:56', '2003-02-01', '00:00:00', '123456', '123456', '123456', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(93, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(94, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(95, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(96, 1, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(97, 1, '2017-02-20', '17:49:09', '2003-02-01', '00:00:00', 'Alamat belum dipilih', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(98, 1, '2017-02-20', '17:51:14', '2003-02-01', '00:00:00', 'Alamat belum dipilih', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(99, 1, '2017-02-20', '17:51:39', '2003-02-01', '00:00:00', 'Alamat belum dipilih', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(100, 1, '2017-02-20', '17:53:28', '2003-02-01', '00:00:00', 'Alamat belum dipilih', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(101, 1, '2017-02-20', '17:56:26', '2003-02-01', '00:00:00', 'Alamat belum dipilih', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(102, 2, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(103, 2, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(104, 2, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(105, 2, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(106, 2, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(107, 2, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(108, 2, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(109, 2, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(110, 2, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(111, 2, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(112, 2, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(113, 2, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(114, 2, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(115, 2, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(116, 1, '2017-02-20', '18:02:10', '2003-02-01', '00:00:00', 'Alamat belum dipilih', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(117, 1, '2017-02-20', '18:02:54', '2003-02-01', '00:00:00', 'Alamat belum dipilih', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(118, 1, '2017-02-20', '18:03:42', '2003-02-01', '00:00:00', 'Alamat belum dipilih', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(119, 2, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(120, 2, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(121, 2, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(122, 2, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(123, 2, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(124, 2, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(125, 2, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(126, 2, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(127, 2, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(128, 2, '2016-06-06', '11:11:11', '2016-06-06', '11:11:11', 'jalan malboro', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(129, 1, '2017-02-20', '18:43:48', '2003-02-01', '00:00:00', 'Alamat belum dipilih', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(130, 1, '2017-02-20', '18:46:23', '2003-02-01', '00:00:00', 'Alamat belum dipilih', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1),
(131, 1, '2017-02-20', '18:47:28', '2003-02-01', '00:00:00', 'Alamat belum dipilih', '6', '6', 14, 'false', 'AB100CA', 1, '1', '3', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment`
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

--
-- Dumping data untuk tabel `payment`
--

INSERT INTO `payment` (`id`, `date`, `time`, `payment_date`, `payment_time`, `order_id`, `receipt_id`, `status`, `payment_account`, `payment_account_name`) VALUES
(1, '0000-00-00', '13:15:00', '0000-00-00', '13:15:00', 1, 'bukti_1.jpg', 1, '178 303 7878', 'Bowo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_area`
--

CREATE TABLE `ref_area` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lingkup_wilayah` varchar(50) NOT NULL,
  `kode_mendagri` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ref_area`
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
-- Struktur dari tabel `ref_bengkel_type`
--

CREATE TABLE `ref_bengkel_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `wheel` int(11) DEFAULT NULL,
  `size` enum('1','2','3') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ref_bengkel_type`
--

INSERT INTO `ref_bengkel_type` (`id`, `name`, `wheel`, `size`) VALUES
(1, 'bengkel motor kecil', 2, '1'),
(2, 'bengkel motor besar', 2, '3'),
(3, 'bengkel motor-mobil spesifik', 5, '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_brand`
--

CREATE TABLE `ref_brand` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `wheel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ref_brand`
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
-- Struktur dari tabel `ref_occupation`
--

CREATE TABLE `ref_occupation` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ref_occupation`
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
-- Struktur dari tabel `ref_service_type`
--

CREATE TABLE `ref_service_type` (
  `id` int(11) NOT NULL,
  `wheel` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text,
  `category` enum('1','2','3') DEFAULT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ref_service_type`
--

INSERT INTO `ref_service_type` (`id`, `wheel`, `name`, `description`, `category`, `note`) VALUES
(1, 4, 'Ganti aki', NULL, '3', NULL),
(2, 4, 'Cuci body', NULL, '2', NULL),
(3, 4, 'Vacuum interior', NULL, '2', NULL),
(4, 4, 'Salon', NULL, '2', NULL),
(5, 2, 'Cuci motor', NULL, '2', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_spare_part`
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
-- Dumping data untuk tabel `ref_spare_part`
--

INSERT INTO `ref_spare_part` (`id`, `name`, `brand`, `tipe`, `ref_part_id`, `note`) VALUES
(1, 'YTZ6V-DRY', 'Yuasa', 'YTZ6V-DRY', 1, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_user_group`
--

CREATE TABLE `ref_user_group` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ref_user_group`
--

INSERT INTO `ref_user_group` (`id`, `name`, `description`) VALUES
(1, 'member', 'Customer yang mencatat datanya untuk kemudahan pemesanan selanjutnya'),
(2, 'Operator Bengkel', 'PIC bengkel yang mengelola pemesanan dan pembayaran'),
(3, 'Administrator', 'Operator AIS Aki'),
(4, 'Super_administrator', 'User level tertinggi , bisa menambah dan mengelola user'),
(5, 'Owner bengkel', 'Pemilik bengkel');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_vehicle_type`
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
-- Dumping data untuk tabel `ref_vehicle_type`
--

INSERT INTO `ref_vehicle_type` (`id`, `wheel`, `ref_brand_id`, `type`, `year`, `transmission`, `note`) VALUES
(1, 2, 12, 'Varion 125', '2012', '1', 'matic'),
(2, 2, 1, 'cbr 250', '2016', '2', 'manual'),
(3, 4, 1, 'jazz', '2007', '1', NULL),
(4, 4, 2, 'avanza', '2010', '2', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `service`
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
-- Dumping data untuk tabel `service`
--

INSERT INTO `service` (`id`, `bengkel_id`, `ref_service_id`, `price`, `duration_min`, `duration_max`, `note`) VALUES
(1, 1, 5, 25000, 30, 60, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `spare_part`
--

CREATE TABLE `spare_part` (
  `id` int(11) NOT NULL,
  `bengkel_id` int(11) NOT NULL,
  `ref_spare_part_id` int(11) NOT NULL,
  `avaibility` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `spare_part`
--

INSERT INTO `spare_part` (`id`, `bengkel_id`, `ref_spare_part_id`, `avaibility`, `price`) VALUES
(1, 1, 1, 50, 460000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
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

--
-- Dumping data untuk tabel `transaction`
--

INSERT INTO `transaction` (`id`, `bengkel_id`, `type`, `payment_id`, `date`, `time`, `nominal`, `method`, `user_id`) VALUES
(1, 1, '1', 1, '0000-00-00', '19:30:00', '30,000', '1', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
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
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `ref_user_group_id`, `first_name`, `last_name`, `username`, `password`, `email`, `cellphone`, `address`, `ref_area_id`, `facebook_id`, `twitter_id`) VALUES
(1, 5, 'Nurhidatanto', 'Saja', 'caknur', 'c4knurj09j4', 'caknur_yk@gmail.com', '8159119110', 'Jln.Wonosari KM.1 No.9', 47619, 'caknur.yk', 'caknuryk'),
(2, 1, 'Bowo', 'Godean', 'bowogod', 'djogjaku', 'bowo_godean@gmail.com', '8149119110', 'Jl. Malioboro No. 52', 47620, 'bowo.god', 'bowogod'),
(3, 3, 'Operator', 'Satu', 'operator1', '4dm1r4l', 'jahaku@gmail.com', '8149119110', 'Jln.Godean 1', 47621, 'admiral1', 'admiral1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Struktur dari tabel `vehicle`
--

CREATE TABLE `vehicle` (
  `license_plate` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ref_vehicle_type_id` int(11) NOT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `vehicle`
--

INSERT INTO `vehicle` (`license_plate`, `user_id`, `ref_vehicle_type_id`, `note`) VALUES
('AB100CA', 2, 1, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `work`
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
-- Dumping data untuk tabel `work`
--

INSERT INTO `work` (`id`, `order_id`, `bengkel_id`, `employee_id`, `work_start`, `work_finish`, `is_satisfied`, `rating`, `review`, `note`, `image_id`) VALUES
(1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 4, 'Pekerjaan cukup bagus dan cepat. Cuma agak jorok', 'mohon pekerja selalu bawa lap', 'order_1.jpg');

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
  ADD KEY `owner_id` (`owner_id`);

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
  ADD KEY `ref_area_id` (`ref_area_id`),
  ADD KEY `user_id` (`user_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bengkel`
--
ALTER TABLE `bengkel`
  ADD CONSTRAINT `bengkel_ibfk_1` FOREIGN KEY (`ref_bengkel_type_id`) REFERENCES `ref_bengkel_type` (`id`),
  ADD CONSTRAINT `bengkel_ibfk_2` FOREIGN KEY (`ref_area_id`) REFERENCES `ref_area` (`id`),
  ADD CONSTRAINT `bengkel_ibfk_3` FOREIGN KEY (`contact_person1_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `bengkel_ibfk_4` FOREIGN KEY (`contact_person2_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `bengkel_ibfk_5` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`ref_occupation_id`) REFERENCES `ref_occupation` (`id`),
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`ref_area_id`) REFERENCES `ref_area` (`id`),
  ADD CONSTRAINT `customer_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`bengkel_id`) REFERENCES `bengkel` (`id`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`ref_area_id`) REFERENCES `ref_area` (`id`),
  ADD CONSTRAINT `employee_ibfk_3` FOREIGN KEY (`ref_service_type_id`) REFERENCES `ref_service_type` (`id`);

--
-- Ketidakleluasaan untuk tabel `employee_service`
--
ALTER TABLE `employee_service`
  ADD CONSTRAINT `employee_service_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `employee_service_ibfk_2` FOREIGN KEY (`ref_service_type_id`) REFERENCES `ref_service_type` (`id`);

--
-- Ketidakleluasaan untuk tabel `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`area_id`) REFERENCES `ref_area` (`id`),
  ADD CONSTRAINT `order_ibfk_3` FOREIGN KEY (`license_plate`) REFERENCES `vehicle` (`license_plate`),
  ADD CONSTRAINT `order_ibfk_4` FOREIGN KEY (`ref_service_id`) REFERENCES `ref_service_type` (`id`);

--
-- Ketidakleluasaan untuk tabel `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`);

--
-- Ketidakleluasaan untuk tabel `ref_area`
--
ALTER TABLE `ref_area`
  ADD CONSTRAINT `ref_area_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `ref_area` (`id`);

--
-- Ketidakleluasaan untuk tabel `ref_vehicle_type`
--
ALTER TABLE `ref_vehicle_type`
  ADD CONSTRAINT `ref_vehicle_type_ibfk_1` FOREIGN KEY (`ref_brand_id`) REFERENCES `ref_brand` (`id`);

--
-- Ketidakleluasaan untuk tabel `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`bengkel_id`) REFERENCES `bengkel` (`id`),
  ADD CONSTRAINT `service_ibfk_2` FOREIGN KEY (`ref_service_id`) REFERENCES `ref_service_type` (`id`);

--
-- Ketidakleluasaan untuk tabel `spare_part`
--
ALTER TABLE `spare_part`
  ADD CONSTRAINT `spare_part_ibfk_1` FOREIGN KEY (`bengkel_id`) REFERENCES `bengkel` (`id`),
  ADD CONSTRAINT `spare_part_ibfk_2` FOREIGN KEY (`ref_spare_part_id`) REFERENCES `ref_spare_part` (`id`);

--
-- Ketidakleluasaan untuk tabel `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`bengkel_id`) REFERENCES `bengkel` (`id`),
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`),
  ADD CONSTRAINT `transaction_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`ref_user_group_id`) REFERENCES `ref_user_group` (`id`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`ref_area_id`) REFERENCES `ref_area` (`id`);

--
-- Ketidakleluasaan untuk tabel `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `vehicle_ibfk_2` FOREIGN KEY (`ref_vehicle_type_id`) REFERENCES `ref_vehicle_type` (`id`);

--
-- Ketidakleluasaan untuk tabel `work`
--
ALTER TABLE `work`
  ADD CONSTRAINT `work_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `work_ibfk_2` FOREIGN KEY (`bengkel_id`) REFERENCES `bengkel` (`id`),
  ADD CONSTRAINT `work_ibfk_3` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
