-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2021 at 09:20 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taskdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `insertdata`
--

CREATE TABLE `insertdata` (
  `ID` bigint(20) NOT NULL,
  `word` int(50) NOT NULL,
  `achar` int(50) NOT NULL,
  `vowel` int(50) NOT NULL,
  `cap` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `insertdata`
--

INSERT INTO `insertdata` (`ID`, `word`, `achar`, `vowel`, `cap`) VALUES
(1, 3, 16, 6, 'WElcOmE TO IndIA'),
(2, 1, 8, 3, 'WElcOmE '),
(3, 1, 8, 3, 'WElcOmE '),
(4, 1, 8, 3, 'WElcOmE '),
(5, 1, 8, 3, 'WElcOmE '),
(6, 1, 8, 3, 'WElcOmE '),
(7, 1, 5, 2, 'hEllO'),
(8, 1, 5, 2, 'hEllO'),
(9, 1, 5, 2, 'hEllO'),
(10, 1, 5, 2, 'hEllO'),
(11, 1, 8, 3, 'WElcOmE '),
(12, 1, 6, 2, 'TrUptI'),
(13, 1, 6, 2, 'TrUptI'),
(14, 1, 6, 2, 'sAkshI'),
(15, 1, 6, 2, 'sAkshI'),
(16, 3, 11, 1, 'Its my tEst'),
(17, 3, 11, 1, 'Its my tEst');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `insertdata`
--
ALTER TABLE `insertdata`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `insertdata`
--
ALTER TABLE `insertdata`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
