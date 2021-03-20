-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 20, 2021 at 06:53 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `urbandb`
--

-- --------------------------------------------------------

--
-- Table structure for table `orderline`
--

DROP TABLE IF EXISTS `orderline`;
CREATE TABLE IF NOT EXISTS `orderline` (
  `lineId` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `orderId` int NOT NULL,
  `prodId` int NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(11,2) NOT NULL,
  PRIMARY KEY (`lineId`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orderline`
--

INSERT INTO `orderline` (`lineId`, `orderId`, `prodId`, `quantity`, `price`) VALUES
(1, 1, 2, 1, '0.00'),
(2, 2, 3, 1, '0.00'),
(3, 3, 4, 1, '0.00'),
(4, 4, 5, 1, '0.00'),
(5, 5, 6, 1, '0.00'),
(6, 6, 7, 1, '0.00'),
(7, 7, 8, 1, '0.00'),
(8, 8, 9, 1, '0.00'),
(9, 9, 10, 1, '0.00'),
(10, 10, 11, 1, '0.00'),
(11, 11, 12, 1, '0.00'),
(12, 12, 13, 1, '0.00'),
(13, 13, 15, 1, '0.00'),
(14, 14, 17, 1, '0.00'),
(15, 15, 19, 1, '0.00'),
(16, 16, 2, 1, '0.00'),
(17, 17, 3, 1, '0.00'),
(18, 18, 4, 1, '0.00'),
(19, 19, 5, 1, '0.00'),
(20, 20, 6, 1, '0.00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
