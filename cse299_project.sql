-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2022 at 05:57 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cse299_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `email` varchar(55) COLLATE latin1_general_cs NOT NULL,
  `password` varchar(55) COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_id`, `email`, `password`) VALUES
(3, 1831334, 'afnan6630@gmail.com', 'admin12345');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `con_name` varchar(55) COLLATE latin1_general_cs NOT NULL,
  `Email` varchar(55) COLLATE latin1_general_cs DEFAULT NULL,
  `message` varchar(255) COLLATE latin1_general_cs DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `con_name`, `Email`, `message`) VALUES
(2, ' wasif', 'sheikh.wasif@gmail.com', ' CREATE TABLE Persons (\r\n    Personid int NOT NULL AUTO_INCREMENT,\r\n    LastName varchar(255) NOT NULL,\r\n    FirstName varchar(255),\r\n    Age int,\r\n    PRIMARY KEY (Personid)\r\n);');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `name` text NOT NULL,
  `billingAddress` varchar(100) NOT NULL,
  `defaultShippingAddress` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`name`, `billingAddress`, `defaultShippingAddress`) VALUES
('Joy Saha', 'Block: A, Road: 2, House: 66,\r\nFlat: C1, Niketon, Gulshan-1,\r\nDhaka', 'Block: A, Road: 2, House: 66,\r\nFlat: C1, Niketon, Gulshan-1,\r\nDhaka');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `id` int(50) NOT NULL,
  `paymentinfo` varchar(20) NOT NULL,
  `deliverystatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`id`, `paymentinfo`, `deliverystatus`) VALUES
(5324, 'successfull', 'onlinePayment');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(50) NOT NULL,
  `customerid` int(50) NOT NULL,
  `orderDate` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `price` int(20) NOT NULL,
  `Totalpayble` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `customerid`, `orderDate`, `status`, `price`, `Totalpayble`) VALUES
(5324, 1831563642, '2022-03-09', 'payment', 1850, 1850);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `Firstname` varchar(55) COLLATE latin1_general_cs NOT NULL,
  `Lastame` varchar(55) COLLATE latin1_general_cs NOT NULL,
  `Email` varchar(55) COLLATE latin1_general_cs NOT NULL,
  `PhoneNumber` varchar(55) COLLATE latin1_general_cs NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Country` varchar(55) COLLATE latin1_general_cs DEFAULT NULL,
  `JoiningDate` date NOT NULL,
  `Password` varchar(55) COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `Firstname`, `Lastame`, `Email`, `PhoneNumber`, `DateOfBirth`, `Country`, `JoiningDate`, `Password`) VALUES
(1, ' Sheikh', 'Wasif', 'afnan6630@gmail.com', '01735848877', '1999-01-29', 'France', '2022-04-24', 'll3ll3ll3ll3ll3');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `id` int(50) NOT NULL,
  `art_id` int(20) NOT NULL,
  `art_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shopping_cart`
--

INSERT INTO `shopping_cart` (`id`, `art_id`, `art_name`) VALUES
(1831563642, 1536, 'Lana Matsuyama');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `userid` varchar(30) COLLATE latin1_general_cs NOT NULL,
  `pass` varchar(30) COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

-- --------------------------------------------------------

--
-- Table structure for table `trackorder`
--

CREATE TABLE `trackorder` (
  `id` int(50) NOT NULL,
  `payment` int(20) NOT NULL,
  `deliverystatus` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trackorder`
--

INSERT INTO `trackorder` (`id`, `payment`, `deliverystatus`) VALUES
(5324, 1850, 'successful');

-- --------------------------------------------------------

--
-- Table structure for table `view_art`
--

CREATE TABLE `view_art` (
  `art_id` int(255) NOT NULL,
  `art_name` varchar(255) NOT NULL,
  `art_price` varchar(255) NOT NULL,
  `art_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `view_art`
--

INSERT INTO `view_art` (`art_id`, `art_name`, `art_price`, `art_image`) VALUES
(13, 'Scenary', '1500', 'Serenity.jpg'),
(18, 'Monalisa', '1230', 'monalisa.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`,`Email`,`PhoneNumber`);

--
-- Indexes for table `view_art`
--
ALTER TABLE `view_art`
  ADD PRIMARY KEY (`art_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5325;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `view_art`
--
ALTER TABLE `view_art`
  MODIFY `art_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
