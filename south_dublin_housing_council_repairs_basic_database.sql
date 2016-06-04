-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2015 at 01:17 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `south_dublin_housing_council_repairs`
--

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `EQUIPMENT_ID` int(10) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(50) NOT NULL,
  `VALUE` decimal(15,2) NOT NULL,
  `INSPECTION_DATE` date NOT NULL,
  `STATE_OF_REPAIR` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`EQUIPMENT_ID`, `TYPE`, `DESCRIPTION`, `VALUE`, `INSPECTION_DATE`, `STATE_OF_REPAIR`) VALUES
(1, 'Drill', 'DEWALT pistol drill kit', '16.00', '2015-09-15', 'Good'),
(2, 'Adjustable wrench', 'Stanley 300mm MaxSteel', '14.00', '2015-10-08', 'Excellent'),
(3, 'Angle Grinder', 'Makita GA4530KD 720W', '52.00', '2015-10-12', 'Poor'),
(4, 'Ladder', 'SKY528 Heavy duty foldable', '120.00', '2015-10-13', 'Good'),
(5, 'Voltmeter', 'Voltmeter', '10.00', '2015-08-25', 'Excellent'),
(9, 'drill', 'Powerhouse 500', '20.00', '0000-00-00', 'Good'),
(10, 'Shovel', 'Fiskars Heavy Duty Shovel', '20.00', '2015-12-01', 'Excellent'),
(11, 'Hammer', 'Stanley claw hammer', '8.49', '2015-12-15', 'Good'),
(12, 'Screwdriver', 'Stanley 10 piece screw driver set', '20.00', '2015-12-02', 'Good'),
(13, 'wrench', 'Huskers 14 inch heavy duty pipe wrench', '12.48', '2015-12-12', 'Excellent'),
(14, 'Saw', 'Stanley Heavy Duty 30 inch saw', '15.50', '2015-11-29', 'Excellent');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `POSTCODE` varchar(10) NOT NULL,
  `TENANT_ID` int(20) NOT NULL,
  `ADDRESS` varchar(50) NOT NULL,
  `REPAIR_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`POSTCODE`, `TENANT_ID`, `ADDRESS`, `REPAIR_ID`) VALUES
('D04 5N 807', 9, '54 Hazle Grove, Clondalkin', 5),
('D04 KN85', 5, '54 Sandymount Avenue', 3),
('D04 N2E9', 2, '89 Donnybrook Avenue', 5),
('D06 P2N5', 3, '85 Rathmines Road Lower', 4),
('D06 W1D7', 1, '22 Belgrave Square South', 1),
('D08 F6W2', 4, '75 Lombard Street East', 2),
('D12 A2B9', 12, '75 RUTLAND GROVE, DUBLIN 12', 6);

-- --------------------------------------------------------

--
-- Table structure for table `repairs`
--

CREATE TABLE `repairs` (
  `REPAIR_ID` int(10) NOT NULL,
  `TYPE` varchar(30) NOT NULL,
  `URGENCY` varchar(20) NOT NULL,
  `DETAILS` varchar(50) NOT NULL,
  `DATE` date NOT NULL,
  `TIME` time(6) NOT NULL,
  `TRADESMAN_ID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `repairs`
--

