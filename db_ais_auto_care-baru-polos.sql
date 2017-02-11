-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 24 Okt 2016 pada 15.39
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ais_auto_care`
--
DROP DATABASE IF EXISTS db_ais_autocare;
CREATE DATABASE IF NOT EXISTS db_ais_autocare;
USE db_ais_autocare;

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cellphone` varchar(20) NOT NULL,
  `address` text DEFAULT NULL,
  `ref_occupation_id` int(11) NOT NULL,
  `latitude` varchar(30) NOT NULL,
  `longitude` varchar(30) NOT NULL,
  `ref_area_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `address` text DEFAULT NULL,
  `ref_area_id` int(11) DEFAULT NULL,
  `facebook_id` varchar(30) DEFAULT NULL,
  `twitter_id` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
--
-- Struktur dari tabel `employee_service`
--

CREATE TABLE `employee_service` (
  `id` int(11) NOT NULL,
  `ref_service_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `vehicle`
--

CREATE TABLE `vehicle` (
  `license_plate` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ref_vehicle_type_id` int(11) NOT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_date`  date NOT NULL,
  `order_time`  time NOT NULL,
  `service_date` date NOT NULL,
  `service_time`  time NOT NULL,
  `service_location` text DEFAULT NULL,
  `latitude` varchar(30) NOT NULL,
  `longitude` varchar(30) NOT NULL,
  `area_id` int(11) NOT NULL,
  `is_emergency` varchar(30) DEFAULT NULL,
  `license_plate` varchar(20) NOT NULL,
  `ref_service_id` int(11) NOT NULL,
  `status` enum(
				'1', -- 'belum diassign',
				'2', -- 'sudah diassign',
				'3', -- 'otw',
				'4', -- 'sdg dikerjakan',
				'5' -- 'sudah selesai'
				) NOT NULL,
  `method` enum(
				'1', -- 'Kartu kredit',
				'2', -- 'Transfer ATM',
				'3', -- 'SMS/Internet Banking',
				'4', -- 'Sektor tunai',
				'5' -- 'Bayar di tempat'
				) NOT NULL,
  `payment_status` BOOLEAN DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `work`
--

CREATE TABLE `work` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `bengkel_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `work_start`  datetime DEFAULT NULL,
  `work_finish`  datetime DEFAULT NULL,
  `is_satisfied` enum(
				'0', -- 'no',
				'1' -- 'yes'
				) DEFAULT NULL,
  `rating` smallint DEFAULT NULL,
  `review` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `image_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `status` BOOLEAN DEFAULT NULL,
  `payment_account` varchar(40) NOT NULL,
  `payment_account_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `bengkel_id` int(11) NOT NULL,
  `type` enum(
				'1', -- 'Utang',
				'2' -- 'Piutang'
				) DEFAULT NULL,
  `payment_id` int(11) NOT NULL,
  `date`  date DEFAULT NULL,
  `time`  time DEFAULT NULL,
  `nominal` varchar(30) NOT NULL,
  `method` enum(
				'1', -- 'Transfer ATM',
				'2', -- 'SMS/Internet banking',
				'3', -- 'Setor tunai',
				'4' -- 'Tunai'
				) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(40) NOT NULL,
  `access_type`enum(
				'1', -- 'PC',
				'2' -- 'mobile'
				) NOT NULL,
  `date`  date DEFAULT NULL,				
  `start` time DEFAULT NULL,
  `finish` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `transmission` enum(
				'1', -- 'manual',
				'2' -- 'automatic'
				) DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_brand`
--

CREATE TABLE `ref_brand` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `wheel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_occupation`
--

CREATE TABLE `ref_occupation` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_service_type`
--

CREATE TABLE `ref_service_type` (
  `id` int(11) NOT NULL,
  `wheel` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `category` enum(
				'1', -- 'perbaikan',
				'2', -- 'perawatan',
				'3' -- 'emergency'
				) DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_user_group`
--

CREATE TABLE `ref_user_group` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_bengkel_type`
--

CREATE TABLE `ref_bengkel_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `wheel` int(11) DEFAULT NULL,
  `size` enum(
				'1', -- 'kecil',
				'2', -- 'menengah',
				'3' -- 'besar'
				) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_area`
--

CREATE TABLE `ref_area` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `lingkup_wilayah` varchar(50) NOT NULL,  
  `kode_mendagri` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

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
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ref_occupation_id` (`ref_occupation_id`),
  ADD KEY `ref_area_id` (`ref_area_id`),
  ADD KEY `user_id` (`user_id`);
 
--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ref_user_group_id` (`ref_user_group_id`),
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
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`license_plate`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `ref_vehicle_type_id` (`ref_vehicle_type_id`);
 
--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `area_id` (`area_id`),
  ADD KEY `license_plate` (`license_plate`),
  ADD KEY `ref_service_id` (`ref_service_id`) ;
  
--
-- Indexes for table `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `bengkel_id` (`bengkel_id`),
  ADD KEY `employee_id` (`employee_id`);
 
--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);
 
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
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);
 
