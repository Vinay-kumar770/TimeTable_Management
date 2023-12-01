-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2023 at 09:03 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timetablegen`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(3) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `dob` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `name`, `username`, `password`, `dob`) VALUES
(1, 'vinay', 'vinay', '123', '2023-05-03');

-- --------------------------------------------------------

--
-- Table structure for table `coordinator`
--

CREATE TABLE `coordinator` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coordinator`
--

INSERT INTO `coordinator` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `fid` int(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `dob` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`fid`, `name`, `username`, `password`, `dob`) VALUES
(1, 'Bose Babu', 'bosebabu', '12345', '2002-11-28'),
(2, 'vinay', 'vinay', '123', '2023-04-28'),
(4, 'sarish', 'sarish', '123', '2023-05-05'),
(5, 'Rohini', 'Rohini', '123', '2023-05-05'),
(6, 'Sangeeta', 'Sangeeta', '123', '2023-05-20'),
(7, 'Yashodhara', 'Yashodhara', '123', '2023-05-05'),
(8, 'Amaravathi', 'Amaravathi', '123', '2023-05-19');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `year` varchar(10) NOT NULL,
  `section` varchar(20) NOT NULL,
  `day` varchar(50) NOT NULL,
  `hour` varchar(10) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `faculty` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`year`, `section`, `day`, `hour`, `subject`, `faculty`) VALUES
