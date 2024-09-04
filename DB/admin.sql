-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2023 at 02:03 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `a_login`
--

CREATE TABLE `a_login` (
  `a_id` int(10) NOT NULL,
  `a_username` varchar(100) NOT NULL,
  `a_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `a_login`
--

INSERT INTO `a_login` (`a_id`, `a_username`, `a_password`) VALUES
(1, 'admin', 'admin'),
(2, 'dharmik', '2684');

-- --------------------------------------------------------

--
-- Table structure for table `u_comman_doc`
--

CREATE TABLE `u_comman_doc` (
  `u_id` int(255) NOT NULL,
  `u_photo` varchar(1000) NOT NULL,
  `u_aadharcard` varchar(1000) NOT NULL,
  `u_electricitybill` varchar(1000) NOT NULL,
  `u_signature` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `u_comman_doc`
--

INSERT INTO `u_comman_doc` (`u_id`, `u_photo`, `u_aadharcard`, `u_electricitybill`, `u_signature`) VALUES
(1, 'uploads/173056-docscanner-5-may-2023-3-43-pm.pdf', 'uploads/427062-dharmik-adhar-card.pdf', 'uploads/811686-guidelines-to-select-in-person-or-absentia-(12th-convocation)-extension-of-last-date-03-01-2023_972739.pdf', 'uploads/344672-sign.pdf'),
(2, 'uploads/137245-my-photo.pdf', 'uploads/682829-eaadhaar_0648133050624220230120115101_180220238527.pdf', 'uploads/65668-electricity-bill.pdf', 'uploads/572829-my-signature.pdf'),
(13, 'uploads/421452-my-photo.pdf', 'uploads/516169-eaadhaar_0648133050624220230120115101_180220238527.pdf', 'uploads/609964-electricity-bill.pdf', 'uploads/689879-my-signature.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `u_c_doc`
--

CREATE TABLE `u_c_doc` (
  `u_id` int(255) NOT NULL,
  `u_c_isseniorcitizen` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `u_detail`
--

CREATE TABLE `u_detail` (
  `u_id` int(10) NOT NULL,
  `u_username` varchar(100) NOT NULL,
  `u_password` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `u_firstname` varchar(1000) NOT NULL,
  `u_lastname` varchar(1000) NOT NULL,
  `u_phonenumber` varchar(1000) NOT NULL,
  `u_email` varchar(1000) NOT NULL,
  `u_gender` varchar(1000) NOT NULL,
  `u_dob` varchar(1000) NOT NULL,
  `u_city` varchar(1000) NOT NULL,
  `u_address` varchar(1000) NOT NULL,
  `u_landmark` varchar(1000) NOT NULL,
  `u_pin` varchar(1000) NOT NULL,
  `u_category` varchar(1000) NOT NULL,
  `u_doc_success` int(10) NOT NULL DEFAULT 0,
  `u_doc_status` int(10) DEFAULT 0,
  `remark` varchar(1000) DEFAULT '0',
  `u_timeslotdate` date DEFAULT '1000-01-01',
  `u_timeslottime` varchar(1000) DEFAULT '0',
  `u_slot_success` int(11) NOT NULL DEFAULT 0,
  `eligible` int(100) DEFAULT 0,
  `v_remark` varchar(1000) DEFAULT '0',
  `u_create` int(100) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `u_detail`
--

INSERT INTO `u_detail` (`u_id`, `u_username`, `u_password`, `status`, `u_firstname`, `u_lastname`, `u_phonenumber`, `u_email`, `u_gender`, `u_dob`, `u_city`, `u_address`, `u_landmark`, `u_pin`, `u_category`, `u_doc_success`, `u_doc_status`, `remark`, `u_timeslotdate`, `u_timeslottime`, `u_slot_success`, `eligible`, `v_remark`, `u_create`) VALUES
(1, 'dharmikpatel', '42ec33085930a805876603301314f796', 1, 'Dharmik', 'Patel', '9104287985', 'dharmikpatel262008@gmail.com', 'Male', '2004 AUG 26', 'Surat', 'A-401 shaligram height', 'atlanta', '359577', 'Student', 1, 0, '0', '1000-01-01', '0', 0, 0, '0', 0),
(2, 'jash', '152f357c3a5f035d553ca050a5d0efa4', 1, 'Jash', 'Pastagia', '9427220790', 'jash@gmail.com', 'Male', '2002 SEP 16', 'Surat', '45 karanpark banglow', 'dmart', '395009', 'Student', 1, 0, '0', '1000-01-01', '0', 0, 0, '0', 0),
(3, 'vishnu', '1963fd70e789022f6f5b11498f992404', 1, 'Vishnu', 'Burkhawala', '7265898005', 'vishnu@gmail.com', 'Male', '2011 MAY 5', 'Surat', 'welcome pan shopping center', 'welocme', '205498', 'Senior Citizen', 0, 0, '0', '1000-01-01', '0', 0, 0, '0', 0),
(4, 'rutik', 'a78badd0348e723a7e9d0f5f0d356bc6', 1, 'Rutik', 'Dobariya', '9979004452', 'rutik@gmail.com', 'Male', '2004 MAR 1', 'Surat', 'Kiran park surat', 'kamrej', '432574', 'Handicap', 0, 0, '0', '1000-01-01', '0', 0, 0, '0', 0),
(5, 'pujan', '5077df3672ca60868b6536d0eea62d1e', 1, 'Pujan', 'Mewavala', '9825111616', 'pujan@gmail.com', 'Male', '2004 MAR 8', 'Surat', 'Shivarpanan Residency', 'D-mart', '987665', 'Student', 0, 0, '0', '1000-01-01', '0', 0, 0, '0', 0),
(6, 'jenil', 'd4078b033cf97554e62a42223129939c', 1, 'jenil', 'Gadhiya', '9825146267', 'jenil@gmail.com', 'Male', '2004 MAY 10', 'Surat', 'marvela residency', 'Bodystome gym', '536925', 'Citizen', 0, 0, '0', '1000-01-01', '0', 0, 0, '0', 0),
(7, 'kishan', 'b1634c02812896b87fff3d56f89e36af', 1, 'Kishan', 'Talabiya', '6356870629', 'kishan@gmail.com', 'Male', '2004 AUG 2', 'Surat', '401 mota varacha', 'Ram or shyam gola', '234980', 'Senior Citizen', 0, 0, '0', '1000-01-01', '0', 0, 0, '0', 0),
(8, 'mihir', '25603f465e5f1bb27633c288ed479d0f', 1, 'Mihir', 'rathod', '9537071342', 'mihir@gmail.com', 'Male', '2023 MAY 5', 'Surat', 'mihir Residency surat', 'atlanta', '017843', 'Handicap', 0, 0, '0', '1000-01-01', '0', 0, 0, '0', 0),
(9, 'shailesh', '7f125dd8c17fc02ab20338fbcf27abfe', 1, 'Shailesh', 'Patel', '9824566875', 'shailesh@gmail.com', 'Male', '1961 JAN 12', 'Surat', '14-15 mahalakshmi society', 'mahalakshmi', '305144', 'Citizen', 0, 0, '0', '1000-01-01', '0', 0, 0, '0', 0),
(10, 'dharti', '325270ff6f7147ef2e24934d5e244479', 1, 'Dharti', 'Patel', '8849307720', 'dharti@gmail.com', 'Female', '1997 AUG 8', 'Surat', '202 shaligram height althan', 'Raju pan house', '23876', 'Citizen', 0, 0, '0', '1000-01-01', '0', 0, 0, '0', 0),
(11, 'Dharmesh', '60fa9caa4f8ec27a0045988eb119142a', 1, 'Dharmik', 'Patel', '9106202038', 'dharmesh@gmail.com', 'Male', '1971 SEP 28', 'Surat', 'Welcome shopping center', 'welcome pan house', '394210', 'Citizen', 0, 0, '0', '1000-01-01', '0', 0, 0, '0', 0),
(12, 'Bhanumati', '0338fd435f1da95d02cba2da61b2a082', 1, 'Bhanumati', 'Burkhawala', '9327427768', 'bhanumati@gmail.com', 'Female', '1950 SEP 29', 'Surat', 'Welcome shopping center', 'welcome pan house', '193558', 'Senior Citizen', 0, 0, '0', '1000-01-01', '0', 0, 0, '0', 0),
(13, 'Bhumika', '81dc9bdb52d04dc20036dbd8313ed055', 1, 'Bhumika', 'Pastagia', '9426777545', 'bhumika@gmail.com', 'Female', '1982 MAY 7', 'Surat', 'nr dmart', 'karan park', '395509', 'Citizen', 1, 1, 'photo ', '2023-05-17', '10 AM - 11 AM', 1, 1, '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `u_h_doc`
--

CREATE TABLE `u_h_doc` (
  `u_id` int(255) NOT NULL,
  `u_h_disabilitycerttificate` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `u_login`
--

CREATE TABLE `u_login` (
  `u_id` int(11) NOT NULL,
  `u_username` varchar(50) NOT NULL,
  `u_email` varchar(50) NOT NULL,
  `u_password` varchar(50) NOT NULL,
  `status` int(5) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `u_login`
--

INSERT INTO `u_login` (`u_id`, `u_username`, `u_email`, `u_password`, `status`) VALUES
(1, 'dharmik', 'dharmik@gmail.com', '12345', 1),
(2, 'vishnu', 'vishnu@123', 'qwe', 1),
(3, 'jash', 'jash@gmail.com', 'jash123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `u_s_doc`
--

CREATE TABLE `u_s_doc` (
  `u_id` int(255) NOT NULL,
  `u_s_bonafide` varchar(1000) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `u_s_doc`
--

INSERT INTO `u_s_doc` (`u_id`, `u_s_bonafide`) VALUES
(1, 'uploads/138081-sujal-1.pdf'),
(2, 'uploads/320872-my-photo.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `v_login`
--

CREATE TABLE `v_login` (
  `v_id` int(255) NOT NULL,
  `v_name` varchar(1000) NOT NULL,
  `v_email` varchar(1000) NOT NULL,
  `v_username` varchar(1000) NOT NULL,
  `v_password` varchar(1000) NOT NULL,
  `v_branch` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `v_login`
--

INSERT INTO `v_login` (`v_id`, `v_name`, `v_email`, `v_username`, `v_password`, `v_branch`) VALUES
(2, 'ddfd', '262006@gmail.com', '888', '1', 'al'),
(6, 'jash', 'jash@gmail.com', 'jash', '123', 'Adajan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `a_login`
--
ALTER TABLE `a_login`
  ADD PRIMARY KEY (`a_id`),
  ADD UNIQUE KEY `username` (`a_username`);

--
-- Indexes for table `u_comman_doc`
--
ALTER TABLE `u_comman_doc`
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `u_c_doc`
--
ALTER TABLE `u_c_doc`
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `u_detail`
--
ALTER TABLE `u_detail`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `u_h_doc`
--
ALTER TABLE `u_h_doc`
  ADD PRIMARY KEY (`u_id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `u_login`
--
ALTER TABLE `u_login`
  ADD PRIMARY KEY (`u_id`),
  ADD UNIQUE KEY `u_username` (`u_username`),
  ADD UNIQUE KEY `u_email` (`u_email`);

--
-- Indexes for table `u_s_doc`
--
ALTER TABLE `u_s_doc`
  ADD PRIMARY KEY (`u_id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `v_login`
--
ALTER TABLE `v_login`
  ADD PRIMARY KEY (`v_id`),
  ADD UNIQUE KEY `v_username` (`v_name`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `a_login`
--
ALTER TABLE `a_login`
  MODIFY `a_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `u_detail`
--
ALTER TABLE `u_detail`
  MODIFY `u_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `u_h_doc`
--
ALTER TABLE `u_h_doc`
  MODIFY `u_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `u_login`
--
ALTER TABLE `u_login`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `u_s_doc`
--
ALTER TABLE `u_s_doc`
  MODIFY `u_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `v_login`
--
ALTER TABLE `v_login`
  MODIFY `v_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `u_comman_doc`
--
ALTER TABLE `u_comman_doc`
  ADD CONSTRAINT `u_comman_doc_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `u_detail` (`u_id`) ON DELETE CASCADE;

--
-- Constraints for table `u_h_doc`
--
ALTER TABLE `u_h_doc`
  ADD CONSTRAINT `u_h_doc_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `u_detail` (`u_id`) ON DELETE CASCADE;

--
-- Constraints for table `u_s_doc`
--
ALTER TABLE `u_s_doc`
  ADD CONSTRAINT `u_s_doc_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `u_detail` (`u_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
