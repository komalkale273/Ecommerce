

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(125) NOT NULL,
  `lastName` varchar(125) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `confirmCode` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;



INSERT INTO `admin` (`id`, `firstName`, `lastName`, `email`, `mobile`, `address`, `password`, `type`, `confirmCode`) VALUES
(4, 'Komal', 'Kale', 'xyz@gmail.com', '0123456789', 'Amravati', '12345678', 'manager', '0');



DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `ofname` text NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `oplace` text NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `dstatus` varchar(10) NOT NULL DEFAULT 'no',
  `odate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ddate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;



INSERT INTO `orders` (`id`, `uid`, `ofname`, `pid`, `quantity`, `oplace`, `mobile`, `dstatus`, `odate`, `ddate`) VALUES
(1, NULL, 'Komal kale', 1, 2, 'Shubham,kale', '01609876543', 'no', '2018-09-21 13:05:07', NULL),
(2, NULL, 'Komal kale', 1, 3, 'radha,shimpale', '01609876543', 'no', '2018-09-21 13:08:55', NULL),
(3, NULL, 'komal kale', 2, 4, 'Gauri', '09876543123', 'no', '2018-09-21 13:13:04', NULL),
(4, NULL, 'komal kale', 4, 1, 'Manthan', '798345', 'no', '2018-09-21 13:18:47', NULL),
(5, NULL, 'komal kale', 9, 4, 'Uttar, pradesh', '01609876543', 'no', '2018-09-22 02:01:02', NULL),
(6, NULL, 'komal kale', 2, 1, 'manali', '01609876543', 'no', '2018-09-22 02:09:29', NULL),
(7, 9, 'komal kale', 2, 1, 'Manali', '01609876543', 'no', '2018-09-22 02:10:46', NULL),
(8, 9, 'komal kale', 1, 1, 'manali', '0994', 'no', '2018-09-22 03:04:13', NULL),
(9, 9, 'Tuka kale', 12, 4, 'Aasam', '01609876543', 'no', '2018-09-22 03:21:14', '2018-09-29'),
(10, 9, 'Rani', 13, 1, 'Aasam', '01609876543', 'no', '2018-09-22 03:22:05', '2018-09-29');



DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pName` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL,
  `available` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `pCode` varchar(20) NOT NULL,
  `picture` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;


INSERT INTO `products` (`id`, `pName`, `price`, `description`, `available`, `category`, `item`, `pCode`, `picture`, `date`) VALUES
(1, 'T-Shirt', 120, 'T-Shirt', 4, 'tshirt', 't-shirt', 't-007', 'MSTS14738.jpg', '2018-09-20 07:10:40'),
(2, 'Baborry wallet', 6000, 'Baborry-Double-Zipper-Coin-Bag-RFID-Blocking-Men-Wallets-New-Brand-PU-Leather-Wallet-Money-Purses', 3, 'wallet', 'wallet', 'w-004', 'IMG_1212.jpg', '2018-09-20 07:40:28'),
(3, 'Loafer Shoes', 2000, 'Loafer black shoes', 8, 'shoes', 'shoes', 's-001', '8544789_5_.jpg', '2018-09-20 08:33:57'),
(4, 'Artificial Belt', 1200, 'Black artificial belt', 9, 'belt', 'belt', 'b-001', '0283BLT.jpg', '2018-09-20 08:35:44'),
(5, 'Polo T-shirt', 500, 'Polo t-shirt', 10, 'tshirt', 't-shirt', 's-002', 'lp00-2.jpg', '2018-09-20 08:40:06'),
(6, 'T-shirt', 300, 'Polo colorful t-shirt', 12, 'tshirt', 't-shirt', 't-003', 'yellow_2_.jpg', '2018-09-20 08:41:18'),
(7, 'Tshirt', 200, 'Design t-shirt', 10, 'tshirt', 't-shirt', 't-004', 'MSTSV14042.jpg', '2018-09-20 08:42:11'),
(8, 'T-shirt', 200, 'Color t-shirt', 20, 'tshirt', 't-shirt', 't-005', 'MSTS14759.jpg', '2018-09-20 08:45:39'),
(9, 'Men\'s Tshirt', 500, 'Colorful men\'s t-shirt', 20, 'tshirt', 't-shirt', 't-006', 'MSTSV14046.jpg', '2018-09-20 08:57:07'),
(10, 'Sports tshirt', 1000, 'Real madrid t-shirt', 5, 'tshirt', 't-shirt', 't-007', 'MSTSV14039.jpg', '2018-09-20 08:58:38'),
(12, 'T-shirt', 300, 'Design t-shirt', 10, 'tshirt', 't-shirt', 't-010', 'MSTSV14049.jpg', '2018-09-20 09:02:04'),
(13, 'Leather Shoes', 2000, 'Best leather shoes', 10, 'shoes', 'shoes', 's-002', '8546789_5_.jpg', '2018-09-21 10:39:32'),
(14, 'Belt', 2000, 'Nice belt', 20, 'belt', 'belt', 'b-003', 'gbdl18_1.png', '2018-10-01 03:47:08'),
(15, 'Belt', 300, 'Nice one belt', 20, 'belt', 'belt', 'b-004', '101010_1_.jpg', '2018-10-01 03:48:09'),
(16, 'Mens Belt', 300, 'Mens belt', 15, 'belt', 'belt', 'b-005', 'image4_2.jpg', '2018-10-01 03:49:08'),
(17, 'Leather Wallet', 100, 'Leather wallet', 10, 'wallet', 'wallet', 'w-005', 'Baborry-Double-Zipper-Coin-Bag-RFID-Blocking-Men-Wallets-New-Brand-PU-Leather-Wallet-Money-Purses.jpg_640x640.jpg', '2018-10-01 03:51:52'),
(18, 'Wallet', 300, 'Wallet', 20, 'wallet', 'wallet', 'w-007', '1881_G.jpg', '2018-10-01 03:52:43'),
(19, 'Black walllet', 300, 'Black mens wallet', 20, 'wallet', 'wallet', 'w-009', 'image5_1_2.jpg', '2018-10-01 03:53:37'),
(20, 'Men\'s Shoes', 1200, 'Men\'s shoes', 23, 'shoes', 'shoes', 's-003', 'IMG_2429.jpg', '2018-10-01 03:56:41'),
(21, 'Shoes', 2000, 'Formal Shoes', 12, 'shoes', 'shoes', 's-004', 'G51A7054.jpg', '2018-10-01 03:57:24');



