-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2017 at 05:54 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `placement`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `com_id` int(11) NOT NULL,
  `com_user_id` int(11) NOT NULL,
  `com_name` text NOT NULL,
  `com_percentage` text NOT NULL,
  `com_salary` int(11) NOT NULL,
  `com_drive_date` int(11) NOT NULL,
  `com_reg_date` int(11) NOT NULL,
  `com_stream` text NOT NULL,
  `com_gender` text NOT NULL,
  `com_website` text NOT NULL,
  `com_skill_req` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`com_id`, `com_user_id`, `com_name`, `com_percentage`, `com_salary`, `com_drive_date`, `com_reg_date`, `com_stream`, `com_gender`, `com_website`, `com_skill_req`) VALUES
(10, 1, 'tcs', '70', 1200000, 20102017, 3102017, 'B-tech', 'male', 'www.tcs.com', 'java,c,c++'),
(7, 1, 'google', '80', 1200000, 20102017, 20092017, 'B-tech', 'male', 'www.teksystem.com', 'java,c.'),
(11, 1, 'tek system', '60', 900000, 1, 1, 'B-tech', 'male', 'www.teksystem.com', 'java,c,c++');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `con_u_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`con_u_id`, `name`, `email`, `message`) VALUES
(7, 'avis', 'avis@gmail.com', 'good'),
(5, 'Sudhakar Reddy', 'chintareddy.sudhakarreddy@gmail.com', 'nice display '),
(6, 'Gopi Reddy', 'gopi@gmail.com', 'nice'),
(8, 'saianilkrishna', 'sak143aa@gmail.com', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `placement`
--

CREATE TABLE `placement` (
  `u_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `percentage` text NOT NULL,
  `gender` text NOT NULL,
  `stream` text NOT NULL,
  `degree` text NOT NULL,
  `college` text NOT NULL,
  `state` text NOT NULL,
  `password` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `placement`
--

INSERT INTO `placement` (`u_id`, `name`, `email`, `percentage`, `gender`, `stream`, `degree`, `college`, `state`, `password`) VALUES
(19, 'demo', 'demo@gmai.com', '80', 'male', 'BBA', 'B.Tech', 'lpu', 'India', '12345'),
(18, 'hchfyfugjv', 'ramvijay952@gmail.com', '75', 'male', 'CSE', 'B.Tech', 'lpu', 'India', 'ram'),
(17, 'saianilkrishna', 'sak143aa@gmail.com', '90', 'male', 'CSE', 'B.Tech', 'gdmm', 'India', '9848533489'),
(16, 'Sudhakar Reddy', 'chintareddy.sudhakarreddy@gmail.com', '79.0', 'male', 'CSE', 'B.Tech', 'lpu', 'India', '123456'),
(14, 'tyuhjkl3', 'hgjk@gmail.com', '55', 'male', 'CSE', 'B.Tech', 'ghhj26', '', '123'),
(15, 'shake', 'pk@gmail.com', '98', 'male', 'CSE', 'B.Tech', 'lpu', 'USA', 'asdfghjkl'),
(30, 'Muhammed Nuhman', 'nuhman@gmail.com', '50', 'male', 'CSE', 'B.Tech', 'LPU', 'India', 'nuhman');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `reg_id` int(11) NOT NULL,
  `reg_u_id` int(11) NOT NULL,
  `com_name` text NOT NULL,
  `reg_fname` text NOT NULL,
  `reg_lname` text NOT NULL,
  `reg_email` text NOT NULL,
  `reg_contactnumber` text NOT NULL,
  `reg_resume` text NOT NULL,
  `reg_project` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`reg_id`, `reg_u_id`, `com_name`, `reg_fname`, `reg_lname`, `reg_email`, `reg_contactnumber`, `reg_resume`, `reg_project`) VALUES
(1, 1, 'tcs', 'sudhakar', 'reddy ', 'chintareddy.sudhakarreddy@gmail.com', '9526438178', '1', 1),
(2, 1, 'hp', 'gopi', 'reddy ', 'gopi@gmail.com', '9526438178', '1', 1),
(3, 1, 'google', 'anil', 'reddy ', 'anil@gmail.com', '9592038184', 'sudhakar_cv1.docx', 1),
(4, 1, 'tcs', 'sai anil', 'krishna ', 'sak143aa@gmail.com', '9041399875', '', 2),
(5, 1, 'tcs', 'dfd', 'dvdv ', 'dk@gmail.com', '9555526698', '', 1),
(6, 1, 'google', 'demo', 'demo ', 'demo@gmai.com', '2544611', '', 5),
(7, 1, 'tcs', 'gani', 'reddy ', 'chintareddy.sudhakarreddy@gmail.com', '9592015523', '', 2),
(8, 1, 'tcs', 'sunnuo', 'gfghjh ', 'sudhakar@gmail.com', '9526438178', '', 2),
(9, 1, 'tcs', 'gopi', 'krishna ', 'sudhakar@gmail.com', '9526438178', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`con_u_id`);

--
-- Indexes for table `placement`
--
ALTER TABLE `placement`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`reg_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `con_u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `placement`
--
ALTER TABLE `placement`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
