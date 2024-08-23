-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2024 at 12:53 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital management system`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounting`
--

CREATE TABLE `accounting` (
  `id` int(100) NOT NULL,
  `transection` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `cashpayment` varchar(100) NOT NULL,
  `epayment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `birth_reports`
--

CREATE TABLE `birth_reports` (
  `id` int(100) NOT NULL,
  `babyname` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `hospitalname` varchar(100) NOT NULL,
  `hospotraladdress` varchar(100) NOT NULL,
  `doctorname` varchar(100) NOT NULL,
  `nursename` varchar(100) NOT NULL,
  `mothername` varchar(100) NOT NULL,
  `fathername` varchar(100) NOT NULL,
  `babyweight` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `death_reports`
--

CREATE TABLE `death_reports` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `disease` varchar(100) NOT NULL,
  `surgery` varchar(100) NOT NULL,
  `doctorname` varchar(100) NOT NULL,
  `nursename` varchar(100) NOT NULL,
  `deathtime` varchar(100) NOT NULL,
  `deathdate` varchar(100) NOT NULL,
  `hospitalname` varchar(100) NOT NULL,
  `hospitaladdress` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` int(100) NOT NULL,
  `designation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`id`, `designation`) VALUES
(1, 'Admin'),
(2, 'Doctor'),
(3, 'Nurse'),
(4, 'User'),
(5, 'Receptionist');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(100) NOT NULL,
  `doctorname` varchar(100) NOT NULL,
  `experiance` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` int(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `specialist` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `birthdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_fees`
--

CREATE TABLE `doctor_fees` (
  `id` int(100) NOT NULL,
  `checkup_price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_specialist`
--

CREATE TABLE `doctor_specialist` (
  `id` int(100) NOT NULL,
  `specialist` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor_specialist`
--

INSERT INTO `doctor_specialist` (`id`, `specialist`) VALUES
(1, 'general physical'),
(2, 'skin hair'),
(3, 'women health'),
(4, 'dental care'),
(5, 'child specilist'),
(6, 'ear nose throat'),
(7, 'bones joints');

-- --------------------------------------------------------

--
-- Table structure for table `forgot_password`
--

CREATE TABLE `forgot_password` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `laboratory`
--

CREATE TABLE `laboratory` (
  `id` int(100) NOT NULL,
  `laboratory_name` varchar(100) NOT NULL,
  `report_types` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `madical`
--

CREATE TABLE `madical` (
  `id` int(100) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `mcompany` varchar(100) NOT NULL,
  `mtypes` varchar(100) NOT NULL,
  `mprice` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `madicine_peice`
--

CREATE TABLE `madicine_peice` (
  `id` int(100) NOT NULL,
  `p_bottel` varchar(100) NOT NULL,
  `p_injection` varchar(100) NOT NULL,
  `p_medicine` varchar(100) NOT NULL,
  `p_serup` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `madicine_types`
--

CREATE TABLE `madicine_types` (
  `id` int(100) NOT NULL,
  `madicine_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `madicine_types`
--

INSERT INTO `madicine_types` (`id`, `madicine_type`) VALUES
(1, 'bottel'),
(2, 'injection'),
(3, 'madicine'),
(4, 'serup');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `experiance` varchar(100) NOT NULL,
  `age` int(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` int(100) NOT NULL,
  `experiance` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reports_types`
--

CREATE TABLE `reports_types` (
  `id` int(100) NOT NULL,
  `reports_types` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reports_types`
--

INSERT INTO `reports_types` (`id`, `reports_types`) VALUES
(1, 'blood'),
(2, 'urine'),
(3, 'loosemotion'),
(4, 'sliva');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(100) NOT NULL,
  `room_types` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roon_price`
--

CREATE TABLE `roon_price` (
  `id` int(100) NOT NULL,
  `room_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roon_price`
--

INSERT INTO `roon_price` (`id`, `room_type`) VALUES
(1, 'genral'),
(2, 'primiume'),
(3, 'vip'),
(4, 'icu'),
(5, 'ot'),
(6, 'labour_room'),
(7, 'xrayroom');

-- --------------------------------------------------------

--
-- Table structure for table `surgery`
--

CREATE TABLE `surgery` (
  `id` int(100) NOT NULL,
  `surgeryname` varchar(100) NOT NULL,
  `doctor_specialist` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_booking_appointnent`
--

CREATE TABLE `user_booking_appointnent` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `doctername` varchar(100) NOT NULL,
  `usercontact` varchar(100) NOT NULL,
  `age` int(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `disease` varchar(100) NOT NULL,
  `surgery` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounting`
--
ALTER TABLE `accounting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `birth_reports`
--
ALTER TABLE `birth_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `death_reports`
--
ALTER TABLE `death_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_fees`
--
ALTER TABLE `doctor_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_specialist`
--
ALTER TABLE `doctor_specialist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forgot_password`
--
ALTER TABLE `forgot_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laboratory`
--
ALTER TABLE `laboratory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `madical`
--
ALTER TABLE `madical`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `madicine_peice`
--
ALTER TABLE `madicine_peice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `madicine_types`
--
ALTER TABLE `madicine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports_types`
--
ALTER TABLE `reports_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roon_price`
--
ALTER TABLE `roon_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surgery`
--
ALTER TABLE `surgery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_booking_appointnent`
--
ALTER TABLE `user_booking_appointnent`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounting`
--
ALTER TABLE `accounting`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `birth_reports`
--
ALTER TABLE `birth_reports`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `death_reports`
--
ALTER TABLE `death_reports`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctor_fees`
--
ALTER TABLE `doctor_fees`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctor_specialist`
--
ALTER TABLE `doctor_specialist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `forgot_password`
--
ALTER TABLE `forgot_password`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laboratory`
--
ALTER TABLE `laboratory`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `madical`
--
ALTER TABLE `madical`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `madicine_peice`
--
ALTER TABLE `madicine_peice`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `madicine_types`
--
ALTER TABLE `madicine_types`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nurse`
--
ALTER TABLE `nurse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receptionist`
--
ALTER TABLE `receptionist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports_types`
--
ALTER TABLE `reports_types`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roon_price`
--
ALTER TABLE `roon_price`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `surgery`
--
ALTER TABLE `surgery`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_booking_appointnent`
--
ALTER TABLE `user_booking_appointnent`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
