-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2022 at 12:32 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wds`
--

-- --------------------------------------------------------

--
-- Table structure for table `auto_invoice`
--

CREATE TABLE `auto_invoice` (
  `inv_id` int(11) NOT NULL,
  `inv_date` date NOT NULL,
  `inv_payment_due` date NOT NULL,
  `inv_amount` int(15) NOT NULL,
  `ins_id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auto_invoice`
--

INSERT INTO `auto_invoice` (`inv_id`, `inv_date`, `inv_payment_due`, `inv_amount`, `ins_id`, `cus_id`) VALUES
(70000011, '2019-03-22', '2019-04-22', 1020, 20000001, 11),
(70000012, '2019-03-21', '2019-04-21', 1030, 20000001, 12),
(70000013, '2019-03-20', '2019-04-20', 1040, 20000002, 13),
(70000014, '2019-03-19', '2019-04-19', 1050, 20000003, 14),
(70000015, '2019-03-18', '2019-04-18', 1060, 20000004, 14),
(70000016, '2019-03-17', '2019-04-17', 1070, 20000005, 15),
(70000017, '2019-03-16', '2019-04-16', 1080, 20000006, 16),
(70000018, '2019-03-15', '2019-04-15', 1090, 20000007, 17),
(70000019, '2019-03-14', '2019-04-14', 1100, 20000008, 18),
(70000020, '2019-03-13', '2019-04-13', 1110, 20000009, 19),
(70000021, '2019-03-12', '2019-04-12', 1120, 20000010, 20);

-- --------------------------------------------------------

--
-- Table structure for table `auto_payment`
--

CREATE TABLE `auto_payment` (
  `pay_id` int(11) NOT NULL,
  `pay_date` date NOT NULL,
  `pay_method` varchar(20) NOT NULL,
  `pay_account_num` varchar(20) NOT NULL,
  `inv_id` int(8) NOT NULL,
  `cus_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auto_payment`
--

INSERT INTO `auto_payment` (`pay_id`, `pay_date`, `pay_method`, `pay_account_num`, `inv_id`, `cus_id`) VALUES
(90000011, '2019-06-01', 'PayPal', '223456790', 70000011, 11),
(90000012, '2019-06-02', 'PayPal', '223456791', 70000012, 12),
(90000013, '2019-06-03', 'Debit', '223456792', 70000013, 13),
(90000014, '2019-06-04', 'Credit', '223456793', 70000014, 14),
(90000015, '2019-06-05', 'PayPal', '223456794', 70000015, 15),
(90000016, '2019-06-06', 'Debit', '223456795', 70000016, 16),
(90000017, '2019-06-07', 'Credit', '223456796', 70000017, 17),
(90000018, '2019-06-08', 'PayPal', '223456797', 70000018, 18),
(90000019, '2019-06-09', 'Debit', '223456798', 70000019, 19),
(90000020, '2019-06-10', 'PayPal', '223456799', 70000020, 20),
(90000021, '2019-06-11', 'Credit', '223456800', 70000021, 21);

-- --------------------------------------------------------

--
-- Table structure for table `auto_policy`
--

CREATE TABLE `auto_policy` (
  `ins_id` int(11) NOT NULL,
  `ins_type` varchar(1) NOT NULL,
  `ins_start_date` date NOT NULL,
  `ins_end_date` date DEFAULT NULL,
  `ins_amount` int(15) NOT NULL,
  `ins_status` varchar(1) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `vin` varchar(17) NOT NULL,
  `dr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auto_policy`
--

INSERT INTO `auto_policy` (`ins_id`, `ins_type`, `ins_start_date`, `ins_end_date`, `ins_amount`, `ins_status`, `cus_id`, `vin`, `dr_id`) VALUES
(20000001, 'A', '2018-08-21', NULL, 6000, 'C', 11, 'SBMCKEOTK12345685', 23456790),
(20000002, 'A', '2018-08-20', NULL, 7000, 'C', 12, 'SJBEKEOTK12345697', 23456791),
(20000003, 'A', '2018-08-19', NULL, 8000, 'C', 13, 'SJDBGEOTK12345695', 23456792),
(20000004, 'A', '2018-08-18', NULL, 9000, 'C', 14, 'SJDCGFOTK12345691', 23456793),
(20000005, 'A', '2018-08-17', NULL, 9500, 'C', 15, 'SJDCKEMKK12345696', 23456794),
(20000006, 'A', '2018-08-16', NULL, 6600, 'C', 16, 'SJDCKEOTK12345678', 23456795),
(20000007, 'A', '2018-08-15', NULL, 6700, 'C', 17, 'SJDCKEOTK12345679', 23456796),
(20000008, 'A', '2018-08-14', NULL, 6800, 'C', 18, 'SJDCKEOTK12345681', 23456797),
(20000009, 'A', '2018-08-13', NULL, 6900, 'C', 19, 'SJDCKEOTK12345682', 23456798),
(20000010, 'A', '2018-08-12', NULL, 7100, 'C', 20, 'SJDCKEOTK12345684', 23456799);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cus_id` int(11) NOT NULL COMMENT 'Unique customer ID',
  `cus_username` varchar(50) NOT NULL,
  `cus_password` varchar(60) NOT NULL,
  `cus_fname` varchar(30) NOT NULL COMMENT 'Customer first name',
  `cus_lname` varchar(30) NOT NULL COMMENT 'Customer last name',
  `cus_street` varchar(30) NOT NULL COMMENT 'Customer address: Street',
  `cus_city` varchar(30) NOT NULL COMMENT 'Customer address: City',
  `cus_state` varchar(30) NOT NULL COMMENT 'Customer address: State',
  `cus_zipcode` varchar(5) NOT NULL COMMENT 'Customer address: Zipcode',
  `cus_gender` varchar(1) DEFAULT NULL COMMENT 'Customer gender: M(Male) or F(Female)',
  `cus_marital` varchar(1) NOT NULL COMMENT 'Customer marital status: M(Married), S(Single) or W(Widow)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cus_id`, `cus_username`, `cus_password`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zipcode`, `cus_gender`, `cus_marital`) VALUES
