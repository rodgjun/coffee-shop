-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2024 at 10:15 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffeedb`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(128, 21, 59, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(17, 'Brewed Coffee', 'brewed-coffee'),
(18, 'Espresso', 'espresso'),
(19, 'Plant-based', 'plant-based'),
(20, 'Ice Blended', 'ice-blended'),
(21, 'Non Coffee', 'non-coffee'),
(22, 'Tea', 'tea'),
(23, 'Add ons', 'add-ons'),
(24, 'Pastry', 'pastry');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
(130, 98, 55, 80),
(131, 99, 57, 1),
(132, 100, 86, 2),
(133, 101, 77, 1),
(134, 102, 105, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `price`, `photo`, `date_view`, `counter`, `description`, `num_products`) VALUES
(57, 17, 'Kapeng Barako 12oz', 'kapeng-barako-12oz', 80, 'kapeng-barako-120z.jpg', '2024-05-16', 5, '', 49),
(58, 17, 'Kapeng Barako 16oz', 'kapeng-barako-16oz', 85, 'kapeng-barako-160z.jpg', '0000-00-00', 0, '', 50),
(59, 18, 'Americano 12oz', 'americano-12oz', 85, 'americano-12oz.jpeg', '2024-05-16', 2, '', 50),
(60, 18, 'Americano 16oz', 'americano-16oz', 90, 'americano-16oz_1715867057.jpeg', '0000-00-00', 0, '', 50),
(61, 18, 'Cafe Latte 12oz', 'cafe-latte-12oz', 110, 'cafe-latte-120z.jpg', '0000-00-00', 0, '', 50),
(62, 18, 'Cafe Latte 16oz', 'cafe-latte-16oz', 120, 'cafe-latte-160z.jpg', '0000-00-00', 0, '', 50),
(63, 18, 'Cappuccino 12oz', 'cappuccino-12oz', 110, 'cappuccino-12oz.jpg', '0000-00-00', 0, '', 50),
(64, 18, 'Cappuccino 16oz', 'cappuccino-16oz', 120, 'cappuccino-16oz_1715867202.jpg', '0000-00-00', 0, '', 50),
(65, 18, 'Cafe Mocha 12oz', 'cafe-mocha-12oz', 120, 'cafe-mocha-12oz.jpg', '0000-00-00', 0, '', 50),
(66, 18, 'Cafe Mocha 16oz', 'cafe-mocha-16oz', 140, 'cafe-mocha-16oz.jpg', '0000-00-00', 0, '', 50),
(67, 18, 'White Mocha 12oz', 'white-mocha-12oz', 120, 'white-mocha-12oz.jpg', '0000-00-00', 0, '', 50),
(68, 18, 'White Mocha 16oz', 'white-mocha-16oz', 140, 'white-mocha-16oz.jpg', '0000-00-00', 0, '', 50),
(69, 18, 'Caramel Macchiato 12oz', 'caramel-macchiato-12oz', 120, 'caramel-macchiato-12oz.jpg', '0000-00-00', 0, '', 50),
(70, 18, 'Caramel Macchiato 16oz', 'caramel-macchiato-16oz', 140, 'caramel-macchiato-16oz.jpg', '0000-00-00', 0, '', 50),
(71, 18, 'Spanish Latte 12oz', 'spanish-latte-12oz', 120, 'spanish-latte-12oz.jpeg', '0000-00-00', 0, '', 50),
(72, 18, 'Spanish Latte 16oz', 'spanish-latte-16oz', 140, 'spanish-latte-16oz.jpeg', '0000-00-00', 0, '', 50),
(73, 18, 'Community Coffee 12oz', 'community-coffee-12oz', 125, 'community-coffee-12oz.jpg', '0000-00-00', 0, '', 50),
(74, 18, 'Community Coffee 16oz', 'community-coffee-16oz', 145, 'community-coffee-16oz.jpg', '0000-00-00', 0, '', 50),
(75, 18, 'Affogato 12oz', 'affogato-12oz', 110, 'affogato-12oz.jpg', '0000-00-00', 0, '', 50),
(76, 18, 'Affogato 16oz', 'affogato-16oz', 140, 'affogato-16oz.jpg', '0000-00-00', 0, '', 50),
(77, 19, 'Mocha Oat Macchiato 12oz', 'mocha-oat-macchiato-12oz', 150, 'mocha-oat-macchiato-12oz.jpg', '2024-05-17', 1, '', 49),
(78, 19, 'Mocha Oat Macchiato 16oz', 'mocha-oat-macchiato-16oz', 160, 'mocha-oat-macchiato-16oz.jpg', '0000-00-00', 0, '', 50),
(79, 19, 'Dirty Horachata 12oz', 'dirty-horachata-12oz', 150, 'dirty-horachata-12oz_1715868293.jpg', '0000-00-00', 0, '', 50),
(80, 19, 'Dirty Horachata 16oz', 'dirty-horachata-16oz', 160, 'dirty-horachata-16oz.jpg', '0000-00-00', 0, '', 50),
(81, 19, 'Sub Oat Milk 12oz', 'sub-oat-milk-12oz', 30, 'sub-oat-milk-12oz.jpg', '0000-00-00', 0, '', 50),
(82, 19, 'Sub Granola Oat Milk 12oz', 'sub-granola-oat-milk-12oz', 35, 'sub-granola-oat-milk-12oz.jpg', '0000-00-00', 0, '', 50),
(83, 20, 'Vanilla 12oz', 'vanilla-12oz', 105, 'vanilla-12oz.jpg', '0000-00-00', 0, '', 50),
(84, 20, 'Vanilla 16oz', 'vanilla-16oz', 115, 'vanilla-16oz.jpg', '0000-00-00', 0, '', 50),
(85, 20, 'Cookies and Cream 12oz', 'cookies-and-cream-12oz', 105, 'cookies-and-cream-12oz.jpg', '0000-00-00', 0, '', 50),
(86, 20, 'Cookies and Cream 16oz', 'cookies-and-cream-16oz', 115, 'cookies-and-cream-16oz.jpg', '2024-05-17', 1, '', 48),
(87, 20, 'Salted Caramel 12oz', 'salted-caramel-12oz', 105, 'salted-caramel-12oz.jpg', '0000-00-00', 0, '', 50),
(88, 20, 'Salted Caramel 16oz', 'salted-caramel-16oz', 115, 'salted-caramel-16oz.jpg', '0000-00-00', 0, '', 50),
(89, 20, 'Strawberry 12oz', 'strawberry-12oz', 105, 'strawberry-12oz.jpg', '0000-00-00', 0, '', 50),
(90, 20, 'Strawberry 16oz', 'strawberry-16oz', 115, 'strawberry-16oz.jpg', '0000-00-00', 0, '', 50),
(91, 20, 'Chocolate 12oz', 'chocolate-12oz', 105, 'chocolate-120z.png', '0000-00-00', 0, '', 50),
(92, 20, 'Chocolate 16oz', 'chocolate-16oz', 115, 'chocolate-16oz_1715868626.png', '0000-00-00', 0, '', 50),
(93, 20, 'Matcha 12oz', 'matcha-12oz', 110, 'matcha-12oz_1715869578.jpg', '0000-00-00', 0, '', 50),
(94, 20, 'Matcha 16oz', 'matcha-16oz', 120, 'matcha-16oz.jpg', '0000-00-00', 0, '', 50),
(95, 21, 'Chocolate 12oz', 'chocolate-12oz', 110, 'chocolate-120z.jpg', '0000-00-00', 0, '', 50),
(96, 21, 'Chocolate 16oz', 'chocolate-16oz', 120, 'chocolate-160z.jpg', '0000-00-00', 0, '', 50),
(97, 21, 'White Chocolate 12oz', 'white-chocolate-12oz', 120, 'white-chocolate-12oz.jpg', '0000-00-00', 0, '', 50),
(98, 21, 'White Chocolate 16oz', 'white-chocolate-16oz', 140, 'white-chocolate-16oz.jpg', '0000-00-00', 0, '', 50),
(99, 21, 'Matcha Latte 12oz', 'matcha-latte-12oz', 135, 'matcha-latte-12oz.jpg', '0000-00-00', 0, '', 50),
(100, 21, 'Matcha Latte 16oz', 'matcha-latte-16oz', 155, 'matcha-latte-16oz.jpg', '0000-00-00', 0, '', 50),
(101, 23, 'Espresso Shot', 'espresso-shot', 20, 'espresso-shot.jpg', '0000-00-00', 0, '', 50),
(102, 23, 'Syrup ', 'syrup', 20, 'syrup.jpg', '0000-00-00', 0, '', 50),
(103, 23, 'Caramel or Choclate Drizzle', 'caramel-or-choclate-drizzle', 20, 'caramel-or-choclate-drizzle.jpg', '0000-00-00', 0, '', 50),
(104, 23, 'Whipped Cream', 'whipped-cream', 20, 'whipped-cream_1715869555.jpg', '0000-00-00', 0, '', 50),
(105, 24, 'Cheese Puff', 'cheese-puff', 70, 'cheese-puff.jpg', '2024-05-17', 1, '', 49),
(106, 24, 'Pineapple Turnover', 'pineapple-turnover', 70, 'pineapple-turnover.jpg', '0000-00-00', 0, '', 50),
(107, 24, 'Guava and Cheese Puff', 'guava-and-cheese-puff', 80, 'guava-and-cheese-puff.jpg', '0000-00-00', 0, '', 50),
(108, 24, 'Strawberry and Nutella', 'strawberry-and-nutella', 80, 'strawberry-and-nutella.jpg', '0000-00-00', 0, '', 50),
(109, 24, 'Three Cheese Spinach', 'three-cheese-spinach', 75, 'three-cheese-spinach.jpg', '0000-00-00', 0, '', 50),
(110, 24, 'Tuna Mushroom', 'tuna-mushroom', 75, 'tuna-mushroom.jpg', '0000-00-00', 0, '', 50),
(111, 24, 'Chicken Chorizo', 'chicken-chorizo', 75, 'chicken-chorizo.jpg', '0000-00-00', 0, '', 50),
(112, 24, 'Waffle', 'waffle', 70, 'waffle.jpg', '0000-00-00', 0, '', 50),
(113, 22, 'Green Tea 12oz', 'green-tea-12oz', 100, 'green-tea-12oz.png', '0000-00-00', 0, '', 50),
(114, 22, 'Green Tea 16oz', 'green-tea-16oz', 110, 'green-tea-16oz.png', '0000-00-00', 0, '', 50),
(115, 22, 'Chamomile and Lemongrass 12oz', 'chamomile-and-lemongrass-12oz', 100, 'chamomile-and-lemongrass-12oz.png', '0000-00-00', 0, '', 50),
(116, 22, 'Chamomile and Lemongrass 16oz', 'chamomile-and-lemongrass-16oz', 110, 'chamomile-and-lemongrass-16oz.png', '0000-00-00', 0, '', 50),
(117, 22, 'English Breakfast 12oz', 'english-breakfast-12oz', 100, 'english-breakfast-12oz.jpg', '0000-00-00', 0, '', 50),
(118, 22, 'English Breakfast 16oz', 'english-breakfast-16oz', 110, 'english-breakfast-16oz.jpg', '0000-00-00', 0, '', 50);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
(98, 21, 'f64Z1bUK7ESX', '2024-01-25'),
(99, 21, 'aZ0GJRKSo7dX', '2024-05-16'),
(100, 23, 'OmHbQLnZlC9t', '2024-05-17'),
(101, 23, 'u7W3gfFaOUB9', '2024-05-17'),
(102, 23, 'zWLhjOJyTcEd', '2024-05-17');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Elijah', 'Rivero', '', '', 'logo.png', 1, '', 'BsqYTf3ni4byz7I', '2020-12-30'),
(21, 'riveroelijah@gmail.com', '$2y$10$CUUcNy/yVLZB4wpLCUYF2.Zp6XZ9nrFDRcQ4xFL3m7.bg35duh5Ua', 0, 'Elijah', 'Rivero', 'blabla', '123', '', 1, 't7YDn9vT8KHN', '7kaViBC1pL8AK5M', '2023-01-12'),
(22, 'tes@email', '$2y$10$kl4j1mMOc7omJwlkCIbppuyaiuO2GzqrYt6WOzjjb3drpIDzEPQcy', 0, 'tes', 'test1', '', '', '', 1, '26UuYOwmiDcC', '', '2023-01-19'),
(23, 'barista@communitycoffee.com', '$2y$10$EHGhBAGT9uXOfnlJgPH0puY2cIqnShb1ATfK/So9Rf9tPuOZDYxju', 0, 'Barista', 'Account', 'None', 'None', 'barista.jpg', 1, '', '', '2024-05-16');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
