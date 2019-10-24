-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2019 at 11:40 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atp3`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcomponents`
--

CREATE TABLE `addcomponents` (
  `id` int(10) NOT NULL,
  `categories` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `components` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addcomponents`
--

INSERT INTO `addcomponents` (`id`, `categories`, `company`, `components`, `description`) VALUES
(1, 'Laptop', 'ASUS', 'RAM', 'good'),
(2, 'Laptop', 'LG', 'SSD', 'a'),
(3, 'Laptop', 'Dell', 'SSD', 'good'),
(4, 'Laptop', 'ASUS', 'SSD', 'good'),
(5, 'Laptop', 'ASUS', 'SSD', 'good'),
(6, 'Laptop', 'ASUS', 'HDD', 'a'),
(7, 'Laptop', 'ASUS', 'HDD', 'best'),
(8, 'Laptop', 'ASUS', 'HDD', 'good');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `type`, `name`, `email`, `username`, `password`) VALUES
(1, 'admin', 'sa', 'b', 'c', 'd'),
(3, 'admin', '1', '1', '1', '1'),
(4, 'admin', 'sajib00', 'sajib@gmail.com', 'sajib00', '0000');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `type`, `name`, `email`, `username`, `password`) VALUES
(2, 'customer', 'o', 'o', 'o', 0),
(3, 'customer', 'sajib11', 'sajib@gmail.com', 'sajib11', 1111);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcomponents`
--
ALTER TABLE `addcomponents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcomponents`
--
ALTER TABLE `addcomponents`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
