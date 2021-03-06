-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2020 at 05:24 PM
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
-- Table structure for table `accounting_reconcile_history`
--

CREATE TABLE `accounting_reconcile_history` (
  `id` int(11) NOT NULL,
  `chart_of_accounts_id` int(11) NOT NULL,
  `ending_balance` varchar(255) NOT NULL,
  `ending_date` varchar(255) NOT NULL,
  `first_date` varchar(255) NOT NULL,
  `service_charge` varchar(255) NOT NULL,
  `expense_account` varchar(255) NOT NULL,
  `second_date` varchar(255) NOT NULL,
  `interest_earned` varchar(255) NOT NULL,
  `income_account` varchar(255) NOT NULL,
  `adjustment_date` varchar(255) DEFAULT NULL,
  `CHRG` varchar(255) NOT NULL DEFAULT 'SVCCHRG',
  `memo_sc` varchar(255) NOT NULL DEFAULT 'Service Charge',
  `memo_it` varchar(255) NOT NULL DEFAULT 'Interest Earned',
  `mailing_address` varchar(255) DEFAULT NULL,
  `checkno` varchar(255) DEFAULT 'SVCCHRG',
  `descp_sc` varchar(255) DEFAULT NULL,
  `descp_it` varchar(255) DEFAULT NULL,
  `cash_back_account` varchar(255) DEFAULT NULL,
  `cash_back_memo` varchar(255) DEFAULT NULL,
  `cash_back_amount` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 = inactive , 1 = active	',
  `created_at` timestamp NULL DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounting_reconcile_history`
--

INSERT INTO `accounting_reconcile_history` (`id`, `chart_of_accounts_id`, `ending_balance`, `ending_date`, `first_date`, `service_charge`, `expense_account`, `second_date`, `interest_earned`, `income_account`, `adjustment_date`, `CHRG`, `memo_sc`, `memo_it`, `mailing_address`, `checkno`, `descp_sc`, `descp_it`, `cash_back_account`, `cash_back_memo`, `cash_back_amount`, `active`, `created_at`, `action`) VALUES
(0, 1, '2000', '28.08.2019', '28.08.2020', '200', 'Cash on hand', '20.08.2020', '20', 'Cash on hand', '08.08.2020', 'SVCCHRG', 'Service Charge', 'Interest Earned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2020-11-24 15:13:27', NULL),
(1, 2, '10000.00', '09.06.2020', '11.06.2020', '121.00', 'Cash on hand', '20.06.2020', '201.00', 'Cash on hand', '', 'SVCCHRG', 'Service Charge', 'Interest Earned', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', 'updated'),
(4, 2, '10000', '09.06.2020', '11.06.2020', '110.00', 'Cash on hand', '20.06.2020', '200.00', 'Cash on hand', NULL, 'SVCCHRG', 'Service charge', 'Interest Earned', 'mailing add', 'SVCCHRG', '', '', '1', '                                            ', '15', 1, '2020-11-24 15:13:27', 'Added'),
(23, 2, '10000.00', '09.06.2020', '11.06.2020', '100.00', 'Cash on hand', '20.06.2020', '201.00', 'Cash on hand', '', 'SVCCHRG', 'Service Charge', 'Interest Earned', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', 'updated'),
(24, 2, '10000.00', '09.06.2020', '11.06.2020', '101.00', 'Cash on hand', '20.06.2020', '201.00', 'Cash on hand', '', 'SVCCHRG', 'Service charge', 'Interest Earned', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', 'updated'),
(25, 2, '10000.00', '09.06.2020', '11.06.2020', '120.00', 'Cash on hand', '20.06.2020', '201.00', 'Cash on hand', '', 'SVCCHRG', 'Service charge', 'Interest Earned', 'mailing add', 'SVCCHRG', '', '', '1', '                                                                                                                                                                                                                                                               ', '15', 1, '0000-00-00 00:00:00', 'updated');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounting_reconcile_history`
--
ALTER TABLE `accounting_reconcile_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chart_of_accounts_id` (`chart_of_accounts_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounting_reconcile_history`
--
ALTER TABLE `accounting_reconcile_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
