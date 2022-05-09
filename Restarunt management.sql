-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 14, 2020 at 07:34 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agrichane`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_customers_users_1` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `address`, `created_at`, `updated_at`, `deleted_at`, `mobile`, `email`, `lat`, `lng`, `user_id`) VALUES
(1, 'Rasika', 'Mahena,Gampaha', '2020-06-11 20:31:34', NULL, NULL, '0775522365', 'rasikak73@gmail.com', '7.062855', '79.976138', 3),
(2, 'සුබෝධා මිහිරානි සපරමාදු', 'Kotugoda,Gampaha', '2020-06-11 20:31:41', NULL, NULL, '0715522365', 'subodamihrani@gmail.com', '7.125166', '79.926843', 28),
(3, 'සචින්තා මිහිරාණි', 'Muththettuwa Road, Mirihana South', '2020-06-11 20:31:47', NULL, NULL, '0725566332', 'sachi@gmail.com', '6.879418906769815', '79.90451683757325', 30);

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

DROP TABLE IF EXISTS `drivers`;
CREATE TABLE IF NOT EXISTS `drivers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_id` int(11) NOT NULL,
  `user_id` bigint(11) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_drivers_vehicles_1` (`vehicle_id`),
  KEY `fk_drivers_users_1` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `name`, `address`, `created_at`, `updated_at`, `deleted_at`, `mobile`, `email`, `lat`, `lng`, `code`, `vehicle_id`, `user_id`) VALUES
(1, 'Lahiru Gunawardhana', 'unawatuna, galle', '2020-06-13 07:17:57', '2020-06-13 01:47:57', NULL, '0775528652', 'Lahiru Gunawardhana', NULL, NULL, 'D0001', 2, 15),
(2, 'සහන් මාධව', 'Mahawela , Matara', '2020-06-13 07:18:06', '2020-06-13 01:48:06', NULL, '0712226589', 'sahan@gmail.com', NULL, NULL, 'DV1592032506', 2, 31);

-- --------------------------------------------------------

--
-- Table structure for table `farmers`
--

DROP TABLE IF EXISTS `farmers`;
CREATE TABLE IF NOT EXISTS `farmers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_farmers_users_2` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
CREATE TABLE IF NOT EXISTS `offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `name`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Big deal 2020', 'storage/img/offers/NWCO5gDUUeqBGH1u0qQNuoX5IgrzCW0iTCOwQ8KM.jpeg', '2020-06-13 03:32:46', '2020-06-13 03:32:46', NULL),
(2, 'best offer june', 'storage/img/offers/0qPqreC1URXqh1X4h8T2qqarGhGMDb10LKDWdeG9.jpeg', '2020-06-13 04:00:34', '2020-06-13 04:00:34', NULL),
(3, 'Fresh Box', 'storage/img/offers/URZAUCGLBYdJNwE8I8muGKdFQF5ItyJKlZ9UtEFH.jpeg', '2020-06-13 04:01:20', '2020-06-13 04:01:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `total_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_orders_customers_1` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `created_at`, `updated_at`, `deleted_at`, `total_amount`, `payment_type`, `payment_status`, `delivery_status`, `lat`, `lng`, `address`, `invoice_no`) VALUES
(1, 1, '2020-06-12 15:28:02', '2020-06-12 09:58:02', NULL, '180', 'Cash On Delivery', 'pending', 'ongoing', '7.062855', '79.976138', 'Mahena,Gampaha', 'INV0001'),
(2, 2, '2020-06-12 15:27:39', '2020-06-12 09:57:39', NULL, '970', 'Cash On Delivery', 'pending', 'ongoing', '7.125166', '79.926843', 'Muththettuwa Road, Mirihana South', 'INV0002');

-- --------------------------------------------------------

--
-- Table structure for table `order_delivery`
--

DROP TABLE IF EXISTS `order_delivery`;
CREATE TABLE IF NOT EXISTS `order_delivery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `driver_confirmation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `customer_confirmation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_delivery_customers_2` (`customer_id`),
  KEY `fk_order_delivery_drivers_1` (`driver_id`),
  KEY `fk_order_delivery_order` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_delivery`
--

INSERT INTO `order_delivery` (`id`, `order_id`, `driver_confirmation`, `created_at`, `updated_at`, `deleted_at`, `customer_id`, `driver_id`, `customer_confirmation`) VALUES
(7, 2, 'pending', '2020-06-12 09:57:39', '2020-06-12 09:57:39', NULL, 2, 1, 'pending'),
(8, 1, 'pending', '2020-06-12 09:58:02', '2020-06-12 09:58:02', NULL, 1, 1, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `order_has_products`
--

DROP TABLE IF EXISTS `order_has_products`;
CREATE TABLE IF NOT EXISTS `order_has_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `each_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_has_products_orders_1` (`order_id`),
  KEY `fk_order_has_products_products_1` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_has_products`
--

INSERT INTO `order_has_products` (`id`, `product_id`, `order_id`, `created_at`, `updated_at`, `deleted_at`, `quantity`, `comments`, `each_price`, `total_price`) VALUES
(1, 1, 1, '2020-06-11 18:14:19', NULL, NULL, 1, 'None', '85', '85'),
(2, 2, 1, '2020-06-11 18:02:56', NULL, NULL, 1, NULL, '95', '95'),
(3, 1, 2, '2020-06-11 21:03:25', NULL, NULL, 2, NULL, '85', '170'),
(4, 2, 2, '2020-06-11 21:03:33', NULL, NULL, 1, NULL, '95', '95'),
(5, 3, 2, '2020-06-11 21:03:37', NULL, NULL, 2, NULL, '220', '440');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(150) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `purchased_price` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(245) COLLATE utf8mb4_unicode_ci DEFAULT 'Kg',
  `purchased_at` date DEFAULT NULL,
  `selling_price` varchar(245) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `quantity`, `created_at`, `updated_at`, `deleted_at`, `purchased_price`, `unit`, `purchased_at`, `selling_price`, `notes`, `name`, `avatar`) VALUES
(1, '1591897404', 60, '2020-06-11 17:47:15', '2020-06-11 12:17:15', NULL, '65', 'Kg', NULL, '85', 'best quality', 'Carrot', 'storage/img/products/EF040VfXyLIN00yp9zr2OgI7y2XSoZ1zxnCS8LEq.jpeg'),
(2, '1591897443', 60, '2020-06-11 17:47:20', '2020-06-11 12:17:20', NULL, '75', 'Kg', NULL, '95', 'best leaks', 'leaks', 'storage/img/products/w2euaXy0j2D6cAgxmbu119vwTlPadvV4IIA7i7mX.jpeg'),
(3, '1591897778', 75, '2020-06-11 12:19:38', '2020-06-11 12:19:38', NULL, '120', 'Kg', NULL, '220', 'good quality', 'beans', 'storage/img/products/gucPJikoVLkIdWsGdtlYyLV1qRsaTgnePgKLWctu.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
CREATE TABLE IF NOT EXISTS `stocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_stocks_products_1` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `mobile` varchar(245) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `status`, `mobile`) VALUES
(1, 'rasika', 'rasika@crd.lk', '2020-06-26 22:34:32', '$2y$10$R/Bxvz1vIo2VMmgshK82x.yeuSR0KLqhcAjcSuYrEteoeuU6nuffq', 'xt3DgXbawrf6cSKUNf3fOcOTrG6e8I4NF9Mgx7zzActW3Ee28dsqhdg1Zi7K', '2019-08-17 01:30:52', '2019-08-17 01:30:52', 'driver', 'active', NULL),
(3, 'Rasika', 'rasikak73@gmail.com ', '2020-04-06 13:32:25', '$2y$10$R/Bxvz1vIo2VMmgshK82x.yeuSR0KLqhcAjcSuYrEteoeuU6nuffq', 'nKxQOkvEZXRFnvcwe8rrY8pJVJB1TS01LfwSlJmMmoVuoYAaVlKMOxJOT4gx', '2019-12-09 18:30:00', '2020-05-08 04:00:00', 'customer', 'active', NULL),
(15, 'Lahiru Gunawardhana', 'gunawardhanalahiru21@gmail.com', '2020-04-25 04:00:00', '$2y$10$5JSxIcOCdMjzSbjIkZ14pO0dtJVkPu8gUcfOnNdcfVlBcZlwGtRGG', 'nKxQOkvEZXRFnvcwe8rrY8pJVJB1TS01LfwSlJmMmoVuoYAaVl...', '2020-03-28 09:56:28', '2020-06-13 01:47:57', 'driver', 'active', '0775528652'),
(20, 'Tayon UJ', 'tayonu@gmail.com', NULL, '$2y$10$y2GBKGuiGub8S6N5UcyZwOzjXINhNRiPsVjTkXAU//gtfHAh0HQpi', 'uogmsyACOGhT9c8gANu6DbmUQhzKfdTthSroizyDXcaIbI7IZRjsqNad6qRX', '2020-03-16 00:42:25', '2020-03-16 00:42:25', 'admin', 'active', NULL),
(28, 'සුබෝධා මිහිරානි සපරමාදු', 'subodamihrani@gmail.com', NULL, '$2y$10$DL.Cdfp21umiPINvQGOoM.KxeZPr98C9eKBrU9DvRXljz2hOLs4fe', NULL, '2020-03-18 18:07:11', '2020-03-18 19:30:18', 'customer', 'active', NULL),
(30, 'සචින්තා මිහිරාණි', 'sachi@gmail.com', NULL, '$2y$10$2EVK6HcU5cXyWfHbzU7X3e7zgz5dRjeqAEvU2qveWpSYUrVgeDUHC', NULL, '2020-03-18 18:34:48', '2020-03-18 18:34:48', 'customer', 'active', NULL),
(31, 'සහන් මාධව', 'sahan@gmail.com', NULL, '$2y$10$9dirWItbuQ2jqadmKNUJZekRPER3RG5379vkn.V57wn7K/VjHTPeK', NULL, '2020-06-13 01:45:06', '2020-06-13 01:45:06', 'driver', 'active', '0712226589');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_no` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_type` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `vehicle_no`, `vehicle_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'WP-11225', 'Suzuki Maruti', NULL, NULL, NULL),
(2, 'WP-12345', 'Wagon R', NULL, NULL, NULL),
(3, 'SP-45678', 'Bajaj 4stroke', NULL, NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `fk_customers_users_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `drivers`
--
ALTER TABLE `drivers`
  ADD CONSTRAINT `fk_drivers_users_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_drivers_vehicles_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`);

--
-- Constraints for table `farmers`
--
ALTER TABLE `farmers`
  ADD CONSTRAINT `fk_farmers_users_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_farmers_users_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_customers_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `order_delivery`
--
ALTER TABLE `order_delivery`
  ADD CONSTRAINT `fk_order_delivery_customers_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_order_delivery_customers_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_order_delivery_drivers_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_order_delivery_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_has_products`
--
ALTER TABLE `order_has_products`
  ADD CONSTRAINT `fk_order_has_products_orders_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `fk_order_has_products_products_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `stocks`
--
ALTER TABLE `stocks`
  ADD CONSTRAINT `fk_stocks_products_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
