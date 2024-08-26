-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2024 at 05:08 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `hospitaldetails` int(100) NOT NULL,
  `doctorname` int(100) NOT NULL,
  `nursename` int(100) NOT NULL,
  `username` int(100) NOT NULL,
  `fathername` varchar(100) NOT NULL,
  `babyweight` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `doctorname` int(100) NOT NULL,
  `nursename` int(100) NOT NULL,
  `deathtime` varchar(100) NOT NULL,
  `deathdate` varchar(100) NOT NULL,
  `hospitalDetalis` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` int(100) NOT NULL,
  `designation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `fees` int(100) NOT NULL,
  `doctorname` varchar(100) NOT NULL,
  `experiance` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` int(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `specialist` int(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `birthdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_fees`
--

CREATE TABLE `doctor_fees` (
  `id` int(100) NOT NULL,
  `checkup_price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_specialist`
--

CREATE TABLE `doctor_specialist` (
  `id` int(100) NOT NULL,
  `specialist` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `user` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hospital_details`
--

CREATE TABLE `hospital_details` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laboratory`
--

CREATE TABLE `laboratory` (
  `id` int(100) NOT NULL,
  `laboratory_name` varchar(100) NOT NULL,
  `report_types` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(100) NOT NULL,
  `verify` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `designation` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `madical`
--

CREATE TABLE `madical` (
  `id` int(100) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `mcompany` varchar(100) NOT NULL,
  `mtypes` int(100) NOT NULL,
  `mprice` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `madicine_types`
--

CREATE TABLE `madicine_types` (
  `id` int(100) NOT NULL,
  `madicine_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports_types`
--

CREATE TABLE `reports_types` (
  `id` int(100) NOT NULL,
  `reports_types` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roon_price`
--

CREATE TABLE `roon_price` (
  `id` int(100) NOT NULL,
  `room_price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roon_price`
--

INSERT INTO `roon_price` (`id`, `room_price`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `surgery`
--

CREATE TABLE `surgery` (
  `id` int(100) NOT NULL,
  `surgeryname` varchar(100) NOT NULL,
  `doctor_specialist` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_booking_appointnent`
--

CREATE TABLE `user_booking_appointnent` (
  `id` int(100) NOT NULL,
  `username` int(100) NOT NULL,
  `doctername` int(100) NOT NULL,
  `usercontact` varchar(100) NOT NULL,
  `age` int(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `disease` varchar(100) NOT NULL,
  `surgery` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_verify`
--

CREATE TABLE `user_verify` (
  `id` int(100) NOT NULL,
  `verify` int(100) NOT NULL,
  `isSuccess` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `mother` (`username`),
  ADD KEY `doctorName` (`doctorname`),
  ADD KEY `nurseName` (`nursename`),
  ADD KEY `hospitalDetails` (`hospitaldetails`);

--
-- Indexes for table `death_reports`
--
ALTER TABLE `death_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_name` (`doctorname`),
  ADD KEY `nurse` (`nursename`),
  ADD KEY `hospital` (`hospitalDetalis`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee-doctor` (`fees`),
  ADD KEY `sp-doctor` (`specialist`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `Forgot_pass` (`user`);

--
-- Indexes for table `hospital_details`
--
ALTER TABLE `hospital_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laboratory`
--
ALTER TABLE `laboratory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_types` (`report_types`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `verify` (`verify`),
  ADD KEY `designation` (`designation`);

--
-- Indexes for table `madical`
--
ALTER TABLE `madical`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mTypes` (`mtypes`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_price` (`price`);

--
-- Indexes for table `roon_price`
--
ALTER TABLE `roon_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surgery`
--
ALTER TABLE `surgery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_sp` (`doctor_specialist`);

--
-- Indexes for table `user_booking_appointnent`
--
ALTER TABLE `user_booking_appointnent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor` (`doctername`),
  ADD KEY `user` (`username`);

--
-- Indexes for table `user_verify`
--
ALTER TABLE `user_verify`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_verify` (`verify`);

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
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT for table `hospital_details`
--
ALTER TABLE `hospital_details`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laboratory`
--
ALTER TABLE `laboratory`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
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

--
-- AUTO_INCREMENT for table `user_verify`
--
ALTER TABLE `user_verify`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `birth_reports`
--
ALTER TABLE `birth_reports`
  ADD CONSTRAINT `doctorName` FOREIGN KEY (`doctorname`) REFERENCES `doctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hospitalDetails` FOREIGN KEY (`hospitaldetails`) REFERENCES `hospital_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mother` FOREIGN KEY (`username`) REFERENCES `login` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nurseName` FOREIGN KEY (`nursename`) REFERENCES `nurse` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `death_reports`
--
ALTER TABLE `death_reports`
  ADD CONSTRAINT `doctor_name` FOREIGN KEY (`doctorname`) REFERENCES `doctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hospital` FOREIGN KEY (`hospitalDetalis`) REFERENCES `hospital_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nurse` FOREIGN KEY (`nursename`) REFERENCES `nurse` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `fee-doctor` FOREIGN KEY (`fees`) REFERENCES `doctor_fees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sp-doctor` FOREIGN KEY (`specialist`) REFERENCES `doctor_specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `forgot_password`
--
ALTER TABLE `forgot_password`
  ADD CONSTRAINT `Forgot_pass` FOREIGN KEY (`user`) REFERENCES `login` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `laboratory`
--
ALTER TABLE `laboratory`
  ADD CONSTRAINT `report_types` FOREIGN KEY (`report_types`) REFERENCES `reports_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `designation` FOREIGN KEY (`designation`) REFERENCES `designation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `verify` FOREIGN KEY (`verify`) REFERENCES `user_verify` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `madical`
--
ALTER TABLE `madical`
  ADD CONSTRAINT `mTypes` FOREIGN KEY (`mtypes`) REFERENCES `madicine_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `room_price` FOREIGN KEY (`price`) REFERENCES `roon_price` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `surgery`
--
ALTER TABLE `surgery`
  ADD CONSTRAINT `doctor_sp` FOREIGN KEY (`doctor_specialist`) REFERENCES `doctor_specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_booking_appointnent`
--
ALTER TABLE `user_booking_appointnent`
  ADD CONSTRAINT `doctor` FOREIGN KEY (`doctername`) REFERENCES `doctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user` FOREIGN KEY (`username`) REFERENCES `login` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_verify`
--
ALTER TABLE `user_verify`
  ADD CONSTRAINT `user_verify` FOREIGN KEY (`verify`) REFERENCES `login` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
