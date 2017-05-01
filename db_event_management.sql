-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 27, 2017 at 07:01 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_event_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_events`
--

CREATE TABLE `tbl_events` (
  `id` int(11) NOT NULL,
  `event_name` varchar(150) NOT NULL,
  `user_id` int(11) NOT NULL,
  `event_image` varchar(255) NOT NULL,
  `event_location` varchar(150) NOT NULL,
  `event_date_time` date DEFAULT NULL,
  `event_description` text NOT NULL,
  `event_price` double NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_events`
--

INSERT INTO `tbl_events` (`id`, `event_name`, `user_id`, `event_image`, `event_location`, `event_date_time`, `event_description`, `event_price`, `added_date`, `modified_date`, `status`) VALUES
(1, 'Google X Coder', 1006, 'Google X Coder', 'California, USA', '2017-04-28', 'Google X Coder Competiotion for all the developers in the world. Great Opportunities in your footstep. not exactly in your footstep cuz you have to go USA SO hehe \"D', 12000, '2017-04-26 04:52:38', NULL, 1),
(2, 'Tech happiness For Children (Karnali)', 1001, 'Tech happiness For Children (Karnali)', 'Karnali (Obviously)', '2017-05-24', 'This is for the Welfare of the Children. And I Always wanted this . Well this came true Virtually hehe :D I\'m Awesome !', 0, '2017-04-26 04:55:26', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `email`, `password`) VALUES
(1001, 'kabitalama', 'kabu@gmail.com', 'kabita'),
(1002, 'Sumanheuju', 'heuju@gmail.com', 'suman'),
(1003, 'deepesh', 'deepesh@hero.com', 'deepesh'),
(1004, 'Superman', 'superman@dc.com', 'superman'),
(1005, 'Batman', 'batman@dc.com', 'batman'),
(1006, 'Ironman', 'ironman@marvel.com', 'ironman'),
(1007, 'TonyStark', 'tony@ironman.com', 'tony'),
(1008, 'Spiderman', 'spidey@marvel.com', 'spiderman');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_profile`
--

CREATE TABLE `tbl_users_profile` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(150) DEFAULT NULL,
  `last_name` varchar(150) DEFAULT NULL,
  `contact_no` varchar(150) DEFAULT NULL,
  `profile_description` text,
  `profile_picture` varchar(255) DEFAULT NULL,
  `linkedin` varchar(150) DEFAULT NULL,
  `github` varchar(150) DEFAULT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users_profile`
--

INSERT INTO `tbl_users_profile` (`user_id`, `first_name`, `last_name`, `contact_no`, `profile_description`, `profile_picture`, `linkedin`, `github`, `added_date`, `modified_date`, `status`) VALUES
(1001, 'Kabita', 'Lama', '9840021400', 'She is Great', '1001', 'Hello', 'heolo', '2017-04-25 06:23:55', NULL, 1),
(1002, 'sUman', 'Heuju', '9832423', 'asdasd', '1002', 'asd', 'asdasd', '2017-04-26 05:52:29', NULL, 1),
(1003, 'Deepesh', 'Hero', 'bro', 'aksdjb', '1003', 'k.ajbsd', '.kjabsd', '2017-04-25 19:55:46', NULL, 1),
(1004, 'Clerk ', 'Kent', '98123', 'He is the man Of the Steel', '1004', 'asd', 'asd', '2017-04-25 19:04:57', NULL, 1),
(1005, 'Bruce ', 'Wayne', '9813344166', 'I\'m BATMAN !! :D', '1005', 'asd', 'hgfv', '2017-04-25 19:52:48', NULL, 1),
(1006, 'Iron', 'man', '981231', 'He is the Freaking IronMan man!! ', '1006', 'Iron buddy', 'Iron giddy', '2017-04-25 17:38:30', NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_events`
--
ALTER TABLE `tbl_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_events_ibfk_1` (`user_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users_profile`
--
ALTER TABLE `tbl_users_profile`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_events`
--
ALTER TABLE `tbl_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1009;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_events`
--
ALTER TABLE `tbl_events`
  ADD CONSTRAINT `tbl_events_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_users_profile`
--
ALTER TABLE `tbl_users_profile`
  ADD CONSTRAINT `tbl_users_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
