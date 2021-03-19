-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 19, 2021 at 11:41 PM
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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(128) NOT NULL,
  `role` varchar(25) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`first_name`, `last_name`, `username`, `password`, `role`) VALUES
('Amelia', 'Le', 'Ale', '$2y$10$IYdL.RAzefjN8fWVSKmcpeUYLHIgb2WrQ6MKwuSDWsGzY80rqpljK', 'admin'),
('Dan', 'Orton', 'dorton', '$2y$10$ghf72HZUuIab6AkwTS.wTugHdmJKhWEb24VqefRwpSyqrg1gW.ek2', 'admin'),
('Quentin', 'Tarantino', 'qtara', '$2y$10$qwRIY6YWKaESsb6tyjyknOEIHDzeNCHaB6oxqOkwVK5oAoYvcIgB.', 'user'),
('Paula', 'Abdul', 'pabdul', '$2y$10$ITYAYw0r7Lo2TJCBSS23ROADY9/Qv/Ow8U/2ZY/9X6m6I7BajNl7i', 'admin'),
('Olivia', 'John', 'ojohn', '$2y$10$ROyyxbmTLUmZqNQTHy6KWuWu4Ve.EQN/Nr.gCMSlpx0B2FDDigRMS', 'user'),
('Nolan', 'Ryan', 'nryan', '$2y$10$.4135JnF61b0K1hg9UowSeZzcA2pku7uGNRSj7DA9Xs/fmjdChcOC', 'user'),
('Dave', 'Hyde', 'dhyde', '$2y$10$haw5bt1J1LenhpFSNxMp..Lj/UxQFeOCUfAhglrqKIiCl4IhHUAky', 'admin'),
('Alan', 'Wake', 'awake', '$2y$10$6Ic/rPf2oSwBcj88ZuycaekiKoihVE9VnTFptzG3f3yWr0BZQx3gK', 'user'),
('Fred', 'Jones', 'fjones', '$2y$10$JwuNy3m9q4lKsostBXyDY.jkspgTwVQvDMMVgsuUp032d8ZqcC1IG', 'admin'),
('Bobbie', 'Dahl', 'bdahl', '$2y$10$whzScq0GdURrcTXatPJYMuoOnv3CkqvVjDwl8q0xwgNkh24zYko4C', 'user'),
('Chuck', 'Brown', 'cbrown1', '$2y$10$aHyov0DMJFHn1yYO2XVAluPkLcnbHS7WG9lA649GJ3gAeMZtA0lmW', 'user'),
('Donald', 'Troop', 'dtroop', '$2y$10$/K64/ZEf4DeAo2UuG4vLsuYMdseEeZhjjBaTxgVHfeLho4xvRjWii', 'user'),
('Emile', 'Hart', 'ehart', '$2y$10$zcK/iISaKr4lpTKUWddZKOCz9yc2xhdZbUtjV6iORS7LK6oWDbwvm', 'user'),
('Francis', 'Fish', 'ffish', '$2y$10$IzMNhuuWP/.ekA6mMqTvAumFe93EdSmP7.gT6VWdS2/726P0f2poW', 'user'),
('Greg', 'Greggers', 'ggreg', '$2y$10$3752FSlzhtf5.7cqqWl7auD114IUyoBCAjI2k3.thAcJV.kBISPNK', 'user'),
('Holly', 'Ivy', 'hivy', '$2y$10$HeXv7z0JvXrIc24LAgq36e//qmxJDauvFAPcuJIvswLDqBdEJp/Rq', 'user'),
('Indiana', 'Jones', 'ijones', '$2y$10$zjk./Q2gwIXvcOdm0LHSWO.XXLfRDysQyRZ0uhr8T2eWIYJOjrBGe', 'user'),
('Jake', 'Pirate', 'jp', '$2y$10$dcFjQpGg27n81o8a8nKzH.5dMMUvScGTlSCWvB/1k6Eo9qFV7h.2C', 'user'),
('Kenny', 'South', 'ksouth', '$2y$10$nVuboCcaJaQBuubaKuj1YufKb0Xsw56KMmpSBntEtz30R2Tczosmq', 'user'),
('Lisa', 'Lisa', 'lisa2', '$2y$10$YWxKaiA.A33bqTlFg4Sf8eFGJJAu7VJB1WOPQeQnbm6EkXEJSPsOG', 'user'),
('Magic', 'Johnson', 'lakers32', '$2y$10$1FLMg/EuRcaT1cLq2wSEyOjktPUD/d3unW0VkTBpDYfa3QU81wFdW', 'user');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