('3', 'C', 'Tuesday', '1', 'ML', 'Rohini'),
('3', 'C', 'Tuesday', '3', 'CNS', 'Usha Bala'),
('3', 'C', 'Tuesday', '4', 'NNDL', 'Anusha'),
('3', 'C', 'Tuesday', '5', 'OOSE LAB', 'Preeti'),
('3', 'C', 'Tuesday', '6', 'OOSE LAB', 'Preeti'),
('3', 'C', 'Tuesday', '7', 'OOSE LAB', 'Preeti'),
('3', 'C', 'Tuesday', '8', 'OOSE LAB', 'Preeti'),
('3', 'C', 'Monday', '1', 'WT LAB', 'Bose Babu'),
('3', 'C', 'Monday', '2', 'WT LAB', 'Bose Babu'),
('3', 'C', 'Monday', '3', 'WT LAB', 'Bose Babu'),
('3', 'C', 'Monday', '4', 'WT LAB', 'Bose Babu'),
('3', 'C', 'Monday', '5', 'NNDL', 'Anusha'),
('3', 'C', 'Monday', '6', 'WT', 'Bose Babu'),
('3', 'C', 'Monday', '7', 'WT', 'Bose Babu'),
('3', 'C', 'Monday', '8', 'ML', 'Rohini'),
('3', 'C', 'Wednesday', '1', 'CNS', 'Usha Bala'),
('3', 'C', 'Wednesday', '2', 'OOSE', 'Preeti'),
('3', 'C', 'Wednesday', '3', 'ITRE', 'Prakash'),
('3', 'C', 'Wednesday', '4', 'Library', '*'),
('3', 'C', 'Wednesday', '5', 'VA', 'Yashodhara'),
('3', 'C', 'Wednesday', '6', 'VA', 'Yashodhara'),
('3', 'C', 'Wednesday', '7', 'WT', 'Bose Babu'),
('3', 'C', 'Wednesday', '8', 'Sports', '*'),
('3', 'C', 'Thursday', '1', 'ITRE', 'Prakash'),
('3', 'C', 'Thursday', '2', 'QA', 'Kamesh'),
('3', 'C', 'Thursday', '3', 'QA', 'Kamesh'),
('3', 'C', 'Thursday', '4', 'WT', 'Bose Babu'),
('3', 'C', 'Thursday', '5', 'OOSE', 'Preeti'),
('3', 'C', 'Thursday', '6', 'OOSE', 'Preeti'),
('3', 'C', 'Thursday', '7', 'NNDL', 'Anusha'),
('3', 'C', 'Thursday', '8', 'NNDL', 'Anusha'),
('3', 'C', 'Friday', '1', 'NNDL', 'Anusha'),
('3', 'C', 'Friday', '2', 'ITRE', 'Prakash'),
('3', 'C', 'Friday', '3', 'ITRE', 'Prakash'),
('3', 'C', 'Friday', '4', 'OOSE', 'Preeti'),
('3', 'C', 'Friday', '5', 'ML', 'Rohini'),
('3', 'C', 'Friday', '6', 'ML', 'Rohini'),
('3', 'C', 'Friday', '7', 'CNS', 'Usha Bala'),
('3', 'C', 'Friday', '8', 'Counselling', '*'),
('3', 'C', 'Saturday', '1', 'OOSE', 'Preeti'),
('3', 'C', 'Saturday', '2', 'CNS', 'Usha Bala'),
('3', 'C', 'Saturday', '3', 'CNS', 'Usha Bala'),
('3', 'C', 'Saturday', '4', 'ML', 'Rohini'),
('3', 'C', 'Saturday', '5', '-', '-'),
('3', 'C', 'Saturday', '6', '-', '-'),
('3', 'C', 'Saturday', '7', '-', '-'),
('3', 'C', 'Saturday', '8', '-', '-'),
('3', 'B', 'Monday', '1', 'ITRE', 'Vijay'),
('3', 'B', 'Monday', '2', 'ML', 'Sangeeta'),
('3', 'B', 'Monday', '3', 'OOSE', 'Krishna'),
('3', 'B', 'Monday', '4', 'Library', '*'),
('3', 'B', 'Monday', '5', 'VA', 'Yashodhara'),
('3', 'B', 'Monday', '6', 'VA', 'Yashodhara'),
('3', 'B', 'Monday', '7', 'NNDL', 'Anusha'),
('3', 'B', 'Monday', '8', 'NNDL', 'Anusha'),
('3', 'B', 'Tuesday', '1', 'NNDL', 'Anusha'),
('3', 'B', 'Tuesday', '2', 'QA', 'Kamesh'),
('3', 'B', 'Tuesday', '3', 'QA', 'Kamesh'),
('3', 'B', 'Tuesday', '4', 'WT', 'Bose Babu'),
('3', 'B', 'Tuesday', '5', 'ITRE', 'Vijay'),
('3', 'B', 'Tuesday', '6', 'ITRE', 'Vijay'),
('3', 'B', 'Tuesday', '7', 'OOSE', 'Krishna'),
('3', 'B', 'Tuesday', '8', 'Sports', '*'),
('3', 'B', 'Wednesday', '1', 'WT LAB', 'Bose Babu'),
('3', 'B', 'Wednesday', '2', 'WT LAB', 'Bose Babu'),
('3', 'B', 'Wednesday', '3', 'WT LAB', 'Bose Babu'),
('3', 'B', 'Wednesday', '4', 'WT LAB', 'Bose Babu'),
('3', 'B', 'Wednesday', '5', 'NNDL', 'Anusha'),
('3', 'B', 'Wednesday', '6', 'CNS', 'Gayathri'),
('3', 'B', 'Wednesday', '7', 'ML', 'Sangeeta'),
('3', 'B', 'Wednesday', '8', 'ML', 'Sangeeta'),
('3', 'B', 'Thursday', '1', 'ML', 'Sangeeta'),
('3', 'B', 'Thursday', '2', 'CNS', 'Gayathri'),
('3', 'B', 'Thursday', '3', 'CNS', 'Gayathri'),
('3', 'B', 'Thursday', '4', 'ITRE', 'Vijay'),
('3', 'B', 'Thursday', '5', 'OOSE', 'Krishna'),
('3', 'B', 'Thursday', '6', 'WT', 'Bose Babu'),
('3', 'B', 'Thursday', '7', 'WT', 'Bose Babu'),
('3', 'B', 'Thursday', '8', 'Counselling', '*'),
('3', 'B', 'Friday', '1', 'CNS', 'Gayathri'),
('3', 'B', 'Friday', '2', 'WT', 'Bose Babu'),
('3', 'B', 'Friday', '3', 'NNDL', 'Anusha'),
('3', 'B', 'Friday', '4', 'ML', 'Sangeeta'),
('3', 'B', 'Friday', '5', 'OOSE LAB', 'Krishna'),
('3', 'B', 'Friday', '6', 'OOSE LAB', 'Krishna'),
('3', 'B', 'Friday', '7', 'OOSE LAB', 'Krishna'),
('3', 'B', 'Friday', '8', 'OOSE LAB ', 'Krishna'),
('3', 'B', 'Saturday', '1', 'OOSE', 'Krishna'),
('3', 'B', 'Saturday', '2', 'OOSE', 'Krishna'),
('3', 'B', 'Saturday', '3', 'CNS', 'Gayathri'),
('3', 'B', 'Saturday', '4', 'WT', 'Bose Babu'),
('3', 'B', 'Saturday', '5', '-', '-'),
('3', 'B', 'Saturday', '6', '-', '-'),
('3', 'B', 'Saturday', '7', '-', '-'),
('3', 'B', 'Saturday', '8', '-', '-'),
('3', 'A', 'Monday', '1', 'ML', 'Yasasswi'),
('3', 'A', 'Monday', '2', 'OOSE', 'Bhavani'),
('2', 'A', 'Monday', '3', 'OOSE', 'Bhavani'),
('2', 'A', 'Monday', '4', 'Library', '*'),
('2', 'A', 'Monday', '5', 'NNDL', 'Krishna Prasad'),
('2', 'A', 'Monday', '6', 'QA', 'Kamesh'),
('2', 'A', 'Monday', '7', 'QA', 'Kamesh'),
('2', 'A', 'Monday', '8', 'ITRE', 'Vijay'),
('3', 'A', 'Tuesday', '1', 'ITRE', 'Vijay'),
('3', 'A', 'Tuesday', '2', 'WT', 'Pranitha'),
('3', 'A', 'Tuesday', '3', 'NNDL', 'Krishna Prasad'),
('3', 'A', 'Tuesday', '4', 'ML', 'Yasasswi'),
('3', 'A', 'Tuesday', '5', 'VA', 'Yashodhara'),
('3', 'A', 'Tuesday', '6', 'VA', 'Yashodhara'),
('3', 'A', 'Tuesday', '7', 'OOSE', 'Bhavani'),
('3', 'A', 'Tuesday', '8', 'Sports', '*'),
('3', 'A', 'Wednesday', '1', 'NNDL', 'Krishna Prasad'),
('3', 'A', 'Wednesday', '2', 'ITRE', 'Vijay'),
('3', 'A', 'Wednesday', '3', 'CNS', 'Amaravathi'),
('3', 'A', 'Wednesday', '4', 'CNS', 'Amaravathi'),
('3', 'A', 'Wednesday', '5', 'OOSE', 'Bhavani'),
('3', 'A', 'Wednesday', '6', 'WT', 'Pranitha'),
('3', 'A', 'Wednesday', '7', 'ML', 'Yasasswi'),
('3', 'A', 'Wednesday', '8', 'ML', 'Yasasswi'),
('3', 'A', 'Thursday', '1', 'WT', 'Pranitha'),
('3', 'A', 'Thursday', '2', 'WT', 'Pranitha'),
('3', 'A', 'Thursday', '3', 'ITRE', 'Vijay'),
('3', 'A', 'Thursday', '4', 'CNS', 'Amaravathi'),
('3', 'A', 'Thursday', '5', 'WT LAB', 'Pranitha'),
('3', 'A', 'Thursday', '6', 'WT LAB', 'Pranitha'),
('3', 'A', 'Thursday', '7', 'WT LAB', 'Pranitha'),
('3', 'A', 'Thursday', '8', 'WT LAB', 'Pranitha'),
('3', 'A', 'Friday', '1', 'OOSE LAB', 'Bhavani'),
('3', 'A', 'Friday', '2', 'OOSE LAB', 'Bhavani'),
('3', 'A', 'Friday', '3', 'OOSE LAB', 'Bhavani'),
('3', 'A', 'Friday', '4', 'OOSE LAB', 'Bhavani'),
('3', 'A', 'Friday', '5', 'NNDL', 'Krishna Prasad'),
('3', 'A', 'Friday', '6', 'NNDL', 'Krishna Prasad'),
('3', 'A', 'Friday', '7', 'CNS', 'Amaravathi'),
('3', 'A', 'Friday', '8', 'Counselling', '*'),
('3', 'A', 'Saturday', '1', 'CNS', 'Amaravathi'),
('3', 'A', 'Saturday', '2', 'WT', 'Pranitha'),
('3', 'A', 'Saturday', '3', 'ML', 'Yasasswi'),
('3', 'A', 'Saturday', '4', 'OOSE', 'Bhavani'),
('3', 'A', 'Saturday', '5', '-', '-'),
('3', 'A', 'Saturday', '6', '-', '-'),
('3', 'A', 'Saturday', '7', '-', '-'),
('3', 'A', 'Saturday', '8', '-', '-'),
('3', 'A', 'Monday', '3', 'OOSE', 'Bhavani'),
('3', 'A', 'Monday', '4', 'Library', '*'),
('3', 'A', 'Monday', '5', 'NNDL', 'Krishna Prasad'),
('3', 'A', 'Monday', '6', 'QA', 'Kamesh'),
('3', 'A', 'Monday', '7', 'QA', 'Kamesh'),
('3', 'A', 'Monday', '8', 'ITRE', 'Vijay'),
('3', 'C', 'Tuesday', '2', 'WT', 'Bose Babu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`fid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `fid` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