(1, 'Jason', '1b0f24065ad5ccdce3ba1b6cfa4c385c', 'Jason', 'Mialn', 'Toftrees ', 'State College', 'PA', '16803', 'M', 'S'),
(2, 'Marry', '8a4301794f8b8b6f136432f8c8981a02', 'Marry', 'Jone', 'Tufts', 'State College', 'PA', '16803', 'F', 'S'),
(3, 'Amanda', '02a355d3e64bdc50e846094d60c1041e', 'Amanda', 'Mcallister', 'Richard Hills', 'Smithshire', 'Nevada', '82069', 'M', 'M'),
(4, 'Larry', '1f61953c60bb16f4ce83301053e88062', 'Larry', 'Nance', 'Edward Port', 'Jefferyshire', 'South Dakota', '24516', 'F', 'M'),
(5, 'Virginia', '5dd81c994aede5be1bd7b63213e33d9a', 'Virginia', 'Lucas', 'Williams Viaduct', 'Rebeccafurt', 'Massachusetts', '80391', 'M', 'S'),
(6, 'Paul', 'b06a6f494253f7919b0421af10c2cd82', 'Paul', 'Brown', 'Oconnor Rapid', 'Josephhaven', 'New Hampshire', '05701', 'M', 'S'),
(7, 'Clara', '408ad3b348a85f8681939d7c00b6802c', 'Clara', 'Jimenez', 'Bailey Village', 'Michaelbury', 'Montana', '56491', 'F', 'M'),
(8, 'Billy', '07d4586e98805b5303f0f771df268878', 'Billy', 'Navarro', 'Edwards Crest', 'Connorborough', 'New Mexico', '93641', 'M', 'M'),
(9, 'Martha', '7d1a231f6a0c3e331c1aec3b8d344cca', 'Martha', 'Pena', 'Lee Circles', 'Marissamouth', 'Alabama', '16177', 'F', 'M'),
(10, 'Helen', '6b4f640f96b0ddb2a5c3f31edf50fbed', 'Helen', 'Derosa', 'Garcia Centers', 'Bradleymouth', 'North Carolina', '07645', 'F', 'M'),
(11, 'Isabel', '274124a568b24397fe679afa5befd2c4', 'Isabel', 'Hernandez', 'Grimes Trace', 'Aaronview', 'Vermont', '34278', 'M', 'M'),
(12, 'Leda', 'd3a01e4d77536d1123ebf4238edde031', 'Leda', 'Hilbert', 'Thomas Cliff', 'Jeffreystad', 'Nebraska', '82479', 'M', 'M'),
(13, 'Jose', '90a50b62439fbde62347a9adac0e39c3', 'Jose', 'Simmons', 'Victor Landing', 'Gibsonchester', 'Missouri', '32572', 'F', 'M'),
(14, 'Doris', 'd8c944a68df2fa4037aa38b9873e0df0', 'Doris', 'Capaldi', 'Margaret Motorway', 'West Nicholas', 'Delaware', '32321', 'M', 'S'),
(15, 'Peter', '56f323e456d774d93e68442000570af3', 'Peter', 'Boyd', 'Michael Neck', 'New Robert', 'New Mexico', '40721', 'M', 'M'),
(16, 'Jane', 'f83c2fd428d240f5297142c5ca984f62', 'Jane', 'Christensen', 'Thomas Shore', 'New Christopherside', 'Maryland', '68003', 'F', 'S'),
(17, 'Charlotte', '2f76542646da7a92264d2f5ce52439a2', 'Charlotte', 'Leblanc', 'Shirley Centers', 'North Sydneytown', 'Arkansas', '45724', 'M', 'S'),
(18, 'Julie', 'fb291c85f7ca624ee69459a30539c9de', 'Julie', 'Cox', 'Williams Grove', 'Whiteville', 'Michigan', '22515', 'M', 'S'),
(19, 'Dick', '2011679b1d580458eed82fbb8783bfb1', 'Dick', 'Jordan', 'Christina Well', 'Davidmouth', 'Florida', '35281', 'M', 'W'),
(20, 'Christina', '9afdfd1cfe17c57f39e35fe9d337c0aa', 'Christina', 'Guzman', 'Moore Fork', 'Port Tiffanystad', 'Nebraska', '27810', 'F', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `dr_id` int(11) NOT NULL,
  `dr_liscence_num` varchar(30) NOT NULL,
  `dr_fname` varchar(30) NOT NULL,
  `dr_lname` varchar(30) NOT NULL,
  `vin` varchar(17) NOT NULL,
  `cus_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`dr_id`, `dr_liscence_num`, `dr_fname`, `dr_lname`, `vin`, `cus_id`) VALUES
(23456790, '123456789', 'Isabel', 'Hernandez', 'SBMCKEOTK12345685', 11),
(23456791, '123456790', 'Leda', 'Hilbert', 'SJBEKEOTK12345697', 12),
(23456792, '123456791', 'Jose', 'Simmons', 'SJDBGEOTK12345695', 13),
(23456793, '123456792', 'Doris', 'Capaldi', 'SJDCGFOTK12345691', 14),
(23456794, '123456793', 'Peter', 'Boyd', 'SJDCKEMKK12345696', 15),
(23456795, '123456794', 'Jane', 'Christensen', 'SJDCKEOTK12345678', 16),
(23456796, '123456795', 'Charlotte', 'Leblanc', 'SJDCKEOTK12345679', 17),
(23456797, '123456796', 'Julie', 'Cox', 'SJDCKEOTK12345681', 18),
(23456798, '123456797', 'Dick', 'Jordan', 'SJDCKEOTK12345682', 19),
(23456799, '123456798', 'Christina', 'Guzman', 'SJDCKEOTK12345684', 20);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `em_id` int(11) NOT NULL,
  `em_username` varchar(50) NOT NULL,
  `em_password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`em_id`, `em_username`, `em_password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'admin2', 'c84258e9c39059a89ab77d846ddab909');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `home_id` int(8) NOT NULL,
  `home_purchase_date` date NOT NULL,
  `home_purchase_value` int(15) NOT NULL,
  `home_area` int(15) NOT NULL,
  `home_type` varchar(1) NOT NULL,
  `auto_fire_notification` int(1) NOT NULL,
  `home_security_system` int(1) NOT NULL,
  `swimming_pool` varchar(1) DEFAULT NULL,
  `basement` int(1) NOT NULL,
  `cus_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`home_id`, `home_purchase_date`, `home_purchase_value`, `home_area`, `home_type`, `auto_fire_notification`, `home_security_system`, `swimming_pool`, `basement`, `cus_id`) VALUES