INSERT INTO `repairs` (`REPAIR_ID`, `TYPE`, `URGENCY`, `DETAILS`, `DATE`, `TIME`, `TRADESMAN_ID`) VALUES
(1, 'Plumbing', 'Urgent', 'Leak under sink unit', '2015-11-17', '14:45:00.000000', 3),
(2, 'Electric', 'Emergency', 'Smoking fuse board', '2015-11-18', '15:00:00.000000', 3),
(3, 'Plastering', 'Cyclical', 'Repairs to internal walls', '2015-02-01', '11:00:00.000000', 5),
(4, 'Carpentry', 'Cyclical', 'Replace hall door', '2015-05-05', '10:00:00.000000', 1),
(5, 'Plumbing', 'Routine', 'Replace toilet cistern', '2015-09-10', '12:00:00.000000', 3),
(6, 'Woodwork', 'Cyclical', 'Replace damp skirting board', '2015-12-14', '11:00:00.000000', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tenant`
--

CREATE TABLE `tenant` (
  `TENANT_ID` int(20) NOT NULL,
  `REGISTER_NUMBER` int(20) NOT NULL,
  `FIRST_NAME` varchar(20) NOT NULL,
  `LAST_NAME` varchar(20) NOT NULL,
  `CONTACT` varchar(20) NOT NULL,
  `EMAIL` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tenant`
--

INSERT INTO `tenant` (`TENANT_ID`, `REGISTER_NUMBER`, `FIRST_NAME`, `LAST_NAME`, `CONTACT`, `EMAIL`) VALUES
(1, 27854, 'DUSTIN', 'DONNELLY', '0896904260', 'ilovedublincoddle@gmail.com'),
(2, 39657, 'GEORGE ', 'WALSH', '0872402093', 'thundercats@yahoo.com'),
(3, 10550, 'MARY', 'FUREY', '0862483815', 'iamlegend@eircom.ie'),
(4, 89386, 'AOIFE', 'DOYLE', '0851278643', 'meow@outlook.com'),
(5, 42893, 'TOM', 'O GARA', '08767672841', 'soundman@Hotmail.com'),
(8, 2147483647, 'BONO', 'VOX', '01234567', 'elevation@vertigo.ie'),
(9, 608488585, 'Michael', 'Walls', '085 2789345', 'm.walls@yahoo.co.uk'),
(10, 9959595, 'Lawrence', 'Mullen', '0879375639', 'arcobat@eircom.ie'),
(11, 5678915, 'george', 'Boole', '08723478', 'george@gmail.com'),
(12, 2147483647, 'Mary', 'Murray', '0895487325', 'murray1975@gmail.com'),
(15, 40, 'JEFF', 'BRIDGES', '089583478', 'thedude@gmail.com'),
(19, 667796969, 'STEPHEN', 'FAHY', '0872854939', 'sstephenpfahy@gmail.com'),
(85, 2147483647, 'Badger', 'O Malley', '757575', 'badger@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tradesman`
--

CREATE TABLE `tradesman` (
  `TRADESMAN_ID` int(20) NOT NULL,
  `FIRST_NAME` varchar(15) NOT NULL,
  `LAST_NAME` varchar(20) NOT NULL,
  `SKILL` varchar(20) NOT NULL,
  `CONTACT` varchar(15) NOT NULL,
  `EQUIPMENT_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tradesman`
--

INSERT INTO `tradesman` (`TRADESMAN_ID`, `FIRST_NAME`, `LAST_NAME`, `SKILL`, `CONTACT`, `EQUIPMENT_ID`) VALUES
(1, 'Ronnie', 'Doyle', 'Carpenter', '0878404260', 1),
(2, 'Ray', 'Dunphy', 'Tiler', '0852878541', 3),
(3, 'Henry', 'Drew', 'Plumber', '0894937393', 2),
(4, 'Stella', 'McGregor', 'Electrician', '0861876459', 5),
(5, 'Henry', 'Dunne', 'Plasterer', '0877362952', 2),
(6, 'HORRID', 'HENRY', 'PLUMBING', '0866153512', 13),
(7, 'Stephen', 'Holt', 'Carpenter', '0898362534', 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`EQUIPMENT_ID`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`POSTCODE`),
  ADD KEY `TENANT` (`TENANT_ID`),
  ADD KEY `REPAIRS_ID` (`REPAIR_ID`);

--
-- Indexes for table `repairs`
--
ALTER TABLE `repairs`
  ADD PRIMARY KEY (`REPAIR_ID`),
  ADD KEY `TRADESMAN_ID` (`TRADESMAN_ID`);

--
-- Indexes for table `tenant`
--
ALTER TABLE `tenant`
  ADD PRIMARY KEY (`TENANT_ID`);

--
-- Indexes for table `tradesman`
--
ALTER TABLE `tradesman`
  ADD PRIMARY KEY (`TRADESMAN_ID`),
  ADD KEY `EQUIPMENT` (`EQUIPMENT_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `property_ibfk_1` FOREIGN KEY (`TENANT_ID`) REFERENCES `tenant` (`TENANT_ID`),
  ADD CONSTRAINT `property_ibfk_2` FOREIGN KEY (`REPAIR_ID`) REFERENCES `repairs` (`REPAIR_ID`);

--
-- Constraints for table `repairs`
--
ALTER TABLE `repairs`
  ADD CONSTRAINT `repairs_ibfk_1` FOREIGN KEY (`TRADESMAN_ID`) REFERENCES `tradesman` (`TRADESMAN_ID`);

--
-- Constraints for table `tradesman`
--
ALTER TABLE `tradesman`
  ADD CONSTRAINT `tradesman_ibfk_1` FOREIGN KEY (`EQUIPMENT_ID`) REFERENCES `equipment` (`EQUIPMENT_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
