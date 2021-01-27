-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2020 at 07:41 PM
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
-- Database: `admintom_nsmart_companies`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounting_recurr`
--

CREATE TABLE `accounting_recurr` (
  `id` int(11) NOT NULL,
  `reconcile_id` int(11) NOT NULL,
  `chart_of_accounts_id` int(11) NOT NULL,
  `template_name` varchar(255) NOT NULL,
  `template_type` varchar(255) DEFAULT NULL,
  `advanced_day` varchar(255) DEFAULT NULL,
  `template_interval` varchar(255) DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `dayname` varchar(255) DEFAULT NULL,
  `daynum` varchar(255) DEFAULT NULL,
  `weekday` varchar(255) DEFAULT NULL,
  `weekname` varchar(255) DEFAULT NULL,
  `monthday` varchar(255) DEFAULT NULL,
  `monthname` varchar(255) DEFAULT NULL,
  `startdate` varchar(255) DEFAULT NULL,
  `endtype` varchar(255) DEFAULT NULL,
  `enddate` varchar(255) DEFAULT NULL,
  `occurrence` varchar(255) DEFAULT NULL,
  `payeename` varchar(255) DEFAULT NULL,
  `account_type` varchar(255) DEFAULT NULL,
  `mailing_address` text DEFAULT NULL,
  `payment_date` varchar(255) DEFAULT NULL,
  `checkno` varchar(255) DEFAULT NULL,
  `permitno` varchar(255) DEFAULT NULL,
  `memo_recurr_sc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounting_recurr`
--
ALTER TABLE `accounting_recurr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reconcile_id` (`reconcile_id`),
  ADD KEY `chart_of_accounts_id` (`chart_of_accounts_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounting_recurr`
--
ALTER TABLE `accounting_recurr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