DROP TABLE IF EXISTS `product_level`;
CREATE TABLE IF NOT EXISTS `product_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `v_shape` varchar(10) NOT NULL DEFAULT 'no',
  `polo` varchar(10) NOT NULL DEFAULT 'no',
  `clean_text` varchar(10) NOT NULL DEFAULT 'no',
  `design` varchar(10) NOT NULL DEFAULT 'no',
  `chain` varchar(10) NOT NULL DEFAULT 'no',
  `leather` varchar(10) NOT NULL DEFAULT 'no',
  `hook` varchar(10) NOT NULL DEFAULT 'no',
  `color` varchar(10) NOT NULL DEFAULT 'no',
  `formal` varchar(10) NOT NULL DEFAULT 'no',
  `converse` varchar(10) NOT NULL DEFAULT 'no',
  `loafer` varchar(10) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;



INSERT INTO `product_level` (`id`, `product_id`, `v_shape`, `polo`, `clean_text`, `design`, `chain`, `leather`, `hook`, `color`, `formal`, `converse`, `loafer`) VALUES
(1, 1, 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(2, 2, 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no'),
(3, 3, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'yes'),
(4, 4, 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no'),
(5, 5, 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(6, 6, 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(7, 7, 'yes', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(8, 8, 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(9, 9, 'yes', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(10, 10, 'yes', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(14, 14, 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no'),
(12, 12, 'yes', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(13, 13, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'yes'),
(15, 15, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'yes', 'no', 'no', 'no'),
(16, 16, 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no'),
(17, 17, 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no'),
(18, 18, 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no'),
(19, 19, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no'),
(20, 20, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'yes', 'no'),
(21, 21, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'yes', 'no', 'no');



DROP TABLE IF EXISTS `product_view`;
CREATE TABLE IF NOT EXISTS `product_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;



INSERT INTO `product_view` (`id`, `user_id`, `product_id`, `date`) VALUES
(1, 9, 9, '2018-09-22 02:19:30'),
(2, 9, 7, '2018-09-27 02:47:43'),
(3, 9, 12, '2018-09-22 03:20:59'),
(4, 9, 10, '2018-09-29 03:07:11'),
(5, 9, 5, '2018-09-22 03:19:19'),
(6, 9, 8, '2018-09-21 15:57:50'),
(7, 9, 6, '2018-09-22 02:12:54'),
(8, 9, 1, '2018-09-22 03:03:36');



DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `online` varchar(1) NOT NULL DEFAULT '0',
  `activation` varchar(3) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `mobile`, `reg_time`, `online`, `activation`) VALUES
(12, 'Komal', 'komalkael@gmail.com', 'komal', 'komalkale@180503', '', '2022-06-22 12:09:10', '0', 'yes'),
COMMIT;
