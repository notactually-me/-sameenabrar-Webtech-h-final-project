-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2022 at 05:25 PM
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
-- Database: `webtechfinal`
--

-- --------------------------------------------------------

--
-- Table structure for table `customerlist`
--

CREATE TABLE `customerlist` (
  `c_id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `expenditure` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customerlist`
--

INSERT INTO `customerlist` (`c_id`, `name`, `type`, `gender`, `phone`, `email`, `dob`, `expenditure`) VALUES
('C-001', 'Sydney', 'Customer', 'Female', '016345103', 'syd@sales.com', '1992-07-24', '10000');

-- --------------------------------------------------------

--
-- Table structure for table `farmerlist`
--

CREATE TABLE `farmerlist` (
  `F_ID` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `experience` varchar(50) NOT NULL,
  `NoOfFields` varchar(50) NOT NULL,
  `salary` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `farmerlist`
--

INSERT INTO `farmerlist` (`F_ID`, `name`, `type`, `gender`, `phone`, `email`, `dob`, `experience`, `NoOfFields`, `salary`) VALUES
('F-001', 'Sanders', 'Farmer', 'Male', '0176827482', 'sandy@farmer.com', '1967-01-10', '12 years', '7', '10000'),
('F-003', 'Crawford', 'Farmer', 'Female', '12345234652', 'emily@farmer.com', '1992-05-10', '13 years', '5', '10000');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `productId` varchar(50) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `unitPrice` varchar(50) NOT NULL,
  `cstatus` varchar(50) NOT NULL,
  `stock` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`productId`, `cname`, `unitPrice`, `cstatus`, `stock`) VALUES
('P-001', 'Wheat', '40', 'Healthy', '10000'),
('P-002', 'Maize', '200', 'Healthy', '4000'),
('P-003', 'Rice', '32', 'Healthy', '50000'),
('P-004', 'Barley', '230', 'Unhealthy', '10000'),
('P-005', 'Oat', '50', 'Healthy', '2500'),
('P-007', 'Oat', '55', 'Unhealthy', '20'),
('P-008', 'Maize', '150', 'Healthy', '30000');

-- --------------------------------------------------------

--
-- Table structure for table `registrationtable`
--

CREATE TABLE `registrationtable` (
  `userID` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `degree` varchar(50) NOT NULL,
  `experience` varchar(50) NOT NULL,
  `skills` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registrationtable`
--

INSERT INTO `registrationtable` (`userID`, `pass`, `name`, `email`, `phone`, `address`, `dob`, `gender`, `degree`, `experience`, `skills`) VALUES
('A-001', '222', 'Sameen Abrar', 'sameenabrar13@gmail.com', '1739274383', 'dhaka', '2022-08-03', 'Male', 'Business Management', '2', ' Inventory'),
('A-002', '123', 'Sameen Abrar', 'sameenabrar13@gmail.com', '01739274384', 'dhaka', '2022-08-09', 'Male', 'Agriculture', '4', ' Data Management Leadership'),
('A-003', '123', 'Sameen Abrar', 'sameenabrar13@gmail.com', '01739274384', 'dhaka', '2022-02-01', 'Male', 'Agriculture', '3', ' Data Inventory Management Leadership Finance'),
('monica', '1234', 'Monica Geller', 'geller@frineds.com', '9172838274', 'New York', '1965-06-03', 'Female', 'Business Management', '21', ' Data Leadership IT');

-- --------------------------------------------------------

--
-- Table structure for table `saleslist`
--

CREATE TABLE `saleslist` (
  `s_id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `distribution` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `education` varchar(50) DEFAULT NULL,
  `degree` varchar(50) DEFAULT NULL,
  `salary` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saleslist`
--

INSERT INTO `saleslist` (`s_id`, `name`, `type`, `distribution`, `gender`, `phone`, `email`, `dob`, `experience`, `education`, `degree`, `salary`) VALUES
('S-001', 'Sydney', 'Salesperson', 'Noakhali', 'Female', '016345103', 'syd@sales.com', '1992-07-24', '13 years', 'Masters', 'Marketing', '30000'),
('S-003', 'Rick', 'Salesperson', 'Kurigram', 'Male', '016345103', 'syd@sales.com', '1982-04-26', '13 years', 'Masters', 'Marketing', '20000'),
('S-004', 'Victor', 'Salesperson', 'Sunamganj', 'Male', '017982734', 'syd@sales.com', '1994-06-13', '4 years', 'Bachelors', 'IPE', '30000'),
('S-007', 'Ross', 'Salesperson', 'New York', 'Male', '908189281', 'ross@sales.com', '1961-06-14', '11 years', 'Masters', 'Business', '30000');

-- --------------------------------------------------------

--
-- Table structure for table `transactionlist`
--

CREATE TABLE `transactionlist` (
  `orderId` varchar(50) NOT NULL,
  `productId` varchar(50) NOT NULL,
  `cropName` varchar(50) NOT NULL,
  `unitPrice` varchar(50) NOT NULL,
  `c_id` varchar(50) NOT NULL,
  `cropStatus` varchar(50) NOT NULL,
  `amountOrdered` varchar(50) NOT NULL,
  `orderStatus` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `UserID` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`UserID`, `Password`, `Name`) VALUES
('A-002', '222', 'Sameen Abrar'),
('A-001', '222', 'Sameen Abrar'),
('A-003', '123', 'Sameen Abrar'),
('monica', '1234', 'Monica Geller');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customerlist`
--
ALTER TABLE `customerlist`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `farmerlist`
--
ALTER TABLE `farmerlist`
  ADD PRIMARY KEY (`F_ID`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `registrationtable`
--
ALTER TABLE `registrationtable`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `saleslist`
--
ALTER TABLE `saleslist`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `transactionlist`
--
ALTER TABLE `transactionlist`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `FK_CID` (`c_id`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD KEY `FK_USERID` (`UserID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactionlist`
--
ALTER TABLE `transactionlist`
  ADD CONSTRAINT `FK_CID` FOREIGN KEY (`c_id`) REFERENCES `customerlist` (`c_id`),
  ADD CONSTRAINT `transactionlist_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `inventory` (`productId`);

--
-- Constraints for table `usertable`
--
ALTER TABLE `usertable`
  ADD CONSTRAINT `FK_USERID` FOREIGN KEY (`UserID`) REFERENCES `registrationtable` (`userID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