(50000001, '2016-07-21', 567377, 9890, 'M', 1, 1, 'O', 1, 1),
(50000002, '2015-05-21', 568910, 5544, 'S', 0, 1, 'O', 1, 2),
(50000003, '2027-08-01', 416775, 8105, 'C', 1, 1, 'I', 1, 3),
(50000004, '2016-09-21', 210503, 1621, 'T', 0, 0, 'M', 0, 4),
(50000005, '2016-08-21', 289985, 5738, 'M', 1, 1, 'U', 1, 5),
(50000006, '2017-08-21', 594401, 6532, 'S', 0, 1, 'O', 1, 6),
(50000007, '2016-07-21', 237401, 7190, 'C', 1, 1, 'O', 1, 7),
(50000008, '2017-08-20', 584120, 6170, 'T', 0, 0, 'M', 0, 8),
(50000009, '2017-08-19', 111794, 8252, 'M', 1, 1, 'U', 1, 9),
(50000010, '2017-08-18', 925760, 1210, 'S', 1, 1, 'O', 1, 10),
(50000011, '2017-08-17', 884155, 1101, 'C', 1, 0, 'I', 0, 11),
(50000012, '2017-04-16', 692563, 2335, 'T', 0, 0, 'O', 0, 12);

-- --------------------------------------------------------

