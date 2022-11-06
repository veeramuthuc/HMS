-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2022 at 04:42 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `drugstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `category_id` int(10) DEFAULT NULL,
  `sub_category_title` varchar(200) DEFAULT NULL,
  `sub_category_img` text CHARACTER SET utf8 DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `sub_category_title`, `sub_category_img`, `created_date`) VALUES
(364, 364, 'Diapering', NULL, '2022-11-01 22:06:31'),
(365, 364, 'Baby Food', NULL, '2022-11-01 22:06:31'),
(366, 364, 'Baby Personal Care', NULL, '2022-11-01 22:06:31'),
(367, 365, 'Health Drink', NULL, '2022-11-01 22:06:31'),
(368, 365, 'Health Food', NULL, '2022-11-01 22:06:31'),
(369, 365, 'Sports Nutrition', NULL, '2022-11-01 22:06:31'),
(370, 365, 'Vitamins & Supliments', NULL, '2022-11-01 22:06:31'),
(371, 365, 'Menerals', NULL, '2022-11-01 22:06:31'),
(372, 366, 'Skin Care', NULL, '2022-11-01 22:06:31'),
(373, 366, 'Hair Care', NULL, '2022-11-01 22:06:31'),
(374, 366, 'Oral Care', NULL, '2022-11-01 22:06:31'),
(375, 366, 'Women Care', NULL, '2022-11-01 22:06:31'),
(376, 366, 'Men Care', NULL, '2022-11-01 22:06:31'),
(377, 367, 'Health Concern', NULL, '2022-11-01 22:06:31'),
(378, 367, 'Herbs', NULL, '2022-11-01 22:06:31'),
(379, 367, 'Herbal Juice', NULL, '2022-11-01 22:06:31'),
(380, 368, 'test', 'assets/images/ProductImage/category/20221101051131000000.png', '2022-11-01 22:06:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=381;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
