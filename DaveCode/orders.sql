-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 20, 2021 at 06:54 PM
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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `orderId` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `empId` int NOT NULL,
  `custId` int NOT NULL,
  `storeId` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `campId` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `orderDate` date NOT NULL,
  `totalPrice` decimal(11,2) NOT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderId`, `empId`, `custId`, `storeId`, `campId`, `orderDate`, `totalPrice`) VALUES
(1, 3, 12, 'Salt Lake', 'April Fools Day Sale 21', '2021-03-18', '0.00'),
(2, 3, 11, 'Salt Lake', 'April Fools Day Sale 21', '2021-03-18', '0.00'),
(3, 3, 12, 'Salt Lake', 'April Fools Day Sale 21', '2021-03-18', '0.00'),
(4, 4, 10, 'Salt Lake', 'April Fools Day Sale 21', '2021-03-18', '0.00'),
(5, 4, 14, 'Salt Lake', 'April Fools Day Sale 21', '2021-03-18', '0.00'),
(6, 4, 14, 'Salt Lake', 'April Fools Day Sale 21', '2021-03-18', '0.00'),
(7, 5, 12, 'Salt Lake', 'April Fools Day Sale 21', '2021-03-18', '0.00'),
(8, 5, 14, 'Salt Lake', 'April Fools Day Sale 21', '2021-03-18', '0.00'),
(9, 5, 3, 'Salt Lake', 'April Fools Day Sale 21', '2021-03-18', '0.00'),
(10, 6, 3, 'Salt Lake', 'April Fools Day Sale 21', '2021-03-18', '0.00'),
(11, 6, 4, 'Salt Lake', 'April Fools Day Sale 21', '2021-03-18', '0.00'),
(12, 6, 4, 'Salt Lake', 'April Fools Day Sale 21', '2021-03-18', '0.00'),
(13, 7, 5, 'Salt Lake', 'April Fools Day Sale 21', '2021-03-18', '0.00'),
(14, 7, 5, 'Salt Lake', 'April Fools Day Sale 21', '2021-03-18', '0.00'),
(15, 7, 3, 'Salt Lake', 'April Fools Day Sale 21', '2021-03-18', '0.00'),
(16, 7, 3, 'Salt Lake', 'April Fools Day Sale 21', '2021-03-18', '0.00'),
(17, 8, 5, 'Salt Lake', 'April Fools Day Sale 21', '2021-03-18', '0.00'),
(18, 8, 7, 'Salt Lake', 'April Fools Day Sale 21', '2021-03-18', '0.00'),
(19, 8, 9, 'Salt Lake', 'April Fools Day Sale 21', '2021-03-18', '0.00'),
(20, 8, 9, 'Salt Lake', 'April Fools Day Sale 21', '2021-03-18', '0.00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
