-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2022 at 06:31 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

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
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `billingAddress` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `order` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `billingAddress`, `Email`, `password`, `order`) VALUES
(1831563642, 'Block: A, Road: 2, House: 66,\r\nFlat: C1, Niketon, Gulshan-1,\r\nDhaka', 'joy91447@gmail.com', 'abc123', 5324);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'sheikh.wasif@gmail.com', '12345'),
(2, 'mrkhanmti@gmail.com', '565656');

-- --------------------------------------------------------

--
-- Table structure for table `artwork_order`
--

CREATE TABLE `artwork_order` (
  `order_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `block` varchar(255) NOT NULL,
  `road` varchar(255) NOT NULL,
  `house` varchar(255) NOT NULL,
  `flat` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `total_artwork` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artwork_order`
--

INSERT INTO `artwork_order` (`order_id`, `name`, `number`, `email`, `payment_method`, `city`, `area`, `block`, `road`, `house`, `flat`, `country`, `password`, `total_artwork`, `total_price`) VALUES
(1, 'Joy Saha', '01875765907', 'joy91447@gmail.com', 'cash on delivery', 'Dhaka', 'Bashundhara', 'B', '8', '59', 'D4', 'Bangladesh', 'saha1234', 'Monalisa (1) ', '1'),
(2, 'Sheikh', '01735848877', 'afnan@gmail.com', 'cash on delivery', 'Dhaka', 'Bashundhara', 'C', '12', '29', 'C4', 'Bangladesh', '123456', 'Monalisa (1) , RIVER (1) , Scenary (1) ', '3');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `art_id` int(255) NOT NULL,
  `art_name` varchar(255) NOT NULL,
  `art_price` varchar(255) NOT NULL,
  `art_image` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`art_id`, `art_name`, `art_price`, `art_image`, `quantity`) VALUES
(7, 'RIVER', '1010', 'river.jpg', 1),
(8, 'Scenary', '1500', 'Serenity.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `con_name` varchar(55) NOT NULL,
  `Email` varchar(55) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `con_name`, `Email`, `message`) VALUES
(5, ' Elon Musk', 'elon.must@twitter.com', ' Hello, I want to sell some art in your page. For sample please contact with me. ');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `Firstname` varchar(55) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `Lastame` varchar(55) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `Email` varchar(55) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `PhoneNumber` varchar(55) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Country` varchar(55) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `JoiningDate` date NOT NULL,
  `Password` varchar(55) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `Firstname`, `Lastame`, `Email`, `PhoneNumber`, `DateOfBirth`, `Country`, `JoiningDate`, `Password`) VALUES
(1, ' Sheikh', 'Wasif', 'afnan6630@gmail.com', '01735848877', '1999-01-29', 'France', '2022-04-24', 'll3ll3ll3ll3ll3');

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
(18, 'Monalisa', '1230', 'monalisa.jpg'),
(20, 'Modern Life', '1950', 'Modern Life.jpg'),
(22, 'RIVER', '1010', 'river.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artwork_order`
--
ALTER TABLE `artwork_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`art_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `view_art`
--
ALTER TABLE `view_art`
  ADD PRIMARY KEY (`art_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1831563643;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `artwork_order`
--
ALTER TABLE `artwork_order`
  MODIFY `order_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `art_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `view_art`
--
ALTER TABLE `view_art`
  MODIFY `art_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
