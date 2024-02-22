-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2023 at 08:27 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farmdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(12, 'Fruits', 'fruits'),
(13, 'Vegetables', 'vegetables'),
(16, 'Grains', 'grains');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(110, 88, 31, 4),
(111, 88, 37, 3),
(112, 89, 53, 15),
(113, 89, 54, 11),
(114, 90, 51, 11),
(115, 91, 55, 30),
(116, 92, 52, 15),
(117, 92, 56, 25),
(118, 92, 34, 10),
(119, 93, 37, 10),
(120, 93, 36, 9),
(121, 93, 31, 9),
(122, 94, 34, 50),
(123, 95, 55, 100),
(124, 96, 32, 12),
(125, 96, 36, 10),
(126, 97, 56, 120),
(127, 97, 36, 5),
(128, 97, 51, 9),
(129, 98, 35, 4),
(130, 98, 55, 80);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL,
  `description` text NOT NULL,
  `num_products` int(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `price`, `photo`, `date_view`, `counter`, `description`, `num_products`) VALUES
(31, 12, 'banana', 'banana', 60, 'banana.png', '2023-01-22', 1, '', 17),
(32, 12, 'Mango', 'mango', 35, 'mango.jpg', '2023-04-01', 1, '', 58),
(34, 12, 'Grapes', 'grapes', 45, 'grapes_1673606668.png', '2023-01-24', 1, '', 30),
(35, 13, 'Carrot', 'carrot', 30, 'carrot.jpg', '2024-01-25', 1, '', 25),
(36, 13, 'Cabbage', 'cabbage', 25, 'cabbage.jpg', '2023-01-25', 1, '', 36),
(37, 13, 'Potato', 'potato', 30, 'potato.jpg', '2023-01-22', 1, '', 57),
(51, 12, 'Buko', 'buko', 24, 'coconut.jpg', '2023-01-25', 1, '', 10),
(52, 13, 'Sayote', 'sayote', 10, 'sayote.png', '2023-01-24', 1, '', 15),
(53, 13, 'Ampalaya', 'ampalaya', 15, 'ampalaya.png', '2023-01-02', 1, '', 15),
(54, 12, 'Rambutan', 'rambutan', 34, 'rambutan.png', '2023-01-02', 1, '', 39),
(55, 16, 'Wheat', 'wheat', 19, 'wheat.jpg', '2024-01-25', 1, '', 190),
(56, 16, 'Soy beans', 'soy-beans', 41, 'soy-beans.png', '2024-02-01', 1, '', 55);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(88, 21, 'UgoI2q7jLEbn', '2023-01-01'),
(89, 21, 'ygof5Yw8alQF', '2023-01-02'),
(90, 21, 'wJDiu1cOTeUC', '2023-01-03'),
(91, 21, '2XwPSljqgE9M', '2023-01-10'),
(92, 21, '5OqcLBak71il', '2023-01-19'),
(93, 21, 'RDoCLf2TdiEH', '2023-01-22'),
(94, 21, 'mEdhxvN743fl', '2023-01-24'),
(95, 21, 'UFCyScNBijOr', '2023-02-15'),
(96, 21, '3XiK41hJM20A', '2023-04-01'),
(97, 21, 'z4HDv1lb0yXR', '2023-01-25'),
(98, 21, 'f64Z1bUK7ESX', '2024-01-25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Cedric', 'Co', '', '', 'salmon boso.png', 1, '', 'BsqYTf3ni4byz7I', '2020-12-30'),
(21, 'co@gmail.com', '$2y$10$u6t4nv0KvVTvVRnIc4cv1OW1y9MhmmWGyqizMq33LlU.sU/3KQ.iy', 0, 'ni', 'san', 'blabla', '123', '', 1, 't7YDn9vT8KHN', '7kaViBC1pL8AK5M', '2023-01-12'),
(22, 'tes@email', '$2y$10$kl4j1mMOc7omJwlkCIbppuyaiuO2GzqrYt6WOzjjb3drpIDzEPQcy', 0, 'tes', 'test1', '', '', '', 1, '26UuYOwmiDcC', '', '2023-01-19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
