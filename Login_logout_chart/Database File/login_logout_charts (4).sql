-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2021 at 10:19 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login_logout_charts`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Emp_ID` int(50) NOT NULL,
  `Designation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`ID`, `Name`, `Emp_ID`, `Designation`) VALUES
(1, 'A', 12312, 'Sr. Software Developer'),
(2, 'B', 12122, 'Software Developer'),
(3, 'C', 12123, 'Software Developer'),
(4, 'D', 12124, 'Sr. Software Developer');

-- --------------------------------------------------------

--
-- Table structure for table `emp_table`
--

CREATE TABLE `emp_table` (
  `ID` int(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Emp_ID` int(50) NOT NULL,
  `Login_Time` datetime NOT NULL,
  `Logout_Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp_table`
--

INSERT INTO `emp_table` (`ID`, `Name`, `Emp_ID`, `Login_Time`, `Logout_Time`) VALUES
(22, 'A', 12312, '2008-11-11 10:23:00', '2008-11-11 07:30:00'),
(23, 'A', 12312, '2008-11-11 11:23:00', '2008-11-11 08:30:00'),
(24, 'A', 12312, '2008-11-11 12:23:00', '2008-11-11 09:30:00'),
(25, 'A', 12312, '2008-11-11 13:23:00', '2008-11-11 10:30:00'),
(26, 'A', 12312, '2008-11-11 14:23:00', '2008-11-11 11:30:00'),
(27, 'B', 12122, '2021-01-01 09:00:00', '2021-01-01 10:23:00'),
(28, 'B', 12122, '2021-01-02 10:00:00', '2021-01-02 09:30:00'),
(29, 'B', 12122, '2021-01-03 11:00:00', '2021-01-03 07:30:00'),
(30, 'B', 12122, '2021-01-04 10:00:00', '2021-01-04 08:35:00'),
(31, 'B', 12122, '2021-01-05 09:00:00', '2021-01-05 09:40:00'),
(32, 'B', 12122, '2021-01-06 10:00:00', '2021-01-06 06:20:00'),
(34, 'C', 12123, '2021-01-01 09:00:00', '2021-01-01 10:23:00'),
(35, 'C', 12123, '2021-01-02 10:00:00', '2021-01-02 09:30:00'),
(36, 'C', 12123, '2021-01-03 11:00:00', '2021-01-03 07:30:00'),
(37, 'C', 12123, '2021-01-04 10:00:00', '2021-01-04 08:35:00'),
(38, 'C', 12123, '2021-01-05 09:00:00', '2021-01-05 09:40:00'),
(39, 'C', 12123, '2021-01-06 10:00:00', '2021-01-06 06:20:00'),
(41, 'D', 12124, '2021-01-01 09:00:00', '2021-01-01 10:23:00'),
(42, 'D', 12124, '2021-01-02 10:00:00', '2021-01-02 09:30:00'),
(43, 'D', 12124, '2021-01-03 11:00:00', '2021-01-03 07:30:00'),
(44, 'D', 12124, '2021-01-04 10:00:00', '2021-01-04 08:35:00'),
(45, 'D', 12124, '2021-01-05 09:00:00', '2021-01-05 09:40:00'),
(46, 'D', 12124, '2021-01-06 10:00:00', '2021-01-06 06:20:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `emp_table`
--
ALTER TABLE `emp_table`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `emp_table`
--
ALTER TABLE `emp_table`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
