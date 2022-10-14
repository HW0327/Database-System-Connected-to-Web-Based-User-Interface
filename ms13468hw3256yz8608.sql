-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2022 at 11:44 PM
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
-- Database: `ms13468hw3256yz8608`
--

-- --------------------------------------------------------

--
-- Table structure for table `ms_yz_hw_auto_insurance`
--

CREATE TABLE `ms_yz_hw_auto_insurance` (
  `auto_ins_description` varchar(30) NOT NULL COMMENT 'Description about this automobile insurance policy',
  `ins_id` int(8) NOT NULL COMMENT 'Unique insurance ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ms_yz_hw_auto_insurance`
--

INSERT INTO `ms_yz_hw_auto_insurance` (`auto_ins_description`, `ins_id`) VALUES
('wheel A', 20000011),
('airbag A', 20000012),
('AC A', 20000013),
('breaker A', 20000014),
('control center A', 20000015),
('wheel B', 20000016),
('airbag B', 20000017),
('AC B', 20000018),
('breaker B', 20000019),
('control center B', 20000020);

-- --------------------------------------------------------

--
-- Table structure for table `ms_yz_hw_auto_ins_vehicle`
--

CREATE TABLE `ms_yz_hw_auto_ins_vehicle` (
  `auto_ins_details` varchar(30) NOT NULL COMMENT 'Description about this automobile insurance details',
  `ins_id` int(8) NOT NULL COMMENT 'Foreign key: insurance ID',
  `vin` varchar(17) NOT NULL COMMENT 'Foreign key: VIN'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ms_yz_hw_auto_ins_vehicle`
--

INSERT INTO `ms_yz_hw_auto_ins_vehicle` (`auto_ins_details`, `ins_id`, `vin`) VALUES
('SUV', 20000011, 'SJDCKEOTK12345678'),
('wagon', 20000011, 'SJDCKFETK12345688'),
('sedan', 20000012, 'SJDCKEOTK12345679'),
('sedan', 20000012, 'SJDCKEOTK12345689'),
('wagon', 20000013, 'SJDCKSDOT12345680'),
('SUV', 20000013, 'SJDCLAOTK12345690'),
('sedan', 20000014, 'SJDCGFOTK12345691'),
('roadster', 20000014, 'SJDCKEOTK12345681'),
('SUV', 20000015, 'SJDCKEOTK12345682'),
('wagon', 20000015, 'SJDCKEOTK12345692'),
('roadster', 20000016, 'SJDCKSDTK12345693'),
('sedan', 20000016, 'SJGFKEOTK12345683'),
('wagon', 20000017, 'SJDCKEOTK12345684'),
('SUV', 20000017, 'SJDCKEOTK12345694'),
('sedan', 20000018, 'SBMCKEOTK12345685'),
('sedan', 20000018, 'SJDBGEOTK12345695'),
('wagon', 20000019, 'SJDCKEMKK12345696'),
('SUV', 20000019, 'SJDCKEOTK12345686'),
('sedan', 20000020, 'SJBEKEOTK12345697'),
('sedan', 20000020, 'SJDCKEOTK12345687');

-- --------------------------------------------------------

--
-- Table structure for table `ms_yz_hw_customer`
--

CREATE TABLE `ms_yz_hw_customer` (
  `cus_id` int(8) NOT NULL COMMENT 'Unique customer ID',
  `cus_fname` varchar(30) NOT NULL COMMENT 'Customer first name',
  `cus_lname` varchar(30) NOT NULL COMMENT 'Customer last name',
  `cus_street` varchar(30) NOT NULL COMMENT 'Customer address: Street',
  `cus_city` varchar(30) NOT NULL COMMENT 'Customer address: City',
  `cus_state` varchar(30) NOT NULL COMMENT 'Customer address: State',
  `cus_zipcode` varchar(5) NOT NULL COMMENT 'Customer address: Zipcode',
  `cus_gender` varchar(1) DEFAULT NULL COMMENT 'Customer gender: M(Male) or F(Female)',
  `cus_marital` varchar(1) NOT NULL COMMENT 'Customer marital status: M(Married), S(Single) or W(Widow)'
) ;

--
-- Dumping data for table `ms_yz_hw_customer`
--

INSERT INTO `ms_yz_hw_customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zipcode`, `cus_gender`, `cus_marital`) VALUES
(10000001, 'Amanda', 'Mcallister', 'Richard Hills', 'Smithshire', 'Nevada', '82069', 'M', 'M'),
(10000002, 'Larry', 'Nance', 'Edward Port', 'Jefferyshire', 'South Dakota', '24516', 'F', 'M'),
(10000003, 'Virginia', 'Lucas', 'Williams Viaduct', 'Rebeccafurt', 'Massachusetts', '80391', 'M', 'S'),
(10000004, 'Paul', 'Brown', 'Oconnor Rapid', 'Josephhaven', 'New Hampshire', '05701', 'M', 'S'),
(10000005, 'Clara', 'Jimenez', 'Bailey Village', 'Michaelbury', 'Montana', '56491', 'F', 'M'),
(10000006, 'Billy', 'Navarro', 'Edwards Crest', 'Connorborough', 'New Mexico', '93641', 'M', 'M'),
(10000007, 'Martha', 'Pena', 'Lee Circles', 'Marissamouth', 'Alabama', '16177', 'F', 'M'),
(10000008, 'Helen', 'Derosa', 'Garcia Centers', 'Bradleymouth', 'North Carolina', '07645', 'F', 'M'),
(10000009, 'Charles', 'Seman', 'Grimes Trace', 'Aaronview', 'Vermont', '34278', 'M', 'M'),
(10000010, 'William', 'Kitchen', 'Thomas Cliff', 'Jeffreystad', 'Nebraska', '82479', 'M', 'M'),
(10000011, 'Tammy', 'Mccoy', 'Victor Landing', 'Gibsonchester', 'Missouri', '32572', 'F', 'M'),
(10000012, 'Gregory', 'Smith', 'Margaret Motorway', 'West Nicholas', 'Delaware', '32321', 'M', 'S'),
(10000013, 'Robert', 'Castrellon', 'Michael Neck', 'New Robert', 'New Mexico', '40721', 'M', 'M'),
(10000014, 'Chris', 'Kolter', 'Thomas Shore', 'New Christopherside', 'Maryland', '68003', 'F', 'S'),
(10000015, 'Kathryn', 'Hewlett', 'Shirley Centers', 'North Sydneytown', 'Arkansas', '45724', 'M', 'S'),
(10000016, 'Joey', 'Edwards', 'Williams Grove', 'Whiteville', 'Michigan', '22515', 'M', 'S'),
(10000017, 'Shirley', 'Hurley', 'Christina Well', 'Davidmouth', 'Florida', '35281', 'M', 'W'),
(10000018, 'Ralph', 'Bradley', 'Moore Fork', 'Port Tiffanystad', 'Nebraska', '27810', 'F', 'M'),
(10000019, 'Blair', 'Light', 'Pham Valley', 'Lake Jamesburgh', 'Kansas', '23582', 'F', 'M'),
(10000020, 'Joseph', 'Hudson', 'Bryan Views', 'East Catherineborough', 'Arizona', '31408', 'M', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `ms_yz_hw_customer_insurance_policy`
--

CREATE TABLE `ms_yz_hw_customer_insurance_policy` (
  `cus_type` varchar(1) NOT NULL,
  `cus_id` int(8) NOT NULL,
  `ins_id` int(8) NOT NULL
) ;

--
-- Dumping data for table `ms_yz_hw_customer_insurance_policy`
--

INSERT INTO `ms_yz_hw_customer_insurance_policy` (`cus_type`, `cus_id`, `ins_id`) VALUES
('H', 10000001, 20000001),
('H', 10000002, 20000002),
('H', 10000003, 20000003),
('H', 10000004, 20000004),
('H', 10000005, 20000005),
('H', 10000006, 20000006),
('H', 10000007, 20000007),
('H', 10000008, 20000008),
('H', 10000009, 20000009),
('H', 10000010, 20000010),
('A', 10000011, 20000011),
('A', 10000012, 20000012),
('A', 10000013, 20000013),
('A', 10000014, 20000014),
('A', 10000015, 20000015),
('A', 10000016, 20000016),
('A', 10000017, 20000017),
('H', 10000018, 20000009),
('A', 10000018, 20000018),
('A', 10000019, 20000019),
('H', 10000020, 20000007),
('A', 10000020, 20000020);

-- --------------------------------------------------------

--
-- Table structure for table `ms_yz_hw_driver`
--

CREATE TABLE `ms_yz_hw_driver` (
  `dr_id` int(8) NOT NULL,
  `dr_liscence_num` varchar(30) NOT NULL,
  `dr_fname` varchar(30) NOT NULL,
  `dr_lname` varchar(30) NOT NULL,
  `vin` varchar(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ms_yz_hw_driver`
--

INSERT INTO `ms_yz_hw_driver` (`dr_id`, `dr_liscence_num`, `dr_fname`, `dr_lname`, `vin`) VALUES
(23456790, '123456789', 'Isabel', 'Hernandez', 'SJDCKEOTK12345678'),
(23456791, '123456790', 'Leda', 'Hilbert', 'SJDCKEOTK12345679'),
(23456792, '123456791', 'Jose', 'Simmons', 'SJDCKSDOT12345680'),
(23456793, '123456792', 'Doris', 'Capaldi', 'SJDCKEOTK12345681'),
(23456794, '123456793', 'Peter', 'Boyd', 'SJDCKEOTK12345682'),
(23456795, '123456794', 'Jane', 'Christensen', 'SJGFKEOTK12345683'),
(23456796, '123456795', 'Charlotte', 'Leblanc', 'SJDCKEOTK12345684'),
(23456797, '123456796', 'Julie', 'Cox', 'SBMCKEOTK12345685'),
(23456798, '123456797', 'Dick', 'Jordan', 'SJDCKEOTK12345686'),
(23456799, '123456798', 'Christina', 'Guzman', 'SJDCKEOTK12345687'),
(23456800, '123456799', 'Christy', 'Escalante', 'SJDCKFETK12345688'),
(23456801, '123456800', 'Dorinda', 'Shan', 'SJDCKEOTK12345689'),
(23456802, '123456801', 'Kristina', 'Fagan', 'SJDCLAOTK12345690'),
(23456803, '123456802', 'Teresa', 'Sylvester', 'SJDCGFOTK12345691'),
(23456804, '123456803', 'Catherine', 'Iglesias', 'SJDCKEOTK12345692'),
(23456805, '123456804', 'Nicolas', 'Eckert', 'SJDCKSDTK12345693'),
(23456806, '123456805', 'Jean', 'Rivas', 'SJDCKEOTK12345694'),
(23456807, '123456806', 'Margaret', 'Jordan', 'SJDBGEOTK12345695'),
(23456808, '123456807', 'Howard', 'Orgain', 'SJDCKEMKK12345696'),
(23456809, '123456808', 'Reba', 'Montes', 'SJBEKEOTK12345697');

-- --------------------------------------------------------

--
-- Table structure for table `ms_yz_hw_expired_auto_insurance`
--

CREATE TABLE `ms_yz_hw_expired_auto_insurance` (
  `ins_id` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ms_yz_hw_expired_auto_insurance`
--

INSERT INTO `ms_yz_hw_expired_auto_insurance` (`ins_id`) VALUES
(20000013),
(20000018);

-- --------------------------------------------------------

--
-- Table structure for table `ms_yz_hw_expired_home_insurance`
--

CREATE TABLE `ms_yz_hw_expired_home_insurance` (
  `ins_id` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ms_yz_hw_expired_home_insurance`
--

INSERT INTO `ms_yz_hw_expired_home_insurance` (`ins_id`) VALUES
(20000008);

-- --------------------------------------------------------

--
-- Table structure for table `ms_yz_hw_home`
--

CREATE TABLE `ms_yz_hw_home` (
  `home_id` int(8) NOT NULL,
  `home_purchase_date` date NOT NULL,
  `home_purchase_value` int(15) NOT NULL,
  `home_area` int(15) NOT NULL,
  `home_type` varchar(1) NOT NULL,
  `auto_fire_notification` int(1) NOT NULL,
  `home_security_system` int(1) NOT NULL,
  `swimming_pool` varchar(1) DEFAULT NULL,
  `basement` int(1) NOT NULL
) ;

--
-- Dumping data for table `ms_yz_hw_home`
--

INSERT INTO `ms_yz_hw_home` (`home_id`, `home_purchase_date`, `home_purchase_value`, `home_area`, `home_type`, `auto_fire_notification`, `home_security_system`, `swimming_pool`, `basement`) VALUES
(50000001, '2016-07-21', 567377, 9890, 'M', 1, 1, 'O', 1),
(50000002, '2015-05-21', 568910, 5544, 'S', 0, 0, 'O', 1),
(50000003, '2027-08-01', 416775, 8105, 'C', 1, 1, 'I', 1),
(50000004, '2016-09-21', 210503, 1621, 'T', 0, 0, 'M', 0),
(50000005, '2016-08-21', 289985, 5738, 'M', 1, 1, 'U', 1),
(50000006, '2017-08-21', 594401, 6532, 'S', 0, 1, 'O', 1),
(50000007, '2016-07-21', 237401, 7190, 'C', 1, 1, 'O', 1),
(50000008, '2017-08-20', 584120, 6170, 'T', 0, 0, 'M', 0),
(50000009, '2017-08-19', 111794, 8252, 'M', 1, 1, 'U', 1),
(50000010, '2017-08-18', 925760, 1210, 'S', 1, 1, 'O', 1),
(50000011, '2017-08-17', 884155, 1101, 'C', 1, 0, 'I', 0),
(50000012, '2017-04-16', 692563, 2335, 'T', 0, 0, 'O', 0),
(50000013, '2017-04-15', 871599, 7695, 'M', 1, 1, 'U', 1),
(50000014, '2017-08-14', 695559, 8476, 'S', 1, 1, 'O', 0),
(50000015, '2017-08-13', 581306, 8979, 'C', 1, 1, 'I', 1),
(50000016, '2017-08-12', 307078, 6543, 'S', 1, 1, 'M', 1),
(50000017, '2017-05-11', 999739, 7055, 'M', 1, 1, 'U', 0),
(50000018, '2017-04-10', 825099, 5701, 'S', 0, 1, 'O', 1),
(50000019, '2017-08-09', 365690, 4907, 'C', 1, 1, 'O', 1),
(50000020, '2017-08-08', 883784, 1983, 'S', 1, 1, 'O', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ms_yz_hw_home_insurance`
--

CREATE TABLE `ms_yz_hw_home_insurance` (
  `home_ins_description` varchar(30) NOT NULL,
  `ins_id` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ms_yz_hw_home_insurance`
--

INSERT INTO `ms_yz_hw_home_insurance` (`home_ins_description`, `ins_id`) VALUES
('windows A', 20000001),
('porperties A', 20000002),
('belongings A', 20000003),
('wall A', 20000004),
('furniture A', 20000005),
('windows B', 20000006),
('porperties B', 20000007),
('belongings B', 20000008),
('wall B', 20000009),
('furniture B', 20000010);

-- --------------------------------------------------------

--
-- Table structure for table `ms_yz_hw_home_ins_home`
--

CREATE TABLE `ms_yz_hw_home_ins_home` (
  `home_ins_details` varchar(30) NOT NULL,
  `ins_id` int(8) NOT NULL,
  `home_id` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ms_yz_hw_home_ins_home`
--

INSERT INTO `ms_yz_hw_home_ins_home` (`home_ins_details`, `ins_id`, `home_id`) VALUES
('1b1b', 20000001, 50000001),
('2b2b', 20000001, 50000011),
('3b2b', 20000002, 50000002),
('2b1b', 20000002, 50000012),
('2b2b', 20000003, 50000003),
('1b1b', 20000003, 50000013),
('2b1b', 20000004, 50000004),
('3b2b', 20000004, 50000014),
('1b1b', 20000005, 50000005),
('2b2b', 20000005, 50000015),
('3b2b', 20000006, 50000006),
('2b1b', 20000006, 50000016),
('2b2b', 20000007, 50000007),
('2b2b', 20000007, 50000017),
('2b1b', 20000008, 50000008),
('2b1b', 20000008, 50000018),
('1b1b', 20000009, 50000009),
('1b1b', 20000009, 50000019),
('3b2b', 20000010, 50000010),
('3b2b', 20000010, 50000020);

-- --------------------------------------------------------

--
-- Table structure for table `ms_yz_hw_insurance_policy`
--

CREATE TABLE `ms_yz_hw_insurance_policy` (
  `ins_id` int(8) NOT NULL,
  `ins_type` varchar(1) NOT NULL,
  `ins_start_date` date NOT NULL,
  `ins_end_date` date DEFAULT NULL,
  `ins_amount` int(15) NOT NULL,
  `ins_status` varchar(1) NOT NULL
) ;

--
-- Dumping data for table `ms_yz_hw_insurance_policy`
--

INSERT INTO `ms_yz_hw_insurance_policy` (`ins_id`, `ins_type`, `ins_start_date`, `ins_end_date`, `ins_amount`, `ins_status`) VALUES
(20000001, 'H', '2018-08-21', NULL, 6000, 'C'),
(20000002, 'H', '2018-08-20', NULL, 6500, 'C'),
(20000003, 'H', '2018-08-19', NULL, 7000, 'C'),
(20000004, 'H', '2018-08-18', NULL, 7500, 'C'),
(20000005, 'H', '2018-06-17', NULL, 8000, 'C'),
(20000006, 'H', '2018-06-16', NULL, 8500, 'C'),
(20000007, 'H', '2018-06-15', NULL, 9000, 'C'),
(20000008, 'H', '2018-08-14', '2022-08-21', 9500, 'P'),
(20000009, 'H', '2018-08-13', NULL, 10000, 'C'),
(20000010, 'H', '2018-08-12', NULL, 10500, 'C'),
(20000011, 'A', '2018-08-11', NULL, 600, 'C'),
(20000012, 'A', '2018-06-10', NULL, 650, 'C'),
(20000013, 'A', '2018-06-09', '0000-00-00', 700, 'P'),
(20000014, 'A', '2018-08-08', NULL, 750, 'C'),
(20000015, 'A', '2018-08-07', NULL, 800, 'C'),
(20000016, 'A', '2018-08-06', NULL, 850, 'C'),
(20000017, 'A', '2018-08-05', NULL, 900, 'C'),
(20000018, 'A', '2018-06-04', '0000-00-00', 950, 'P'),
(20000019, 'A', '2018-06-03', NULL, 1000, 'C'),
(20000020, 'A', '2018-06-02', NULL, 1050, 'C');

-- --------------------------------------------------------

--
-- Table structure for table `ms_yz_hw_invoice`
--

CREATE TABLE `ms_yz_hw_invoice` (
  `inv_id` int(8) NOT NULL,
  `inv_date` date NOT NULL,
  `inv_payment_due` date NOT NULL,
  `inv_amount` int(15) NOT NULL,
  `ins_id` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ms_yz_hw_invoice`
--

INSERT INTO `ms_yz_hw_invoice` (`inv_id`, `inv_date`, `inv_payment_due`, `inv_amount`, `ins_id`) VALUES
(30000001, '2019-03-22', '2019-04-01', 1020, 20000001),
(30000002, '2019-03-21', '2019-04-02', 1040, 20000002),
(30000003, '2019-03-20', '2019-04-03', 1060, 20000003),
(30000004, '2019-03-19', '2019-04-04', 1080, 20000004),
(30000005, '2019-03-18', '2019-04-05', 1100, 20000005),
(30000006, '2019-03-17', '2019-04-06', 1120, 20000006),
(30000007, '2019-03-16', '2019-04-07', 1140, 20000007),
(30000008, '2019-03-15', '2019-04-08', 1160, 20000008),
(30000009, '2019-03-14', '2019-04-09', 1180, 20000009),
(30000010, '2019-03-13', '2019-04-10', 1200, 20000010),
(30000011, '2019-03-12', '2019-04-11', 1220, 20000011),
(30000012, '2019-03-11', '2019-04-12', 1240, 20000012),
(30000013, '2019-03-10', '2019-04-13', 1260, 20000013),
(30000014, '2019-03-09', '2019-04-14', 1280, 20000014),
(30000015, '2019-03-08', '2019-04-15', 1300, 20000015),
(30000016, '2019-03-07', '2019-04-16', 1320, 20000016),
(30000017, '2019-03-06', '2019-04-17', 1340, 20000017),
(30000018, '2019-03-05', '2019-04-18', 1360, 20000018),
(30000019, '2019-03-04', '2019-04-19', 1380, 20000019),
(30000020, '2019-03-03', '2019-04-20', 1400, 20000020),
(30000021, '2019-03-02', '2019-04-21', 1400, 20000020),
(30000022, '2019-03-26', '2019-04-22', 1200, 20000010),
(30000023, '2019-03-25', '2019-04-23', 1280, 20000014);

-- --------------------------------------------------------

--
-- Table structure for table `ms_yz_hw_payment`
--

CREATE TABLE `ms_yz_hw_payment` (
  `pay_id` int(8) NOT NULL,
  `pay_date` date NOT NULL,
  `pay_method` varchar(20) NOT NULL,
  `pay_account_num` varchar(20) NOT NULL,
  `inv_id` int(8) NOT NULL
) ;

--
-- Dumping data for table `ms_yz_hw_payment`
--

INSERT INTO `ms_yz_hw_payment` (`pay_id`, `pay_date`, `pay_method`, `pay_account_num`, `inv_id`) VALUES
(40000001, '2019-05-01', 'PayPal', '123456790', 30000001),
(40000002, '2019-05-02', 'Credit', '123456791', 30000002),
(40000003, '2019-05-03', 'Debit', '123456792', 30000003),
(40000004, '2019-05-04', 'Check', '123456793', 30000004),
(40000005, '2019-05-05', 'Debit', '123456794', 30000005),
(40000006, '2019-05-06', 'Credit', '123456795', 30000006),
(40000007, '2019-05-07', 'PayPal', '123456796', 30000007),
(40000008, '2019-05-08', 'Credit', '123456797', 30000008),
(40000009, '2019-05-09', 'Debit', '123456798', 30000009),
(40000010, '2019-05-10', 'Check', '123456799', 30000010),
(40000011, '2019-05-11', 'Debit', '123456800', 30000011),
(40000012, '2019-05-12', 'Credit', '123456801', 30000012),
(40000013, '2019-05-13', 'PayPal', '123456802', 30000013),
(40000014, '2019-05-14', 'Credit', '123456803', 30000014),
(40000015, '2019-05-15', 'Debit', '123456804', 30000015),
(40000016, '2019-05-16', 'Check', '123456805', 30000016),
(40000017, '2019-05-17', 'Debit', '123456806', 30000017),
(40000018, '2019-05-18', 'Credit', '123456807', 30000018),
(40000019, '2019-05-19', 'Debit', '123456808', 30000019),
(40000020, '2019-05-20', 'Check', '123456809', 30000020),
(40000021, '2019-05-21', 'Debit', '123456810', 30000021),
(40000022, '2019-05-22', 'Check', '123456811', 30000022),
(40000023, '2019-05-23', 'Debit', '123456812', 30000023),
(40000024, '2019-05-24', 'Debit', '123456813', 30000022),
(40000025, '2019-05-25', 'Credit', '123456814', 30000023);

-- --------------------------------------------------------

--
-- Table structure for table `ms_yz_hw_vehicle`
--

CREATE TABLE `ms_yz_hw_vehicle` (
  `vin` varchar(17) NOT NULL,
  `veh_make_year` varchar(30) NOT NULL,
  `veh_status` varchar(1) NOT NULL
) ;

--
-- Dumping data for table `ms_yz_hw_vehicle`
--

INSERT INTO `ms_yz_hw_vehicle` (`vin`, `veh_make_year`, `veh_status`) VALUES
('SBMCKEOTK12345685', 'TOYOTA 2003', 'F'),
('SJBEKEOTK12345697', 'TOYOTA 2009', 'L'),
('SJDBGEOTK12345695', 'NISSAN 2007', 'O'),
('SJDCGFOTK12345691', 'NISSAN 2006', 'F'),
('SJDCKEMKK12345696', 'BUCK 2009', 'L'),
('SJDCKEOTK12345678', 'FORD 2000', 'O'),
('SJDCKEOTK12345679', 'NISSAN 2003', 'F'),
('SJDCKEOTK12345681', 'TOYOTA 2003', 'L'),
('SJDCKEOTK12345682', 'FORD 2000', 'F'),
('SJDCKEOTK12345684', 'BUCK 2006', 'L'),
('SJDCKEOTK12345686', 'FORD 2001', 'O'),
('SJDCKEOTK12345687', 'NISSAN 2005', 'L'),
('SJDCKEOTK12345689', 'TOYOTA 2007', 'O'),
('SJDCKEOTK12345692', 'BUCK 2008', 'O'),
('SJDCKEOTK12345694', 'FORD 2008', 'O'),
('SJDCKFETK12345688', 'BUCK 2007', 'O'),
('SJDCKSDOT12345680', 'BUCK 2005', 'O'),
('SJDCKSDTK12345693', 'TOYOTA 2008', 'L'),
('SJDCLAOTK12345690', 'FORD 2004', 'L'),
('SJGFKEOTK12345683', 'NISSAN 2004', 'O');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ms_yz_hw_auto_insurance`
--
ALTER TABLE `ms_yz_hw_auto_insurance`
  ADD PRIMARY KEY (`ins_id`);

--
-- Indexes for table `ms_yz_hw_auto_ins_vehicle`
--
ALTER TABLE `ms_yz_hw_auto_ins_vehicle`
  ADD PRIMARY KEY (`ins_id`,`vin`),
  ADD KEY `auto_ins_vehicle_vehicle_fk` (`vin`);

--
-- Indexes for table `ms_yz_hw_customer`
--
ALTER TABLE `ms_yz_hw_customer`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `ms_yz_hw_customer_insurance_policy`
--
ALTER TABLE `ms_yz_hw_customer_insurance_policy`
  ADD PRIMARY KEY (`cus_id`,`ins_id`),
  ADD KEY `customer_insurance_policy_insurance_policy_fk` (`ins_id`);

--
-- Indexes for table `ms_yz_hw_driver`
--
ALTER TABLE `ms_yz_hw_driver`
  ADD PRIMARY KEY (`dr_id`),
  ADD KEY `driver_vehicle_fk` (`vin`);

--
-- Indexes for table `ms_yz_hw_expired_auto_insurance`
--
ALTER TABLE `ms_yz_hw_expired_auto_insurance`
  ADD PRIMARY KEY (`ins_id`);

--
-- Indexes for table `ms_yz_hw_expired_home_insurance`
--
ALTER TABLE `ms_yz_hw_expired_home_insurance`
  ADD PRIMARY KEY (`ins_id`);

--
-- Indexes for table `ms_yz_hw_home`
--
ALTER TABLE `ms_yz_hw_home`
  ADD PRIMARY KEY (`home_id`);

--
-- Indexes for table `ms_yz_hw_home_insurance`
--
ALTER TABLE `ms_yz_hw_home_insurance`
  ADD PRIMARY KEY (`ins_id`);

--
-- Indexes for table `ms_yz_hw_home_ins_home`
--
ALTER TABLE `ms_yz_hw_home_ins_home`
  ADD PRIMARY KEY (`ins_id`,`home_id`),
  ADD KEY `home_ins_home_home_fk` (`home_id`);

--
-- Indexes for table `ms_yz_hw_insurance_policy`
--
ALTER TABLE `ms_yz_hw_insurance_policy`
  ADD PRIMARY KEY (`ins_id`);

--
-- Indexes for table `ms_yz_hw_invoice`
--
ALTER TABLE `ms_yz_hw_invoice`
  ADD PRIMARY KEY (`inv_id`),
  ADD KEY `invoice_insurance_policy_fk` (`ins_id`);

--
-- Indexes for table `ms_yz_hw_payment`
--
ALTER TABLE `ms_yz_hw_payment`
  ADD PRIMARY KEY (`pay_id`),
  ADD KEY `payment_invoice_fk` (`inv_id`);

--
-- Indexes for table `ms_yz_hw_vehicle`
--
ALTER TABLE `ms_yz_hw_vehicle`
  ADD PRIMARY KEY (`vin`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ms_yz_hw_auto_insurance`
--
ALTER TABLE `ms_yz_hw_auto_insurance`
  ADD CONSTRAINT `auto_insurance_insurance_policy_fk` FOREIGN KEY (`ins_id`) REFERENCES `ms_yz_hw_insurance_policy` (`ins_id`);

--
-- Constraints for table `ms_yz_hw_auto_ins_vehicle`
--
ALTER TABLE `ms_yz_hw_auto_ins_vehicle`
  ADD CONSTRAINT `auto_ins_vehicle_auto_insurance_fk` FOREIGN KEY (`ins_id`) REFERENCES `ms_yz_hw_auto_insurance` (`ins_id`),
  ADD CONSTRAINT `auto_ins_vehicle_vehicle_fk` FOREIGN KEY (`vin`) REFERENCES `ms_yz_hw_vehicle` (`vin`);

--
-- Constraints for table `ms_yz_hw_customer_insurance_policy`
--
ALTER TABLE `ms_yz_hw_customer_insurance_policy`
  ADD CONSTRAINT `customer_insurance_policy_customer_fk` FOREIGN KEY (`cus_id`) REFERENCES `ms_yz_hw_customer` (`cus_id`),
  ADD CONSTRAINT `customer_insurance_policy_insurance_policy_fk` FOREIGN KEY (`ins_id`) REFERENCES `ms_yz_hw_insurance_policy` (`ins_id`);

--
-- Constraints for table `ms_yz_hw_driver`
--
ALTER TABLE `ms_yz_hw_driver`
  ADD CONSTRAINT `driver_vehicle_fk` FOREIGN KEY (`vin`) REFERENCES `ms_yz_hw_vehicle` (`vin`);

--
-- Constraints for table `ms_yz_hw_expired_auto_insurance`
--
ALTER TABLE `ms_yz_hw_expired_auto_insurance`
  ADD CONSTRAINT `expired_auto_insurance_auto_insurance_fk` FOREIGN KEY (`ins_id`) REFERENCES `ms_yz_hw_auto_insurance` (`ins_id`);

--
-- Constraints for table `ms_yz_hw_expired_home_insurance`
--
ALTER TABLE `ms_yz_hw_expired_home_insurance`
  ADD CONSTRAINT `expired_home_insurance_home_insurance_fk` FOREIGN KEY (`ins_id`) REFERENCES `ms_yz_hw_home_insurance` (`ins_id`);

--
-- Constraints for table `ms_yz_hw_home_insurance`
--
ALTER TABLE `ms_yz_hw_home_insurance`
  ADD CONSTRAINT `home_insurance_insurance_policy_fk` FOREIGN KEY (`ins_id`) REFERENCES `ms_yz_hw_insurance_policy` (`ins_id`);

--
-- Constraints for table `ms_yz_hw_home_ins_home`
--
ALTER TABLE `ms_yz_hw_home_ins_home`
  ADD CONSTRAINT `home_ins_home_home_fk` FOREIGN KEY (`home_id`) REFERENCES `ms_yz_hw_home` (`home_id`),
  ADD CONSTRAINT `home_ins_home_home_insurance_fk` FOREIGN KEY (`ins_id`) REFERENCES `ms_yz_hw_home_insurance` (`ins_id`);

--
-- Constraints for table `ms_yz_hw_invoice`
--
ALTER TABLE `ms_yz_hw_invoice`
  ADD CONSTRAINT `invoice_insurance_policy_fk` FOREIGN KEY (`ins_id`) REFERENCES `ms_yz_hw_insurance_policy` (`ins_id`);

--
-- Constraints for table `ms_yz_hw_payment`
--
ALTER TABLE `ms_yz_hw_payment`
  ADD CONSTRAINT `payment_invoice_fk` FOREIGN KEY (`inv_id`) REFERENCES `ms_yz_hw_invoice` (`inv_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
