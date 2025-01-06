-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 01, 2025 at 09:20 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gms`
--

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

DROP TABLE IF EXISTS `equipments`;
CREATE TABLE IF NOT EXISTS `equipments` (
  `EquipmentID` int(200) NOT NULL,
  `EquipmentName` varchar(200) NOT NULL,
  `Category` varchar(200) NOT NULL,
  `MaintenanceDate` date NOT NULL,
  PRIMARY KEY (`EquipmentID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equipments`
--

INSERT INTO `equipments` (`EquipmentID`, `EquipmentName`, `Category`, `MaintenanceDate`) VALUES
(1, 'chestPress', 'strength', '2024-12-01'),
(2, 'medicineBall', 'cardio', '2020-12-24'),
(3, 'Treadmill', 'cardio', '2024-12-01'),
(4, 'Dumbell', 'strength', '2020-12-01'),
(5, 'Stationary bike', 'cardio', '2020-12-07');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `mobilenumber` varchar(20) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `gymtime` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `name`, `mobilenumber`, `email`, `gender`, `address`, `gymtime`, `age`, `amount`) VALUES
(3, 'nishen', '111111', 'nishen@gmail.com', 'Male', 'balangoda', '05.00AM - 11.00AM', 21, 2100),
(4, 'savishka', '071259652', 'savishka@gmail.com', 'Male', 'balangoda', '05.00AM - 11.00AM', 20, 2500),
(5, 'savi', '071010101', 'savi@gmail.com', 'Female', 'rathnapura', '05.00AM - 11.00AM', 12, 3500);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `id` int(11) DEFAULT NULL,
  `month` varchar(200) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `month`, `amount`) VALUES
(2, 'Nov-2024', 2500);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
