-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2017 at 08:37 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amrithastores`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `idbill` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `totprice` float NOT NULL,
  `billdate` varchar(45) NOT NULL,
  `no_items` int(11) NOT NULL,
  `billid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`idbill`, `itemid`, `totprice`, `billdate`, `no_items`, `billid`) VALUES
(1, 2, 20, '2017-03-09', 2, 1),
(2, 3, 1800, '2017-03-10', 45, 1),
(3, 2, 10, '2017-04-27', 1, 1),
(4, 1, 400, '2017-04-26', 2, 3),
(5, 1, 140, '2017-04-19', 7, 5),
(6, 3, 120, '2017-04-12', 3, 5),
(7, 3, 160, '2017-04-09', 4, 5),
(8, 3, 1600, '2017-04-19', 40, 6),
(9, 2, 100, '2017-04-27', 10, 8),
(10, 2, 100, '2017-04-20', 10, 9),
(11, 1, 80, '2017-04-10', 4, 9),
(12, 2, 100, '2017-04-20', 10, 10),
(13, 2, 10, '2017-04-04', 1, 11),
(14, 3, 80, '2017-04-24', 2, 12);

-- --------------------------------------------------------

--
-- Table structure for table `billingmaster`
--

CREATE TABLE `billingmaster` (
  `idbillingmaster` int(11) NOT NULL,
  `billingdate` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billingmaster`
--

INSERT INTO `billingmaster` (`idbillingmaster`, `billingdate`) VALUES
(1, '2017-04-10'),
(2, '2017-04-10'),
(3, '2017-04-19'),
(4, '2017-04-21'),
(5, '2017-04-21'),
(6, '2017-04-21'),
(7, '2017-04-21'),
(8, '2017-04-22'),
(9, '2017-04-22'),
(10, '2017-04-22'),
(11, '2017-04-22'),
(12, '2017-04-22');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `itemid` int(11) NOT NULL,
  `itemcode` varchar(46) NOT NULL,
  `itemname` varchar(45) NOT NULL,
  `price` float NOT NULL,
  `stockval` int(11) NOT NULL,
  `minlevel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`itemid`, `itemcode`, `itemname`, `price`, `stockval`, `minlevel`) VALUES
(1, 'AAA', 'pencil', 20, 26, 7),
(2, 'JJJ', 'erarser', 10, 9, 20),
(3, 'tf44', 'book', 40, 9, 10),
(4, 'fg5', 'paper', 2, 33, 30),
(6, 'SSw', 'biscuits', 20, 40, 20);

-- --------------------------------------------------------

--
-- Table structure for table `ordermaster`
--

CREATE TABLE `ordermaster` (
  `idordermaster` int(11) NOT NULL,
  `orderdate` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordermaster`
--

INSERT INTO `ordermaster` (`idordermaster`, `orderdate`) VALUES
(1, ''),
(2, '2017-03-28'),
(3, '2017-03-28'),
(4, '2017-03-28'),
(5, '2017-03-28'),
(6, '2017-04-02'),
(7, '2017-04-07'),
(8, '2017-04-10'),
(9, '2017-04-10'),
(10, '2017-04-10'),
(11, '2017-04-19'),
(12, '2017-04-21'),
(13, '2017-04-22');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `vendorid` int(11) NOT NULL,
  `itemid` int(45) NOT NULL,
  `noofitems` int(11) NOT NULL,
  `orderdate` varchar(45) NOT NULL,
  `oid` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `del_date` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `vendorid`, `itemid`, `noofitems`, `orderdate`, `oid`, `status`, `del_date`) VALUES
(1, 1, 1, 30, '2017-03-15', 4, 1, '2017-04-21'),
(2, 2, 2, 50, '2017-03-08', 5, 1, '2017-04-22'),
(3, 2, 3, 2, '2017-04-19', 7, 0, ''),
(4, 1, 1, 4, '2017-04-26', 8, 0, ''),
(5, 1, 3, 4, '2017-04-19', 10, 0, ''),
(6, 1, 1, 4, '2017-04-20', 13, 0, '2017-04-22');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `idregister` int(11) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`idregister`, `fname`, `username`, `password`, `email`, `phone`, `type`) VALUES
(1, 'rtr', 'trtr', 'fgfg', 'sdsd@fgfgg.com', '11223344', 'StoreKeeper'),
(2, 'sam', 'sam', 'sam', 'tom@gmail.com', '1234567890', 'Store Keeper'),
(3, 'manu', 'manu', 'manu', 'sach@gmail.com', '2342342278', 'Accountant'),
(4, 'jinu', 'jinu', 'jinu', 'jinu@gmail.com', '1234567890', 'Accountant'),
(6, 'sruthy', 'sruthy', 'sruthy', 'sruthy@gmail.com', '4646464646', 'Store Keeper'),
(7, 'yogi', 'yogi', 'yogi', 'yogi@fgfg.com', '1212121212', 'Store Keeper');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendorid` int(11) NOT NULL,
  `vendorname` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendorid`, `vendorname`, `username`, `password`, `email`, `phone`) VALUES
(1, 'd', 'd', 'd', 'training.fleming@gmail.com', '1234567890'),
(2, 'sunny', 'sunny', 'sunny', 'sajnams009@gmail.com', '1234567890');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`idbill`),
  ADD KEY `billid` (`billid`);

--
-- Indexes for table `billingmaster`
--
ALTER TABLE `billingmaster`
  ADD PRIMARY KEY (`idbillingmaster`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`itemid`);

--
-- Indexes for table `ordermaster`
--
ALTER TABLE `ordermaster`
  ADD PRIMARY KEY (`idordermaster`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `vendorid` (`vendorid`),
  ADD KEY `itemid` (`itemid`),
  ADD KEY `oid` (`oid`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`idregister`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendorid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `idbill` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `billingmaster`
--
ALTER TABLE `billingmaster`
  MODIFY `idbillingmaster` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `itemid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ordermaster`
--
ALTER TABLE `ordermaster`
  MODIFY `idordermaster` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `idregister` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `ddd` FOREIGN KEY (`vendorid`) REFERENCES `vendor` (`vendorid`),
  ADD CONSTRAINT `saa` FOREIGN KEY (`itemid`) REFERENCES `item` (`itemid`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
