SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `suburban_outfitters` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `suburban_outfitters`;

DROP TABLE IF EXISTS `vendor`;
CREATE TABLE IF NOT EXISTS `vendor` (
	`vendorID` int(11) NOT NULL AUTO_INCREMENT,
	`vendorName` varchar(100) NOT NULL,
	`vendor_address` varchar(100) NOT NULL,
	
	PRIMARY KEY(`vendorID`)

)ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
	`prodID` int(11) NOT NULL AUTO_INCREMENT,
	`vendorID` int(11) DEFAULT NULL,
	`prodName` varchar(100) DEFAULT NULL,
	`prodType` varchar(100) DEFAULT NULL,
	`price` int(11) DEFAULT NULL,
	`selection` varchar(128) DEFAULT NULL,
	`imagepath1` varchar(128) DEFAULT NULL,
	`imagepath2` varchar(128) DEFAULT NULL,
	`imagepath3` varchar(128) DEFAULT NULL,
	
	PRIMARY KEY(`prodID`),
	KEY `vendorID` (`vendorID`)
	
)ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `campaign`;
CREATE TABLE IF NOT EXISTS `campaign` (
	`campID` int(11) NOT NULL AUTO_INCREMENT,
	`prodID` int(11) DEFAULT NULL,
	`discount` int(11) DEFAULT NULL,
	`details` varchar(100) DEFAULT NULL,
	`start_date` DATE DEFAULT NULL,
	`end_date` DATE DEFAULT NULL,
	
	PRIMARY KEY(`campID`),
	KEY `prodID` (`prodID`)
	
)ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
	`invID` int(11) NOT NULL AUTO_INCREMENT,
	`prodID` int(11) DEFAULT NULL,
	`vendorID` int(11) DEFAULT NULL,
	date_ordered DATE DEFAULT NULL,
	quantity int(11) DEFAULT NULL,
	cost int(11) DEFAULT NULL,
	imagepath varchar(128) DEFAULT NULL,
	
	PRIMARY KEY(`invID`),
	KEY `prodID` (`prodID`),
	KEY `vendorID` (`vendorID`)
	
)ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
	`empID` int UNSIGNED NOT NULL AUTO_INCREMENT,
	`first_name` varchar(100) DEFAULT NULL,
	`last_name` varchar(100) DEFAULT NULL,
	`position` varchar(100) DEFAULT NULL,
	`username` varchar(100) DEFAULT NULL,
	`password` varchar(100) DEFAULT NULL,
	`role` varchar(20) NOT NULL,
	
	PRIMARY KEY(`empID`)
	
)ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
	`custID` int UNSIGNED NOT NULL AUTO_INCREMENT,
	`first_name` varchar(100) DEFAULT NULL,
	`last_name` varchar(100) DEFAULT NULL,
	`email` varchar(100) DEFAULT NULL,
	`phone_number` int(11) DEFAULT NULL,
	`address` varchar(150) DEFAULT NULL,
	`username` varchar(100) DEFAULT NULL,
	`password` varchar(100) DEFAULT NULL,
	`role` varchar(20) NOT NULL,
	
	PRIMARY KEY(`custID`)
	
)ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
	`orderID` int(11) NOT NULL AUTO_INCREMENT,
	`custID` int(11) DEFAULT NULL,
	`campID` int(11) DEFAULT NULL,
	`orderDate` DATE DEFAULT NULL,
	`total_price` int(11) DEFAULT NULL,
	
	PRIMARY KEY(`orderID`),
	KEY `custID` (`custID`),
	KEY `campID` (`campID`)
	
)ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
	`paymentID` int(11) NOT NULL AUTO_INCREMENT,
	`orderID` int(11) DEFAULT NULL,
	`custID` int(11) DEFAULT NULL,
	`cardNumber` int(50) DEFAULT NULL,
	`paymentDate` DATE DEFAULT NULL,
	
	PRIMARY KEY(`paymentID`),
	KEY `orderID` (`orderID`),
	KEY `custID` (`custID`)

)ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `shipping`;
CREATE TABLE IF NOT EXISTS `shipping` (
	`shipID` int(11) NOT NULL AUTO_INCREMENT,
	`orderID` int(11) DEFAULT NULL,
	`ship_date` DATE DEFAULT NULL,
	`delivery_date` DATE DEFAULT NULL,
	`ship_cost` int(11) DEFAULT NULL,
	`tracking_number` int(50) DEFAULT NULL,
	
	PRIMARY KEY(`shipID`),
	KEY `orderID` (`orderID`)

)ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `return`;
CREATE TABLE IF NOT EXISTS `return` (
	`returnID` int(11) NOT NULL AUTO_INCREMENT,
	`orderID` int(11) DEFAULT NULL,
	`invID` int(11) DEFAULT NULL,
	`return_date` DATE DEFAULT NULL,
	`quantity` int(11) DEFAULT NULL,
	
	PRIMARY KEY(`returnID`),
	KEY `orderID` (`orderID`),
	KEY `invID` (`invID`)
	
)ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `orderline`;
CREATE TABLE IF NOT EXISTS `orderline` (
	`lineID` int(11) NOT NULL AUTO_INCREMENT,
	`orderID` int(11) DEFAULT NULL,
	`prodID` int(11) DEFAULT NULL,
	`quantity` int(11) DEFAULT NULL,
	`price` int(11) DEFAULT NULL,
	
	PRIMARY KEY(`lineID`),
	KEY `orderID` (`orderID`),
	KEY `prodID` (`prodID`)
	
)ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(128) NOT NULL,
  `role` varchar(25) NOT NULL,
  
  PRIMARY KEY (`username`)
  
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

