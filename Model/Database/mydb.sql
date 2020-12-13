-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2020 at 11:49 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` int(8) NOT NULL,
  `name` varchar(50) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `name`, `user_id`, `password`) VALUES
(1, 'Amlan', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `book_id` int(8) NOT NULL,
  `car_id` int(8) NOT NULL,
  `customer_id` int(6) UNSIGNED NOT NULL,
  `starts_from` varchar(80) NOT NULL,
  `ends_to` varchar(80) NOT NULL,
  `start_date` date NOT NULL,
  `start_time` time NOT NULL,
  `total_days` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`book_id`, `car_id`, `customer_id`, `starts_from`, `ends_to`, `start_date`, `start_time`, `total_days`) VALUES
(9, 14, 26, 'dhaka', 'rajshahi', '2020-09-10', '22:23:00', 2),
(11, 14, 26, 'dhaka', 'Jessore', '2020-09-23', '00:00:00', 3),
(12, 14, 26, 'khulna', 'noakhali', '2020-09-10', '00:00:00', 3),
(13, 14, 29, 'mumbai', 'delhi', '2020-09-16', '14:30:00', 10),
(14, 14, 26, 'dhaka', 'delhi', '2020-09-10', '00:00:00', 3),
(15, 14, 30, 'delhi', 'jaipur', '2020-09-28', '12:45:00', 8),
(16, 14, 26, 'dhaka', 'mumbai', '2012-05-09', '09:00:00', 5),
(17, 14, 35, 'dhanmondi', 'uttara', '2020-11-06', '02:04:00', 15),
(32, 9, 33, 'dhanmondi', 'uttara', '2020-12-04', '18:30:00', 3),
(35, 9, 33, 'dhanmondi', 'uttara', '2020-12-09', '19:42:00', 2),
(36, 9, 33, 'dhanmondi', 'uttara', '2020-12-09', '19:42:00', 2),
(37, 9, 33, 'dhanmondi', 'uttara', '2020-12-09', '19:42:00', 2),
(38, 9, 33, 'dhanmondi', 'uttara', '2020-12-09', '19:42:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `carID` int(11) NOT NULL,
  `car_name` varchar(150) NOT NULL,
  `image` varchar(200) NOT NULL,
  `reg_no` varchar(40) NOT NULL,
  `mileage` float NOT NULL,
  `fare` int(11) NOT NULL,
  `booked` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`carID`, `car_name`, `image`, `reg_no`, `mileage`, `fare`, `booked`) VALUES
(9, 'Lancia', 'lancia.jpg', '23-7184', 10, 6000, 0),
(10, 'Toyota GT-86', 'gt86.jpg', '34-2183', 18, 10000, 0),
(13, 'grey hiace', 'Car-2.jpg', '45-8695', 1233, 5672, 0),
(14, 'mercedez benz', 'Car-3.jpg', '45-8633', 1288, 5609, 0),
(18, 'Noah', 'Car21.jpg', '1234587', 13, 1250, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(6) UNSIGNED NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nid_no` varchar(15) NOT NULL,
  `phone_number` varchar(14) NOT NULL,
  `address` varchar(80) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `username`, `password`, `name`, `email`, `nid_no`, `phone_number`, `address`, `reg_date`) VALUES
(26, 'Nibraj Safwan', '1234', 'Nibraj Safwan Amlan', 'nibrajamlan08@gmail.com', '132456', '1234567', 'kalabagan', '2020-09-08 12:04:34'),
(27, 'Emon Haque', '12345', 'Imdadul haque ', 'imdad@gmail.com', '234567', '124578', 'mohammadpur', '2020-09-09 11:56:56'),
(29, 'naveed ', '5678', 'naveed hossain', 'naved@gmail.com', '13456090', '9123459', 'dhanmondi', '2020-09-09 13:44:58'),
(30, 'shaba ', '123456', 'shaba sayeed', 'shaba@gmail.com', '123456789', '1234578', 'dhanmondi', '2020-09-09 14:01:02'),
(31, 'Naved ', '1235', 'Naved Hossain', 'gxfx@gmail.com', '1234565768', '912345921', 'd', '2020-09-28 18:41:04'),
(32, 'Emon ', '0987', 'Emon Haque', 'imdad@gmail.com', '31526229', '4868398748', 'mohammadpur', '2020-09-28 18:44:10'),
(33, 'amlan', 'nibu123', 'amlan safwan', 'nibrajsafwanamlan@gmail.com', '16766888', '12340987', 'kalabagan', '2020-09-28 18:52:49'),
(34, 'test', '5555', 'test', 'nibrajsafwanamlan@gmail.com', '12', '12', 'motijheel', '2020-09-28 18:54:21'),
(35, 'samin', '1234', 'Mohtasim Abrar Samin', 'mohtasim.abrar@gmail.com', '123456789', '01743546313', 'House no. 78, Road no. 9/A, Dhanmondi', '2020-11-04 20:03:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `car_id` (`car_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`carID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `book_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `carID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `car` (`carID`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
