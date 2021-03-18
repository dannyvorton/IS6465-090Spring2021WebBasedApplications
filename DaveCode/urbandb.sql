-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 18, 2021 at 05:07 AM
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
-- Table structure for table `campaign`
--

DROP TABLE IF EXISTS `campaign`;
CREATE TABLE IF NOT EXISTS `campaign` (
  `camp_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`camp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `cust_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(100) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `role` varchar(20) NOT NULL,
  PRIMARY KEY (`cust_id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `first_name`, `last_name`, `email`, `phone_number`, `address`, `username`, `password`, `role`) VALUES
(1, 'Pavel', 'Everist', 'peverist0@salon.com', '286-777-5385', '19876 Eastlawn Lane', 'peverist0', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(2, 'Sorcha', 'Zettoi', 'szettoi1@prweb.com', '686-890-3769', '086 Harbort Lane', 'szettoi1', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(3, 'Barbaraanne', 'Northall', 'bnorthall2@techcrunch.com', '585-572-8900', '80 Blackbird Plaza', 'bnorthall2', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(4, 'Gratiana', 'Curneen', 'gcurneen3@sitemeter.com', '292-818-5407', '01 Thompson Park', 'gcurneen3', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(5, 'Casey', 'Bladesmith', 'cbladesmith4@ft.com', '730-287-1291', '10748 Muir Place', 'cbladesmith4', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(6, 'Tabby', 'Blodg', 'tblodg5@reuters.com', '425-742-5994', '8946 American Ash Road', 'tblodg5', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(7, 'Codi', 'Kilmaster', 'ckilmaster6@google.it', '452-311-2113', '70 Vernon Street', 'ckilmaster6', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(8, 'Cyrill', 'Ovid', 'covid7@meetup.com', '861-655-5834', '503 Stang Court', 'covid7', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(9, 'George', 'Giottini', 'ggiottini8@tumblr.com', '112-857-9114', '9832 Mallard Junction', 'ggiottini8', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(10, 'Tucky', 'Barendtsen', 'tbarendtsen9@ucla.edu', '316-661-7684', '229 Lighthouse Bay Point', 'tbarendtsen9', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(11, 'Shawnee', 'Piddlehinton', 'spiddlehintona@gov.uk', '309-861-2921', '1 Birchwood Point', 'spiddlehintona', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(12, 'Lambert', 'Chasmoor', 'lchasmoorb@soup.io', '686-458-2399', '496 Bunker Hill Terrace', 'lchasmoorb', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(13, 'Rosy', 'Garett', 'rgarettc@ovh.net', '648-299-6901', '293 Corscot Point', 'rgarettc', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(14, 'Eliza', 'Lober', 'eloberd@bravesites.com', '545-738-0459', '27 Ohio Point', 'eloberd', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(15, 'Harwilll', 'Hands', 'hhandse@alexa.com', '815-697-2070', '538 Mayer Center', 'hhandse', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(16, 'Madalyn', 'Vinck', 'mvinckf@phpbb.com', '306-782-0872', '356 Northport Road', 'mvinckf', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(17, 'Torry', 'Newhouse', 'tnewhouseg@google.com.hk', '910-389-5331', '2 Maple Alley', 'tnewhouseg', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(18, 'Josey', 'Hyndson', 'jhyndsonh@who.int', '413-827-2305', '8 Riverside Hill', 'jhyndsonh', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(19, 'Renard', 'Muzzillo', 'rmuzzilloi@delicious.com', '470-739-1198', '9 3rd Terrace', 'rmuzzilloi', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(20, 'Neysa', 'Courtliff', 'ncourtliffj@liveinternet.ru', '612-683-6873', '0 Sheridan Park', 'ncourtliffj', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(21, 'Hi', 'Gyorgy', 'hgyorgyk@virginia.edu', '149-973-5284', '53980 Sachs Lane', 'hgyorgyk', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(22, 'Emanuele', 'Deniso', 'edenisol@google.fr', '888-402-9728', '7 Farmco Terrace', 'edenisol', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(23, 'Jacqui', 'Hansberry', 'jhansberrym@multiply.com', '654-965-9759', '52586 3rd Center', 'jhansberrym', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(24, 'Tamma', 'Wiggington', 'twiggingtonn@huffingtonpost.com', '691-620-7591', '686 Mendota Circle', 'twiggingtonn', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(25, 'Dareen', 'Spinola', 'dspinolao@flickr.com', '138-341-4559', '3390 Portage Circle', 'dspinolao', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(26, 'Rob', 'Ber', 'robber@net.net', '555-555-4545', '45 Holy Oaks', 'rber1', '$2y$10$b5PxwvMwpq3Cutsq4WrIneQnzrx2u9ohv/kr9.hs3vtZO6xGzv4r2', 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `emp_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(128) NOT NULL,
  `role` varchar(20) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `first_name`, `last_name`, `position`, `username`, `password`, `role`) VALUES
(1, 'Ignatius', 'Woltering', 'Automation Specialist I', 'iwoltering0', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(28, 'Bob', 'Jones', 'Administrator II', 'bjones', 'password123', 'admin'),
(3, 'Wilbert', 'Surman-Wells', 'Nurse Practicioner', 'wsurmanwells2', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(4, 'Shelton', 'Ough', 'Social Worker', 'sough3', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(5, 'Domini', 'Happs', 'Senior Cost Accountant', 'dhapps4', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(6, 'Yolane', 'Carpenter', 'Staff Scientist', 'ycarpenter5', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(7, 'Andee', 'Larrett', 'Help Desk Technician', 'alarrett6', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(8, 'Martelle', 'Forsey', 'Financial Advisor', 'mforsey7', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(9, 'Xever', 'Lewsie', 'Nurse', 'xlewsie8', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(10, 'Caryl', 'Collyer', 'Associate Professor', 'ccollyer9', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(11, 'Gran', 'Gourley', 'Teacher', 'ggourleya', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(12, 'Kelsey', 'Dingle', 'Graphic Designer', 'kdingleb', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(13, 'Sergent', 'Billson', 'Quality Control Specialist', 'sbillsonc', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(14, 'Bink', 'Trotton', 'Assistant Professor', 'btrottond', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(15, 'Matt', 'Oneal', 'Software Engineer IV', 'moneale', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(16, 'Kylie', 'Iacovo', 'Sales Representative', 'kiacovof', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(17, 'Effie', 'Ponten', 'VP Accounting', 'eponteng', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(18, 'Stanislas', 'Tarbard', 'Director of Sales', 'starbardh', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(19, 'Donny', 'Sharphouse', 'Structural Analysis Engineer', 'dsharphousei', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(20, 'Gabriele', 'Berwick', 'Civil Engineer', 'gberwickj', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(29, 'Lucy', 'Brown', 'Therapist', 'lbrown', 'password123', 'employee'),
(21, 'Dave', 'Hyde', 'admin', 'dhyde1', '$2y$10$9kvOSrBJuY/PikTtzzT2ke9QRoUj0xeZfLmBZzoQOkg.rSph4d3Cq', 'admin'),
(22, 'Amelia', 'Le', 'admin', 'ale1', '$2y$10$9kvOSrBJuY/PikTtzzT2ke9QRoUj0xeZfLmBZzoQOkg.rSph4d3Cq', 'admin'),
(23, 'Dan', 'Orton', 'admin', 'dorton1', '$2y$10$9kvOSrBJuY/PikTtzzT2ke9QRoUj0xeZfLmBZzoQOkg.rSph4d3Cq', 'admin'),
(30, 'Chuck', 'Cheese', 'Entertainer', 'ccheese', 'password123', 'employee');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
  `inv_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `prod_name` varchar(100) NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `images` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`inv_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inv_id`, `prod_name`, `quantity`, `price`, `category`, `images`) VALUES
(1, 'Floral Wrap Dress', 100, '45.00', 'dress', 'images/wrap-dress1.png'),
(2, 'Fringe Hem Dress', 100, '35.00', 'dress', 'images/fringe-dress1.png'),
(3, 'Floral Square Neck Dress', 100, '55.00', 'dress', 'images/floral-squareneck-dress1.png'),
(4, 'Blue Pattern Tweed Dress', 100, '55.00', 'dress', 'images/blue-pattern-dress1.png'),
(5, 'Puff Sleeves Pink Dress', 100, '35.00', 'dress', 'images/puff-pink-dress1.png'),
(6, 'Open-Shoulder Crop Top', 100, '25.00', 'top', 'images/tie-shoulder-croptop1.png'),
(7, 'Brown Chains Skater Skirt', 100, '30.00', 'bottom', 'images/brown-chain-skirt1.png'),
(8, 'Bell Sleeves Fringe Crop Top', 100, '30.00', 'top', 'images/fringe-top1.png'),
(9, 'White Crop Cardigan', 100, '20.00', 'top', 'images/white-cardigan1.png'),
(10, 'Brown Plaid Button Up', 100, '25.00', 'top', 'images/brown-plaid-buttonup1.png'),
(11, 'Black Distressed Jeans', 100, '45.00', 'bottom', 'images/black-ripped-jeans1.png'),
(12, 'Black Leather Top', 100, '15.00', 'top', 'images/black-leather-top1.png'),
(13, 'Open Black Floral Dress', 100, '45.00', 'dress', 'images/allover-floral-dress1.png'),
(14, 'Green Crop Top', 100, '20.00', 'top', 'images/green-top1.png'),
(15, 'Two Tones Patch Jeans', 100, '45.00', 'bottom', 'images/green-brown-jeans1.png'),
(16, 'White Lantern Sleeves Dress', 100, '40.00', 'dress', 'images/white-dress1.png'),
(17, 'Blue Skater Skirt', 100, '25.00', 'bottom', 'images/blue-skater-skirt1.png'),
(18, 'Orange Floral Crop Top', 100, '15.00', 'top', 'images/orange-top1.png'),
(19, 'Swiss Dot White Dress', 100, '55.00', 'dress', 'images/poka-dot-white-dress1.png'),
(20, 'Two Tones Shorts', 100, '25.00', 'bottom', 'images/two-tone-shorts1.png'),
(21, 'White Lace Dress', 100, '55.00', 'dress', 'images/white-lace-dress1.png'),
(22, 'Butterfly, Patch Jeans', 100, '35.00', 'bottom', 'images/butterfly-jeans1.png'),
(23, 'Blue Sleeveless Open Back Dress', 100, '30.00', 'dress', 'images/blue-sleeveless-dress1.png'),
(24, 'Black Argyle Cardigan', 100, '35.00', 'top', 'images/black-sweater1.png'),
(25, 'Letter Pullover', 100, '39.00', 'dress', 'images/sweater1.png'),
(26, 'Zebra Pattern Pants', 100, '35.00', 'bottom', 'images/zebra-pants1.png'),
(27, 'White Flare Pants', 100, '25.00', 'bottom', 'images/white-flare-pants1.png'),
(28, 'Yellow V-Neck', 100, '25.00', 'top', 'images/yellow-vneck-top1.png'),
(29, 'White Drawstring Sweatpants', 100, '20.00', 'bottom', 'images/white-sweats1.png'),
(30, 'White Chain Seater', 100, '20.00', 'top', 'images/white-chaint-sweater1.png'),
(31, 'Purple Shorts', 100, '25.00', 'bottom', 'images/purple-shorts1.png'),
(32, 'Flap Pocket Cord Pants', 100, '30.00', 'bottom', 'images/flap-pocket-cord-pants1.png'),
(33, 'Truck Print Oversized T-Shirt', 100, '15.00', 'top', 'images/truck-tshirt1.png'),
(34, 'Strawberry Shorts', 100, '25.00', 'bottom', 'images/strawberry-shorts1.png'),
(35, 'Offshoulder Blue and White Dress', 100, '35.00', 'dress', 'images/offshoulder-dress1.png'),
(36, 'Black Bodycon Dress', 100, '25.00', 'dress', 'images/black-bodycon-dress1.png'),
(37, 'Black Sheer Dress', 100, '50.00', 'dress', 'images/black-sheer-dress1.png'),
(38, 'Black and White Jeans', 100, '45.00', 'bottom', 'images/black-white-jeans1.png'),
(39, 'Geen Self-tie Crop Top', 100, '15.00', 'top', 'images/front-tie-top1.png');

-- --------------------------------------------------------

--
-- Table structure for table `orderline`
--

DROP TABLE IF EXISTS `orderline`;
CREATE TABLE IF NOT EXISTS `orderline` (
  `line_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `prod_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(11,2) NOT NULL,
  PRIMARY KEY (`line_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `emp_id` int NOT NULL,
  `cust_id` int NOT NULL,
  `store_id` varchar(100) NOT NULL,
  `camp_id` varchar(100) DEFAULT NULL,
  `order_date` date NOT NULL,
  `total_price` decimal(11,2) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `pmt_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int UNSIGNED NOT NULL,
  `cust_id` int UNSIGNED NOT NULL,
  `credit_card` varchar(100) NOT NULL,
  `payment_date` date NOT NULL,
  PRIMARY KEY (`pmt_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `prod_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `vendor_id` int NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `prod_type` varchar(100) NOT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

DROP TABLE IF EXISTS `returns`;
CREATE TABLE IF NOT EXISTS `returns` (
  `return_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `inv_id` int NOT NULL,
  `return_date` date NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

DROP TABLE IF EXISTS `shipping`;
CREATE TABLE IF NOT EXISTS `shipping` (
  `ship_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ship_date` date NOT NULL,
  `delivery_date` date NOT NULL,
  `ship_cost` decimal(11,2) NOT NULL,
  `tracking_number` varchar(100) NOT NULL,
  PRIMARY KEY (`ship_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
('Modesta', 'Marnes', 'mmarnes0', '', 'user'),
('Chrissy', 'Stuehmeyer', 'cstuehmeyer1', '', 'user'),
('Valentijn', 'Blaksland', 'vblaksland2', '', 'user'),
('Rochester', 'Danihel', 'rdanihel3', '', 'user'),
('Thedric', 'Annion', 'tannion4', '', 'user'),
('Beverlee', 'Gulliver', 'bgulliver5', '', 'user'),
('Anne', 'Coote', 'acoote6', '', 'user'),
('Danielle', 'Mitchely', 'dmitchely7', '', 'user'),
('Henka', 'Evennett', 'hevennett8', '', 'user'),
('Janela', 'Collings', 'jcollings9', '', 'user'),
('Bekki', 'Sends', 'bsendsa', '', 'user'),
('Rozanna', 'Deny', 'rdenyb', '', 'user'),
('Humfried', 'Roskilly', 'hroskillyc', '', 'user'),
('Xaviera', 'Dilawey', 'xdilaweyd', '', 'user'),
('Leia', 'Baack', 'lbaacke', '', 'user'),
('Kris', 'Guyon', 'kguyonf', '', 'user'),
('Sabina', 'Verman', 'svermang', '', 'user'),
('Trueman', 'Landeg', 'tlandegh', '', 'user'),
('Clare', 'Sigart', 'csigarti', '', 'user'),
('Merry', 'Cadogan', 'mcadoganj', '', 'user'),
('Clarabelle', 'Gabotti', 'cgabottik', '', 'user'),
('Eduino', 'Rodie', 'erodiel', '', 'user'),
('Nathanial', 'Bolver', 'nbolverm', '', 'user'),
('Hayden', 'Hurley', 'hhurleyn', '', 'user'),
('Anton', 'Breheny', 'abrehenyo', '', 'user'),
('Amelia', 'Le', 'ale', '', 'admin'),
('Dan', 'Orton', 'dorton', '', 'admin'),
('Dave', 'Hyde', 'dhyde', '$2y$10$haw5bt1J1LenhpFSNxMp..Lj/UxQFeOCUfAhglrqKIiCl4IhHUAky', 'admin'),
('Frank', 'Smith', 'fsmith', 'password123', 'user'),
('Walter', 'Sobchak', 'wsobchak', 'password123', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
CREATE TABLE IF NOT EXISTS `vendor` (
  `vendor_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `vendor_name` varchar(100) NOT NULL,
  `vendor_address` varchar(100) NOT NULL,
  PRIMARY KEY (`vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