--
-- Indexes for table `ref_vehicle_type`
--
ALTER TABLE `ref_vehicle_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ref_brand_id` (`ref_brand_id`);
 
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
-- Indexes for table `ref_spare_part`
--
ALTER TABLE `ref_spare_part`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ref_part_id` (`ref_part_id`);
 
--
-- Indexes for table `ref_service_type`
--
ALTER TABLE `ref_service_type`
  ADD PRIMARY KEY (`id`);
 
--
-- Indexes for table `ref_user_group`
--
ALTER TABLE `ref_user_group`
  ADD PRIMARY KEY (`id`);
 
--
-- Indexes for table `ref_bengkel_type`
--
ALTER TABLE `ref_bengkel_type`
  ADD PRIMARY KEY (`id`);
 
--
-- Indexes for table `ref_area`
--
ALTER TABLE `ref_area`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`);
 
--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bengkel`
--
ALTER TABLE `bengkel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee_service`
--
-- ALTER TABLE `employee_service`
--  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vehicle`
--
-- ALTER TABLE `vehicle`
--  MODIFY `license_plate` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `work`
--
ALTER TABLE `work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spart_part`
--
ALTER TABLE `spare_part`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ref_vehicle_type`
--
ALTER TABLE `ref_vehicle_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ref_brand`
--
ALTER TABLE `ref_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ref_occupation`
--
ALTER TABLE `ref_occupation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
--
-- AUTO_INCREMENT for table `ref_spare_part`
--
ALTER TABLE `ref_spare_part`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ref_service_type`
--
ALTER TABLE `ref_service_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ref_user_group`
--
ALTER TABLE `ref_user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ref_bengkel_type`
--
ALTER TABLE `ref_bengkel_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ref_area`
--
-- ALTER TABLE `ref_area`
--  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
  
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bengkel`
--
ALTER TABLE `bengkel`
  ADD CONSTRAINT `bengkel_ibfk_1` FOREIGN KEY (`ref_bengkel_type_id`) REFERENCES `ref_bengkel_type` (`id`),
  ADD CONSTRAINT `bengkel_ibfk_2` FOREIGN KEY (`ref_area_id`) REFERENCES `ref_area`(`id`),
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
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`ref_user_group_id`) REFERENCES `ref_user_group` (`id`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`ref_area_id`) REFERENCES `ref_area` (`id`);

--
-- Ketidakleluasaan untuk tabel `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`bengkel_id`) REFERENCES `bengkel` (`id`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`ref_area_id`) REFERENCES `ref_area` (`id`),
  ADD CONSTRAINT `employee_ibfk_3` FOREIGN KEY (`ref_service_type_id`) REFERENCES `ref_service_type` (`id`);
--  ADD CONSTRAINT `employee_ibfk_4` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`);

--
-- Ketidakleluasaan untuk tabel `employee_service`
--
ALTER TABLE `employee_service`
  ADD CONSTRAINT `employee_service_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `employee_service_ibfk_2` FOREIGN KEY (`ref_service_type_id`) REFERENCES `ref_service_type` (`id`);

--
-- Ketidakleluasaan untuk tabel `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `vehicle_ibfk_2` FOREIGN KEY (`ref_vehicle_type_id`) REFERENCES `ref_vehicle_type` (`id`);

--
-- Ketidakleluasaan untuk tabel `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`area_id`) REFERENCES `ref_area` (`id`),
  ADD CONSTRAINT `order_ibfk_3` FOREIGN KEY (`license_plate`) REFERENCES `vehicle` (`license_plate`),
  ADD CONSTRAINT `order_ibfk_4` FOREIGN KEY (`ref_service_id`) REFERENCES `ref_service_type` (`id`);
                                                           --
-- Ketidakleluasaan untuk tabel `work`
--
ALTER TABLE `work`
  ADD CONSTRAINT `work_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `work_ibfk_2` FOREIGN KEY (`bengkel_id`) REFERENCES `bengkel` (`id`),
  ADD CONSTRAINT `work_ibfk_3` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`);

--
-- Ketidakleluasaan untuk tabel `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`);
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
-- Ketidakleluasaan untuk tabel `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
     
--
-- Ketidakleluasaan untuk tabel `ref_vehicle_type`
--
ALTER TABLE `ref_vehicle_type`
  ADD CONSTRAINT `ref_vehicle_type_ibfk_1` FOREIGN KEY (`ref_brand_id`) REFERENCES `ref_brand` (`id`);

--
-- Ketidakleluasaan untuk tabel `ref_brand`
--
-- ALTER TABLE `ref_brand`;

--
-- Ketidakleluasaan untuk tabel `ref_occupation`
--
-- ALTER TABLE `ref_occupation`;

--
-- Ketidakleluasaan untuk tabel `ref_spare_part`
--
-- ALTER TABLE `ref_spare_part`;
--  ADD CONSTRAINT `ref_spare_part_ibfk_1` FOREIGN KEY (`ref_part_id`) REFERENCES `ref_part` (`id`);

--
-- Ketidakleluasaan untuk tabel `ref_service_type`
--
-- ALTER TABLE `ref_service_type`;

--
-- Ketidakleluasaan untuk tabel `ref_user_group`
--
-- ALTER TABLE `ref_user_group`;

--
-- Ketidakleluasaan untuk tabel `ref_bengkel_type`
--
-- ALTER TABLE `ref_bengkel_type`;

--
-- Ketidakleluasaan untuk tabel `ref_area`
--
ALTER TABLE `ref_area`
  ADD CONSTRAINT `ref_area_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `ref_area` (`id`);
    
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
