-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 06, 2025 at 07:37 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `agri_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `ar_admin`
--

CREATE TABLE `ar_admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ar_admin`
--

INSERT INTO `ar_admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `ar_booking`
--

CREATE TABLE `ar_booking` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `provider` varchar(20) NOT NULL,
  `vid` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `time_type` int(11) NOT NULL,
  `req_date` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `pay_st` int(11) NOT NULL,
  `provided_time` datetime default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ar_booking`
--

INSERT INTO `ar_booking` (`id`, `uname`, `provider`, `vid`, `duration`, `time_type`, `req_date`, `status`, `amount`, `pay_st`, `provided_time`) VALUES
(1, 'dinesh', 'ramesh', 2, 1, 1, '2025-03-05', 2, 45, 0, '2025-03-05 17:12:52');

-- --------------------------------------------------------

--
-- Table structure for table `ar_provider`
--

CREATE TABLE `ar_provider` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `district` varchar(30) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `create_date` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ar_provider`
--

INSERT INTO `ar_provider` (`id`, `name`, `address`, `district`, `mobile`, `email`, `uname`, `pass`, `create_date`, `status`) VALUES
(1, 'Ramesh', '57,ad st', 'Trichy', 9054621096, 'ramesh@gmail.com', 'ramesh', '1', '08-02-2023', 1),
(2, 'Ganesh', '55, SD Road', 'Trichy', 8942355221, 'ganesh@gmail.com', 'ganesh', '1', '08-02-2023', 1),
(3, 'Prakash', '25, DS Nagar', 'Namakkal', 8895131356, 'prakash@gmail.com', 'prakash', '1', '08-02-2023', 0),
(4, 'Rajan', '57, 4th Cross, MG Nagar', 'Coimbatore', 9054621096, 'rajan@gmail.com', 'rajan', '123456', '08-02-2023', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ar_user`
--

CREATE TABLE `ar_user` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `district` varchar(30) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ar_user`
--

INSERT INTO `ar_user` (`id`, `name`, `address`, `district`, `mobile`, `email`, `uname`, `pass`) VALUES
(1, 'Dinesh', '33,KS Nagar', 'Thanjavur', 9054621096, 'dinesh@gmail.com', 'dinesh', '1');

-- --------------------------------------------------------

--
-- Table structure for table `ar_vehicle`
--

CREATE TABLE `ar_vehicle` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `vehicle` varchar(30) NOT NULL,
  `vno` varchar(20) NOT NULL,
  `details` varchar(100) NOT NULL,
  `cost1` int(11) NOT NULL,
  `cost2` int(11) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `create_date` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ar_vehicle`
--

INSERT INTO `ar_vehicle` (`id`, `uname`, `vehicle`, `vno`, `details`, `cost1`, `cost2`, `photo`, `create_date`, `status`) VALUES
(1, 'ramesh', 'Tractor', 'TN2121', 'Fuel-Petrol', 40, 300, 'P1ag1.jpg', '08-02-2023', 0);
