-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2021 at 05:34 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bankings`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `s_no` int(11) NOT NULL,
  `account_holder` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `account_no` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `branch` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ifsc_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `account_type` enum('savings','current') COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `gmail` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `balance` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`s_no`, `account_holder`, `account_no`, `branch`, `ifsc_code`, `account_type`, `phone_no`, `address`, `gmail`, `age`, `balance`) VALUES
(1, 'sachin tendulkar', '9999999999', 'mumbau', '1111111111', 'savings', '8999999999', 'mumbai', 'sachin@gmail.com', 55, 60000),
(2, 'mahendra singh dhoni', '9999999998', 'ranchi', '1111111112', 'savings', '8999999998', 'ranchi', 'dhoni@gmail.com', 40, 80500),
(3, 'virat kohli', '9999999997', 'punjab', '1111111113', 'savings', '8999999997', 'punjab', 'virat@gmail.oom', 34, 96000),
(4, 'Rohith sharma', '9999999996', 'mumbai', '1111111114', 'savings', '8999999996', 'mumbai', 'rohith@gmail.com', 34, 68500),
(5, 'Shikar Dhawan', '9999999995', 'Dharmashala', '1111111115', 'savings', '8999999995', 'dhramashala', 'shikar@gamil.com', 34, 50000),
(6, 'Rishab pant', '9999999994', 'Delhi', '1111111116', 'savings', '8999999994', 'Delhi', 'rishabh@gamil.com', 23, 30000),
(7, 'Hardik pandya', '9999999993', 'Gujrat', '1111111117', 'savings', '8999999993', 'gujrat', 'hardik@gmail.com', 26, 50000),
(8, 'Jadeja', '9999999992', 'Gujrat', '1111111118', 'current', '8999999992', 'Gujrat', 'jaddu@gmail.com', 33, 50000),
(9, 'Bhuvi', '9999999991', 'Assam', '1111111119', 'current', '8999999991', 'Assam', 'bhuvi@gmail.com', 31, 45000),
(10, 'bumrah', '9999999990', 'gujrat', '1111111120', 'current', '8999999990', 'gujrat', 'boom@gmail.com', 26, 50000);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `s_no` int(11) NOT NULL,
  `account_no` varchar(15) NOT NULL,
  `report` longtext NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`s_no`, `account_no`, `report`, `date_time`) VALUES
(4, '9999999997', 'hello', '2021-02-15 15:13:01'),
(5, '9999999997', 'final checking of the report file\r\n', '2021-02-16 05:39:15'),
(6, '9999999999', 'file dkfldjfl', '2021-02-16 05:45:04'),
(7, '9999999998', 'fvkglkja', '2021-02-16 09:36:25'),
(8, '9999999998', 'please change the website layout', '2021-02-17 05:46:30'),
(9, '9999999998', 'i am filing the report.', '2021-02-17 13:13:55'),
(10, '9999999996', 'i want another account.', '2021-02-17 13:19:17'),
(11, '9999999994', 'I want to change the phone number.', '2021-02-17 13:22:54'),
(12, '9999999996', 'i want to change the branch.', '2021-02-17 14:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `s_no` int(11) NOT NULL,
  `sender_account_no` varchar(15) NOT NULL,
  `receiver_account_no` varchar(15) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`s_no`, `sender_account_no`, `receiver_account_no`, `amount`, `time_stamp`) VALUES
(1, '9999999999', '9999999997', 5000, '2021-02-15 15:01:46'),
(2, '9999999999', '9999999998', 5000, '2021-02-15 15:02:24'),
(3, '9999999998', '9999999999', 5000, '2021-02-15 15:02:44'),
(4, '9999999998', '9999999997', 20000, '2021-02-15 15:02:57'),
(5, '9999999998', '9999999997', 5000, '2021-02-15 15:03:08'),
(6, '9999999997', '9999999998', 5000, '2021-02-15 15:03:31'),
(7, '9999999997', '9999999999', 5000, '2021-02-15 15:03:52'),
(8, '9999999999', '9999999997', 5000, '2021-02-16 05:44:36'),
(9, '9999999999', '9999999997', 5000, '2021-02-17 06:18:32'),
(10, '9999999999', '9999999997', 5000, '2021-02-17 06:21:28'),
(11, '9999999999', '9999999998', 500, '2021-02-17 06:23:26'),
(12, '9999999999', '9999999997', 500, '2021-02-17 06:25:00'),
(13, '9999999999', '9999999997', 500, '2021-02-17 06:26:57'),
(14, '9999999998', '9999999997', 5000, '2021-02-17 13:13:28'),
(15, '9999999996', '9999999999', 1500, '2021-02-17 13:18:44'),
(16, '9999999994', '9999999997', 5000, '2021-02-17 13:22:15'),
(17, '9999999996', '9999999998', 5000, '2021-02-17 14:09:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`s_no`),
  ADD UNIQUE KEY `account` (`account_no`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`s_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