--
-- Table structure for table `home_invoice`
--

CREATE TABLE `home_invoice` (
  `inv_id` int(11) NOT NULL,
  `inv_date` date NOT NULL,
  `inv_payment_due` date NOT NULL,
  `inv_amount` int(15) NOT NULL,
  `ins_id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_invoice`
--

INSERT INTO `home_invoice` (`inv_id`, `inv_date`, `inv_payment_due`, `inv_amount`, `ins_id`, `cus_id`) VALUES
(40000001, '2019-03-22', '2019-04-01', 1020, 30000001, 1),
(40000002, '2019-03-21', '2019-04-02', 1040, 30000002, 2),
(40000003, '2019-03-20', '2019-04-03', 1060, 30000003, 3),
(40000004, '2019-03-19', '2019-04-04', 1080, 30000004, 4),
(40000005, '2019-03-18', '2019-04-05', 1100, 30000005, 5),
(40000006, '2019-03-17', '2019-04-06', 1120, 30000006, 6),
(40000007, '2019-03-16', '2019-04-07', 1140, 30000007, 7),
(40000008, '2019-03-15', '2019-04-08', 1160, 30000008, 8),
(40000009, '2019-03-14', '2019-04-09', 1180, 30000009, 9),
(40000010, '2019-03-13', '2019-04-10', 1200, 30000010, 10),
(40000011, '2019-03-12', '2019-04-11', 1220, 30000011, 11),
(40000012, '2019-03-11', '2019-04-12', 1240, 30000012, 12);

-- --------------------------------------------------------

--
-- Table structure for table `home_payment`
--

CREATE TABLE `home_payment` (
  `pay_id` int(11) NOT NULL,
  `pay_date` date NOT NULL,
  `pay_method` varchar(20) NOT NULL,
  `pay_account_num` varchar(20) NOT NULL,
  `inv_id` int(8) NOT NULL,
  `cus_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_payment`
--

INSERT INTO `home_payment` (`pay_id`, `pay_date`, `pay_method`, `pay_account_num`, `inv_id`, `cus_id`) VALUES
(80000001, '2019-05-01', 'PayPal', '123456790', 40000001, 1),
(80000002, '2019-05-02', 'Credit', '123456791', 40000002, 2),
(80000003, '2019-05-03', 'Debit', '123456792', 40000003, 3),
(80000004, '2019-05-04', 'Check', '123456793', 40000004, 4),
(80000005, '2019-05-05', 'Debit', '123456794', 40000005, 5),
(80000006, '2019-05-06', 'Credit', '123456795', 40000006, 6),
(80000007, '2019-05-07', 'PayPal', '123456796', 40000007, 7),
(80000008, '2019-05-08', 'Credit', '123456797', 40000008, 8),
(80000009, '2019-05-09', 'Debit', '123456798', 40000009, 9),
(80000010, '2019-05-10', 'Check', '123456799', 40000010, 10),
(80000011, '2019-05-11', 'Debit', '123456800', 40000011, 11),
(80000012, '2019-05-12', 'Credit', '123456801', 40000012, 12);

-- --------------------------------------------------------

--
-- Table structure for table `home_policy`
--

CREATE TABLE `home_policy` (
  `ins_id` int(11) NOT NULL,
  `ins_type` varchar(1) NOT NULL,
  `ins_start_date` date NOT NULL,
  `ins_end_date` date DEFAULT NULL,
  `ins_amount` int(15) NOT NULL,
  `ins_status` varchar(1) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `home_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_policy`
--

INSERT INTO `home_policy` (`ins_id`, `ins_type`, `ins_start_date`, `ins_end_date`, `ins_amount`, `ins_status`, `cus_id`, `home_id`) VALUES
(30000001, 'H', '2018-08-21', NULL, 6000, 'C', 1, 50000001),
(30000002, 'H', '2018-08-20', NULL, 6500, 'C', 2, 50000002),
(30000003, 'H', '2018-08-19', NULL, 6600, 'C', 3, 50000003),
(30000004, 'H', '2018-08-18', NULL, 6700, 'C', 4, 50000004),
(30000005, 'H', '2018-08-17', NULL, 6800, 'C', 5, 50000005),
(30000006, 'H', '2018-08-16', NULL, 6900, 'C', 6, 50000006),
(30000007, 'H', '2018-08-15', NULL, 7000, 'C', 7, 50000007),
(30000008, 'H', '2018-08-14', NULL, 6100, 'C', 8, 50000008),
(30000009, 'H', '2018-08-13', NULL, 6200, 'C', 9, 50000009),
(30000010, 'H', '2018-08-12', NULL, 6300, 'C', 10, 50000010),
(30000011, 'H', '2018-08-12', '2018-10-12', 6300, 'P', 11, 50000011),
(30000012, 'H', '2018-08-12', '2018-12-12', 6300, 'P', 12, 50000012);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vin` varchar(17) NOT NULL,
  `veh_make_year` varchar(30) NOT NULL,
  `veh_status` varchar(1) NOT NULL,
  `cus_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vin`, `veh_make_year`, `veh_status`, `cus_id`) VALUES
('SBMCKEOTK12345685', 'TOYOTA 2003', 'F', 11),
('SJBEKEOTK12345697', 'TOYOTA 2009', 'L', 12),
('SJDBGEOTK12345695', 'NISSAN 2007', 'O', 13),
('SJDCGFOTK12345691', 'NISSAN 2006', 'F', 14),
('SJDCKEMKK12345696', 'BUCK 2009', 'L', 15),
('SJDCKEOTK12345678', 'FORD 2000', 'O', 16),
('SJDCKEOTK12345679', 'NISSAN 2003', 'F', 17),
('SJDCKEOTK12345681', 'TOYOTA 2003', 'L', 18),
('SJDCKEOTK12345682', 'FORD 2000', 'F', 19),
('SJDCKEOTK12345684', 'BUCK 2006', 'L', 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auto_invoice`
--
ALTER TABLE `auto_invoice`
  ADD PRIMARY KEY (`inv_id`);

--
-- Indexes for table `auto_payment`
--
ALTER TABLE `auto_payment`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `auto_policy`
--
ALTER TABLE `auto_policy`
  ADD PRIMARY KEY (`ins_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`dr_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`em_id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`home_id`);

--
-- Indexes for table `home_invoice`
--
ALTER TABLE `home_invoice`
  ADD PRIMARY KEY (`inv_id`);

--
-- Indexes for table `home_payment`
--
ALTER TABLE `home_payment`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `home_policy`
--
ALTER TABLE `home_policy`
  ADD PRIMARY KEY (`ins_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auto_invoice`
--
ALTER TABLE `auto_invoice`
  MODIFY `inv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70000022;

--
-- AUTO_INCREMENT for table `auto_policy`
--
ALTER TABLE `auto_policy`
  MODIFY `ins_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20000011;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique customer ID', AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `dr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23456800;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `em_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `home_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50000013;

--
-- AUTO_INCREMENT for table `home_invoice`
--
ALTER TABLE `home_invoice`
  MODIFY `inv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40000013;

--
-- AUTO_INCREMENT for table `home_policy`
--
ALTER TABLE `home_policy`
  MODIFY `ins_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30000013;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
